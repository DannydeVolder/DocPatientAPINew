using DataAccessLayer.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic.Helpers
{
    public class AppUserManager : UserManager<User>
    {
        private IConfiguration _configuration { get; }
        private readonly IConfigurationSection _appSettingsSection;
        private readonly AppSettings _appSettings;

        public AppUserManager(IUserStore<User> store, IOptions<IdentityOptions> optionsAccessor,
            IPasswordHasher<User> passwordHasher, IEnumerable<IUserValidator<User>> userValidators,
            IEnumerable<IPasswordValidator<User>> passwordValidators, ILookupNormalizer keyNormalizer,
            IdentityErrorDescriber errors, IServiceProvider services, ILogger<UserManager<User>> logger,
            IConfiguration configuration)
            : base(store, optionsAccessor, passwordHasher, userValidators, passwordValidators,
                keyNormalizer, errors, services, logger)
        {
            _configuration = configuration;
            _appSettingsSection = _configuration.GetSection("AppSettings");
            _appSettings = _appSettingsSection.Get<AppSettings>();
        }

        #region Authenticator App key

        public override string GenerateNewAuthenticatorKey()
        {
            var originalAuthenticatorKey = base.GenerateNewAuthenticatorKey();

            // var aesKey = EncryptProvider.CreateAesKey();

            bool encryptionEnabled = _appSettings.EncryptionEnabled;

            Console.WriteLine(encryptionEnabled);


            var encryptedKey = encryptionEnabled
                ? Convert.ToBase64String(Crypto.AesEncrypt(originalAuthenticatorKey, _appSettings.EncryptionKey))
                : originalAuthenticatorKey;

            Console.WriteLine(encryptedKey);

            return encryptedKey;
        }

        public override async Task<string> GetAuthenticatorKeyAsync(User user)
        {
            var dbKey = await base.GetAuthenticatorKeyAsync(user);

            if (dbKey == null)
            {
                return null;
            }
            // Decryption
            bool encryptionEnabled = _appSettings.EncryptionEnabled;

            var originalAuthenticatorKey = encryptionEnabled
                ? Crypto.AesDecrypt(Convert.FromBase64String(dbKey), _appSettings.EncryptionKey)
                : await base.GetAuthenticatorKeyAsync(user);

            return originalAuthenticatorKey;
        }

        #endregion

    }
}
