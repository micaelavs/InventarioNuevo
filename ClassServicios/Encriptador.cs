using System;
using System.Security.Cryptography;
using System.Text;

namespace Servicios
{
    public static class Encriptador
    {
        public static string Hash(string value)
        {
            var md5 = new MD5CryptoServiceProvider();
            var md5data = md5.ComputeHash(Encoding.ASCII.GetBytes(value)); //getbytes codifica los caracteres en una secuencia de bytes
            return (new ASCIIEncoding()).GetString(md5data); //ASCII obtiene la codificacion para caracteres ascii
        } 

        public static string AplicarHash(string value)
        {
            if (string.IsNullOrEmpty(value))
                return "";

            var Provider = new SHA1CryptoServiceProvider();
            var Encoding = new UnicodeEncoding();
            return Convert.ToBase64String(Provider.ComputeHash(Encoding.GetBytes(value)));
        }
        public static string Encriptar(string texto)
        {
            
            string key = "llaveencriptadora"; //llave para encriptar datos
            byte[] keyArray;
            byte[] Arreglo_a_Cifrar = UTF8Encoding.UTF8.GetBytes(texto);
            //Se utilizan las clases de encriptación MD5
            MD5CryptoServiceProvider hashmd5 = new MD5CryptoServiceProvider();
            keyArray = hashmd5.ComputeHash(UTF8Encoding.UTF8.GetBytes(key));
            hashmd5.Clear();
            //Algoritmo TripleDES
            TripleDESCryptoServiceProvider tdes = new TripleDESCryptoServiceProvider();
            tdes.Key = keyArray;
            tdes.Mode = CipherMode.ECB;
            tdes.Padding = PaddingMode.PKCS7;
            ICryptoTransform cTransform = tdes.CreateEncryptor();
            byte[] ArrayResultado = cTransform.TransformFinalBlock(Arreglo_a_Cifrar, 0, Arreglo_a_Cifrar.Length);
            tdes.Clear();
            //se regresa el resultado en forma de una cadena
            texto = Convert.ToBase64String(ArrayResultado, 0, ArrayResultado.Length);
            return texto;
        }

        public static string Desencriptar(string textoEncriptado)
        {
            string key = "llaveencriptadora";
            byte[] keyArray;
            byte[] Array_a_Descifrar = Convert.FromBase64String(textoEncriptado);
            //algoritmo MD5
            MD5CryptoServiceProvider hashmd5 = new MD5CryptoServiceProvider();
            keyArray = hashmd5.ComputeHash(UTF8Encoding.UTF8.GetBytes(key));
            hashmd5.Clear();
            TripleDESCryptoServiceProvider tdes = new TripleDESCryptoServiceProvider();
            tdes.Key = keyArray;
            tdes.Mode = CipherMode.ECB;
            tdes.Padding = PaddingMode.PKCS7;
            ICryptoTransform cTransform = tdes.CreateDecryptor();
            byte[] resultArray = cTransform.TransformFinalBlock(Array_a_Descifrar, 0, Array_a_Descifrar.Length);
            tdes.Clear();
            textoEncriptado = UTF8Encoding.UTF8.GetString(resultArray);
            return textoEncriptado;
        }


    }
}






