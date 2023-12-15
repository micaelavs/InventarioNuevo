namespace UI
{
    partial class Egreso_Masivo
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.textBoxCodigoRemito = new System.Windows.Forms.TextBox();
            this.buttonGenerarPDF = new System.Windows.Forms.Button();
            this.buttonAñadir = new System.Windows.Forms.Button();
            this.textBoxExpediente = new System.Windows.Forms.TextBox();
            this.comboBoxIntermediario = new System.Windows.Forms.ComboBox();
            this.label12 = new System.Windows.Forms.Label();
            this.listBoxExpedientes = new System.Windows.Forms.ListBox();
            this.label11 = new System.Windows.Forms.Label();
            this.buttonSalir = new System.Windows.Forms.Button();
            this.buttonGuardar = new System.Windows.Forms.Button();
            this.label10 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.textBoxObserv = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.textBoxDni = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.comboBoxAutorizante = new System.Windows.Forms.ComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.textBoxNotaGde = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.comboBoxArea = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.comboBoxEstado = new System.Windows.Forms.ComboBox();
            this.buttonLimpiar = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // textBoxCodigoRemito
            // 
            this.textBoxCodigoRemito.BackColor = System.Drawing.SystemColors.GradientInactiveCaption;
            this.textBoxCodigoRemito.Enabled = false;
            this.textBoxCodigoRemito.Location = new System.Drawing.Point(828, 17);
            this.textBoxCodigoRemito.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.textBoxCodigoRemito.Name = "textBoxCodigoRemito";
            this.textBoxCodigoRemito.Size = new System.Drawing.Size(54, 26);
            this.textBoxCodigoRemito.TabIndex = 55;
            // 
            // buttonGenerarPDF
            // 
            this.buttonGenerarPDF.Location = new System.Drawing.Point(556, 806);
            this.buttonGenerarPDF.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.buttonGenerarPDF.Name = "buttonGenerarPDF";
            this.buttonGenerarPDF.Size = new System.Drawing.Size(142, 40);
            this.buttonGenerarPDF.TabIndex = 54;
            this.buttonGenerarPDF.Text = "Generar PDF";
            this.buttonGenerarPDF.UseVisualStyleBackColor = true;
            this.buttonGenerarPDF.Click += new System.EventHandler(this.buttonGenerarPDF_Click);
            // 
            // buttonAñadir
            // 
            this.buttonAñadir.Location = new System.Drawing.Point(270, 582);
            this.buttonAñadir.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.buttonAñadir.Name = "buttonAñadir";
            this.buttonAñadir.Size = new System.Drawing.Size(142, 31);
            this.buttonAñadir.TabIndex = 53;
            this.buttonAñadir.Text = "Añadir";
            this.buttonAñadir.UseVisualStyleBackColor = true;
            this.buttonAñadir.Click += new System.EventHandler(this.buttonAñadir_Click);
            // 
            // textBoxExpediente
            // 
            this.textBoxExpediente.Location = new System.Drawing.Point(15, 582);
            this.textBoxExpediente.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.textBoxExpediente.Name = "textBoxExpediente";
            this.textBoxExpediente.Size = new System.Drawing.Size(248, 26);
            this.textBoxExpediente.TabIndex = 52;
            // 
            // comboBoxIntermediario
            // 
            this.comboBoxIntermediario.FormattingEnabled = true;
            this.comboBoxIntermediario.Location = new System.Drawing.Point(15, 363);
            this.comboBoxIntermediario.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.comboBoxIntermediario.Name = "comboBoxIntermediario";
            this.comboBoxIntermediario.Size = new System.Drawing.Size(574, 28);
            this.comboBoxIntermediario.TabIndex = 51;
            this.comboBoxIntermediario.Text = "Juan Andrés Silva";
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.BackColor = System.Drawing.SystemColors.ButtonFace;
            this.label12.Location = new System.Drawing.Point(10, 17);
            this.label12.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(318, 20);
            this.label12.TabIndex = 50;
            this.label12.Text = "Los datos marcados con (*) son obligatorios";
            // 
            // listBoxExpedientes
            // 
            this.listBoxExpedientes.FormattingEnabled = true;
            this.listBoxExpedientes.ItemHeight = 20;
            this.listBoxExpedientes.Location = new System.Drawing.Point(422, 582);
            this.listBoxExpedientes.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.listBoxExpedientes.Name = "listBoxExpedientes";
            this.listBoxExpedientes.Size = new System.Drawing.Size(340, 144);
            this.listBoxExpedientes.TabIndex = 49;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(15, 557);
            this.label11.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(109, 20);
            this.label11.TabIndex = 48;
            this.label11.Text = "Expediente (*)";
            // 
            // buttonSalir
            // 
            this.buttonSalir.Location = new System.Drawing.Point(708, 806);
            this.buttonSalir.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.buttonSalir.Name = "buttonSalir";
            this.buttonSalir.Size = new System.Drawing.Size(142, 40);
            this.buttonSalir.TabIndex = 47;
            this.buttonSalir.Text = "SALIR";
            this.buttonSalir.UseVisualStyleBackColor = true;
            this.buttonSalir.Click += new System.EventHandler(this.buttonSalir_Click_1);
            // 
            // buttonGuardar
            // 
            this.buttonGuardar.Location = new System.Drawing.Point(406, 806);
            this.buttonGuardar.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.buttonGuardar.Name = "buttonGuardar";
            this.buttonGuardar.Size = new System.Drawing.Size(142, 40);
            this.buttonGuardar.TabIndex = 46;
            this.buttonGuardar.Text = "GUARDAR";
            this.buttonGuardar.UseVisualStyleBackColor = true;
            this.buttonGuardar.Click += new System.EventHandler(this.buttonGuardar_Click);
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(15, 617);
            this.label10.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(234, 20);
            this.label10.TabIndex = 45;
            this.label10.Text = "(EJ.: NOTA-S02:2212321/2019)";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(15, 526);
            this.label9.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(210, 20);
            this.label9.TabIndex = 44;
            this.label9.Text = "AGREGAR DOCUMENTOS";
            // 
            // textBoxObserv
            // 
            this.textBoxObserv.Location = new System.Drawing.Point(15, 463);
            this.textBoxObserv.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.textBoxObserv.Name = "textBoxObserv";
            this.textBoxObserv.Size = new System.Drawing.Size(866, 26);
            this.textBoxObserv.TabIndex = 43;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(15, 438);
            this.label8.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(149, 20);
            this.label8.TabIndex = 42;
            this.label8.Text = "OBSERVACIONES";
            // 
            // textBoxDni
            // 
            this.textBoxDni.Enabled = false;
            this.textBoxDni.Location = new System.Drawing.Point(645, 363);
            this.textBoxDni.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.textBoxDni.Name = "textBoxDni";
            this.textBoxDni.Size = new System.Drawing.Size(198, 26);
            this.textBoxDni.TabIndex = 41;
            this.textBoxDni.Text = "32318670";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(640, 338);
            this.label7.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(57, 20);
            this.label7.TabIndex = 40;
            this.label7.Text = "DNI (*)";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(15, 338);
            this.label6.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(383, 20);
            this.label6.TabIndex = 39;
            this.label6.Text = "APELLIDO Y NOMBRE QUE ENTREGA/RECIBE (*)";
            // 
            // comboBoxAutorizante
            // 
            this.comboBoxAutorizante.FormattingEnabled = true;
            this.comboBoxAutorizante.Location = new System.Drawing.Point(15, 280);
            this.comboBoxAutorizante.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.comboBoxAutorizante.Name = "comboBoxAutorizante";
            this.comboBoxAutorizante.Size = new System.Drawing.Size(574, 28);
            this.comboBoxAutorizante.TabIndex = 38;
            this.comboBoxAutorizante.Text = "Pedro Andrada";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(15, 255);
            this.label5.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(230, 20);
            this.label5.TabIndex = 37;
            this.label5.Text = "DIRECTOR AUTORIZANTE (*)";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(10, 205);
            this.label4.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(327, 20);
            this.label4.TabIndex = 36;
            this.label4.Text = "(EJ.: NO-2019-54334565-APN-DNTTF#MTR)";
            // 
            // textBoxNotaGde
            // 
            this.textBoxNotaGde.Location = new System.Drawing.Point(15, 169);
            this.textBoxNotaGde.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.textBoxNotaGde.Name = "textBoxNotaGde";
            this.textBoxNotaGde.Size = new System.Drawing.Size(574, 26);
            this.textBoxNotaGde.TabIndex = 35;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(10, 145);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(151, 20);
            this.label3.TabIndex = 34;
            this.label3.Text = "NOTA GDE NRO (*)";
            // 
            // comboBoxArea
            // 
            this.comboBoxArea.FormattingEnabled = true;
            this.comboBoxArea.Location = new System.Drawing.Point(380, 88);
            this.comboBoxArea.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.comboBoxArea.Name = "comboBoxArea";
            this.comboBoxArea.Size = new System.Drawing.Size(210, 28);
            this.comboBoxArea.TabIndex = 33;
            this.comboBoxArea.Text = "CNRT";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(375, 63);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(74, 20);
            this.label2.TabIndex = 32;
            this.label2.Text = "ÁREA (*)";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.SystemColors.ButtonFace;
            this.label1.Location = new System.Drawing.Point(10, 63);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(197, 20);
            this.label1.TabIndex = 30;
            this.label1.Text = "ESTADO DEL REMITO (*)";
            // 
            // comboBoxEstado
            // 
            this.comboBoxEstado.FormattingEnabled = true;
            this.comboBoxEstado.Location = new System.Drawing.Point(15, 88);
            this.comboBoxEstado.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.comboBoxEstado.Name = "comboBoxEstado";
            this.comboBoxEstado.Size = new System.Drawing.Size(328, 28);
            this.comboBoxEstado.TabIndex = 56;
            this.comboBoxEstado.Text = "INGRESO A REVISAR";
            // 
            // buttonLimpiar
            // 
            this.buttonLimpiar.Location = new System.Drawing.Point(270, 622);
            this.buttonLimpiar.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.buttonLimpiar.Name = "buttonLimpiar";
            this.buttonLimpiar.Size = new System.Drawing.Size(142, 31);
            this.buttonLimpiar.TabIndex = 57;
            this.buttonLimpiar.Text = "Limpiar";
            this.buttonLimpiar.UseVisualStyleBackColor = true;
            this.buttonLimpiar.Click += new System.EventHandler(this.buttonLimpiar_Click);
            // 
            // Egreso_Masivo
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.GradientInactiveCaption;
            this.ClientSize = new System.Drawing.Size(933, 902);
            this.Controls.Add(this.buttonLimpiar);
            this.Controls.Add(this.comboBoxEstado);
            this.Controls.Add(this.textBoxCodigoRemito);
            this.Controls.Add(this.buttonGenerarPDF);
            this.Controls.Add(this.buttonAñadir);
            this.Controls.Add(this.textBoxExpediente);
            this.Controls.Add(this.comboBoxIntermediario);
            this.Controls.Add(this.label12);
            this.Controls.Add(this.listBoxExpedientes);
            this.Controls.Add(this.label11);
            this.Controls.Add(this.buttonSalir);
            this.Controls.Add(this.buttonGuardar);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.textBoxObserv);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.textBoxDni);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.comboBoxAutorizante);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.textBoxNotaGde);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.comboBoxArea);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "Egreso_Masivo";
            this.Text = "Egreso Masivo";
            this.Load += new System.EventHandler(this.Egreso_Masivo_Load);
            this.HelpRequested += new System.Windows.Forms.HelpEventHandler(this.Egreso_Masivo_HelpRequested);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox textBoxCodigoRemito;
        private System.Windows.Forms.Button buttonGenerarPDF;
        private System.Windows.Forms.Button buttonAñadir;
        private System.Windows.Forms.TextBox textBoxExpediente;
        private System.Windows.Forms.ComboBox comboBoxIntermediario;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.ListBox listBoxExpedientes;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Button buttonSalir;
        private System.Windows.Forms.Button buttonGuardar;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox textBoxObserv;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox textBoxDni;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.ComboBox comboBoxAutorizante;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox textBoxNotaGde;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox comboBoxArea;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox comboBoxEstado;
        private System.Windows.Forms.Button buttonLimpiar;
    }
}