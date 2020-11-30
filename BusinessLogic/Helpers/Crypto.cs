using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;

namespace BusinessLogic.Helpers
{
    public class Crypto
    {


        public Crypto()
        {

        }

        public static byte[] AesEncrypt(string message, string key)
        {
            byte[] keyBytes = Encoding.ASCII.GetBytes(key);
            Aes aesObj = Aes.Create();

            aesObj.KeySize = 128;
            aesObj.BlockSize = 128;
            aesObj.Mode = CipherMode.CBC;
            aesObj.Key = keyBytes;
            aesObj.Padding = PaddingMode.PKCS7;

            byte[] cipher;

            ICryptoTransform encryptor = aesObj.CreateEncryptor(keyBytes, aesObj.IV);

            using (MemoryStream msEncrypt = new MemoryStream())
            {
                using (CryptoStream csEncrypt = new CryptoStream(msEncrypt, encryptor, CryptoStreamMode.Write))
                {
                    using (StreamWriter swEncrypt = new StreamWriter(csEncrypt))
                    {

                        //Write all data to the stream.
                        swEncrypt.Write(message);
                    }
                    cipher = msEncrypt.ToArray();
                }
            }

            byte[] finalCipher = aesObj.IV.Concat(cipher).ToArray();
            Console.WriteLine(finalCipher.Length);
            return finalCipher;
        }

        public static string AesDecrypt(byte[] cipherText, string key)
        {

            string plaintext = null;

            byte[] keyBytes = Encoding.ASCII.GetBytes(key);
            Aes aesObj = Aes.Create();

            aesObj.KeySize = 128;
            aesObj.BlockSize = 128;
            aesObj.Mode = CipherMode.CBC;
            aesObj.Padding = PaddingMode.PKCS7;


            byte[] cipher = cipherText.Skip(16).ToArray();

            byte[] IV = cipherText.Take(16).ToArray();
            aesObj.IV = IV;

            ICryptoTransform decryptor = aesObj.CreateDecryptor(keyBytes, aesObj.IV);

            // Create the streams used for decryption.
            using (MemoryStream msDecrypt = new MemoryStream(cipher))
            {
                using (CryptoStream csDecrypt = new CryptoStream(msDecrypt, decryptor, CryptoStreamMode.Read))
                {
                    using (StreamReader srDecrypt = new StreamReader(csDecrypt))
                    {
                        // Read the decrypted bytes from the decrypting stream
                        // and place them in a string.
                        plaintext = srDecrypt.ReadToEnd();
                    }
                }
            }

            return plaintext;
        }

    }
}
