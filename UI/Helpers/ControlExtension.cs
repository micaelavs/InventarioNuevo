using BE;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.Control;

namespace UI.Helpers
{
        public static class ControlExtension
        {
            private static IDictionary<string, BETraduccion> dic;

            // todos heredan de control 
            public static void Translate(this Control control, IDictionary<string, BETraduccion> traducciones)
            {
                // si no hay traducciones salgo
                if (!traducciones.Any()) return;

               
                dic = traducciones;

                /// --------- TOOLSTRIPS ---------
               
                if (control.GetType() == typeof(MenuStrip))
                {
                    // casteo como MenuStrip y de los items hago una lista tipando con el OfType y despues con ToList y recorro todo
                    ((MenuStrip)control).Items.OfType<ToolStripDropDownItem>().ToList().ForEach(item => { item.TranslateToolStrips(); });

                    return;
                }

                /// --------- GROUPBOX ---------
                if (control.GetType() == typeof(GroupBox))
                {
                    ((GroupBox)control).TranslateGroupBox();
                    return;
                }

                /// --------- BOTONES | LABELS ---------
               
                if (control.Tag != null && dic.ContainsKey(control.Tag.ToString())) { control.Text = dic[control.Tag.ToString()].Texto; }
            }

            private static void TranslateGroupBox(this GroupBox groupbox)
            {
               
                if (groupbox.Tag != null && dic.ContainsKey(groupbox.Tag.ToString())) { groupbox.Text = dic[groupbox.Tag.ToString()].Texto; };

                // * Llamada recursiva 
                // 
                if (groupbox.Controls.Count > 0) { groupbox.Controls.TranslateAll(dic); }
            }

            // traduzco cada item del toolstrip - llamada recursiva
            private static void TranslateToolStrips(this ToolStripDropDownItem item)
            {
                if (item.Tag != null && dic.ContainsKey(item.Tag.ToString())) { item.Text = dic[item.Tag.ToString()].Texto; };

                if (item.DropDownItems.Count > 0)
                {
                    //busca dentro del toolstrip si teien algin otro menu dentro y vuelvo a llamar al mismo
                    item.DropDownItems.OfType<ToolStripDropDownItem>().ToList().ForEach(subItem => { subItem.TranslateToolStrips(); });
                }
            }

            public static void TranslateAll(this ControlCollection controls, IDictionary<string, BETraduccion> traducciones)
            {
                
                if (!traducciones.Any()) return;

                // lo guardo en una variable local para poder reutilizarlo en todos los metodos sin perder la referencia al diccionario
                dic = traducciones;

              
                foreach (Control control in controls) { control.Translate(dic); }
            }
        
    }
}
