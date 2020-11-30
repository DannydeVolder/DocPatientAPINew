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
    public class AppUserManager
    {
        //private readonly IConfiguration _configuration;

        //public AppUserManager(IUserStore<IdentityUser> store, IOptions<IdentityOptions> optionsAccessor,
        //    IPasswordHasher<IdentityUser> passwordHasher, IEnumerable<IUserValidator<IdentityUser>> userValidators,
        //    IEnumerable<IPasswordValidator<IdentityUser>> passwordValidators, ILookupNormalizer keyNormalizer,
        //    IdentityErrorDescriber errors, IServiceProvider services, ILogger<UserManager<IdentityUser>> logger,
        //    IConfiguration configuration)
        //    : base(store, optionsAccessor, passwordHasher, userValidators, passwordValidators,
        //        keyNormalizer, errors, services, logger)
        //{
        //    _configuration = configuration;
        //}

        //#region Authenticator App key

        //public override string GenerateNewAuthenticatorKey()
        //{
        //    var originalAuthenticatorKey = base.GenerateNewAuthenticatorKey();

        //    // var aesKey = EncryptProvider.CreateAesKey();

        //    bool.TryParse(_configuration["TwoFactorAuthentication:EncryptionEnabled"], out bool encryptionEnabled);

        //    var encryptedKey = encryptionEnabled
        //        ? Crypto.AesEncrypt(originalAuthenticatorKey, _configuration["TwoFactorAuthentication:EncryptionKey"])
        //        : originalAuthenticatorKey;

        //    return encryptedKey;
        //}

        //public override async Task<string> GetAuthenticatorKeyAsync(IdentityUser user)
        //{
        //    var databaseKey = await base.GetAuthenticatorKeyAsync(user);

        //    if (databaseKey == null)
        //    {
        //        return null;
        //    }

        //    // Decryption
        //    bool.TryParse(_configuration["TwoFactorAuthentication:EncryptionEnabled"], out bool encryptionEnabled);

        //    var originalAuthenticatorKey = encryptionEnabled
        //        ? Crypto.AesDecrypt(databaseKey, _configuration["TwoFactorAuthentication:EncryptionKey"])
        //        : databaseKey;

        //    return originalAuthenticatorKey;
        //}

        //#endregion

        //#region Recovery codes

        //protected override string CreateTwoFactorRecoveryCode()
        //{
        //    var originalRecoveryCode = base.CreateTwoFactorRecoveryCode();

        //    bool.TryParse(_configuration["TwoFactorAuthentication:EncryptionEnabled"], out bool encryptionEnabled);

        //    var encryptedRecoveryCode = encryptionEnabled
        //        ? Crypto.AesEncrypt(originalRecoveryCode, _configuration["TwoFactorAuthentication:EncryptionKey"])
        //        : originalRecoveryCode;

        //    return encryptedRecoveryCode;
        //}

        //public override async Task<IEnumerable<string>> GenerateNewTwoFactorRecoveryCodesAsync(IdentityUser user, int number)
        //{
        //    var tokens = await base.GenerateNewTwoFactorRecoveryCodesAsync(user, number);

        //    var generatedTokens = tokens as string[] ?? tokens.ToArray();
        //    if (!generatedTokens.Any())
        //    {
        //        return generatedTokens;
        //    }

        //    bool.TryParse(_configuration["TwoFactorAuthentication:EncryptionEnabled"], out bool encryptionEnabled);

        //    return encryptionEnabled
        //        ? generatedTokens
        //            .Select(token =>
        //                Crypto.AesDecrypt(token, _configuration["TwoFactorAuthentication:EncryptionKey"]))
        //        : generatedTokens;

        //}

        //public override Task<IdentityResult> RedeemTwoFactorRecoveryCodeAsync(IdentityUser user, string code)
        //{
        //    bool.TryParse(_configuration["TwoFactorAuthentication:EncryptionEnabled"], out bool encryptionEnabled);

        //    if (encryptionEnabled && !string.IsNullOrEmpty(code))
        //    {
        //        code = Crypto.AesEncrypt(code, _configuration["TwoFactorAuthentication:EncryptionKey"]);
        //    }

        //    return base.RedeemTwoFactorRecoveryCodeAsync(user, code);
        //}

        //#endregion

    }
}
