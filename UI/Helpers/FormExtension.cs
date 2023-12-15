using BE;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Windows.Forms;

namespace UI.Helpers
{
    public static class FormExtension
    {
        public static void Translate(this Form form, IDictionary<string, BETraduccion> traducciones)
        {
            if (!traducciones.Any()) return;

            if (form.Tag != null && traducciones.ContainsKey(form.Tag.ToString())) { form.Text = traducciones[form.Tag.ToString()].Texto; }
        }

        public static bool ValidPatternMessage(this string palabra, string field, string pattern, string message, bool isEmptyValidation = false)
        {
            if (isEmptyValidation)
            {
                if (string.IsNullOrEmpty(pattern))
                {
                    MessageBox.Show($"El valor de {field} no puede estar vacio");
                    return false;
                }
            }

            bool respuesta = Regex.IsMatch(palabra.Trim(), pattern);

            if (respuesta == false)
            {
                MessageBox.Show(message, "ERROR " + field);
            }

            return respuesta;
        }

        public static void ShowError(this Exception ex)
        {
            MessageBox.Show(ex.Message + "\n\nStack Trace:\n" + ex.StackTrace);
        }

        public static void ShowInfo(string message, string title = "ALERTA")
        {
            MessageBox.Show(message, title, MessageBoxButtons.OK, MessageBoxIcon.Information);
        }
    }
}