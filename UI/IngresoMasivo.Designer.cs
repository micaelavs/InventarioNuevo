namespace UI
{
    partial class Ingreso_Masivo
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
            this.label1 = new System.Windows.Forms.Label();
            this.comboBoxEstado = new System.Windows.Forms.ComboBox();
            this.comboBoxArea = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.textBoxNotaGde = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.comboBoxAutorizante = new System.Windows.Forms.ComboBox();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.textBoxDni = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.textBoxObserv = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.buttonGuardar = new System.Windows.Forms.Button();
            this.buttonSalir = new System.Windows.Forms.Button();
            this.label11 = new System.Windows.Forms.Label();
            this.listBoxRtoComdoc = new System.Windows.Forms.ListBox();
            this.label12 = new System.Windows.Forms.Label();
            this.comboBoxIntermediario = new System.Windows.Forms.ComboBox();
            this.textBoxRTOComdoc = new System.Windows.Forms.TextBox();
            this.buttonAñadir = new System.Windows.Forms.Button();
            this.buttonGenerarPDF = new System.Windows.Forms.Button();
            this.textBoxCodigoRemito = new System.Windows.Forms.TextBox();
            this.button1 = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.SystemColors.GradientInactiveCaption;
            this.label1.Location = new System.Drawing.Point(14, 60);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(197, 20);
            this.label1.TabIndex = 0;
            this.label1.Tag = "lblEstadoRemito";
            this.label1.Text = "ESTADO DEL REMITO (*)";
            // 
            // comboBoxEstado
            // 
            this.comboBoxEstado.FormattingEnabled = true;
            this.comboBoxEstado.Location = new System.Drawing.Point(18, 85);
            this.comboBoxEstado.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.comboBoxEstado.Name = "comboBoxEstado";
            this.comboBoxEstado.Size = new System.Drawing.Size(328, 28);
            this.comboBoxEstado.TabIndex = 1;
            // 
            // comboBoxArea
            // 
            this.comboBoxArea.FormattingEnabled = true;
            this.comboBoxArea.Location = new System.Drawing.Point(382, 85);
            this.comboBoxArea.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.comboBoxArea.Name = "comboBoxArea";
            this.comboBoxArea.Size = new System.Drawing.Size(210, 28);
            this.comboBoxArea.TabIndex = 3;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(378, 60);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(74, 20);
            this.label2.TabIndex = 2;
            this.label2.Tag = "lblArea";
            this.label2.Text = "ÁREA (*)";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(14, 142);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(151, 20);
            this.label3.TabIndex = 4;
            this.label3.Text = "NOTA GDE NRO (*)";
            // 
            // textBoxNotaGde
            // 
            this.textBoxNotaGde.Location = new System.Drawing.Point(18, 166);
            this.textBoxNotaGde.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.textBoxNotaGde.Name = "textBoxNotaGde";
            this.textBoxNotaGde.Size = new System.Drawing.Size(574, 26);
            this.textBoxNotaGde.TabIndex = 5;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(14, 202);
            this.label4.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(327, 20);
            this.label4.TabIndex = 6;
            this.label4.Text = "(EJ.: NO-2019-54334565-APN-DNTTF#MTR)";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(18, 252);
            this.label5.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(230, 20);
            this.label5.TabIndex = 7;
            this.label5.Tag = "lblDirectAut";
            this.label5.Text = "DIRECTOR AUTORIZANTE (*)";
            // 
            // comboBoxAutorizante
            // 
            this.comboBoxAutorizante.FormattingEnabled = true;
            this.comboBoxAutorizante.Location = new System.Drawing.Point(18, 277);
            this.comboBoxAutorizante.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.comboBoxAutorizante.Name = "comboBoxAutorizante";
            this.comboBoxAutorizante.Size = new System.Drawing.Size(574, 28);
            this.comboBoxAutorizante.TabIndex = 8;
            this.comboBoxAutorizante.Text = "Pedro Andrada";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(18, 335);
            this.label6.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(383, 20);
            this.label6.TabIndex = 9;
            this.label6.Tag = "lblApeNom";
            this.label6.Text = "APELLIDO Y NOMBRE QUE ENTREGA/RECIBE (*)";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(644, 335);
            this.label7.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(57, 20);
            this.label7.TabIndex = 11;
            this.label7.Text = "DNI (*)";
            // 
            // textBoxDni
            // 
            this.textBoxDni.Location = new System.Drawing.Point(648, 360);
            this.textBoxDni.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.textBoxDni.Name = "textBoxDni";
            this.textBoxDni.Size = new System.Drawing.Size(236, 26);
            this.textBoxDni.TabIndex = 12;
            this.textBoxDni.Text = "32318670";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(18, 435);
            this.label8.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(149, 20);
            this.label8.TabIndex = 13;
            this.label8.Tag = "lblObs";
            this.label8.Text = "OBSERVACIONES";
            // 
            // textBoxObserv
            // 
            this.textBoxObserv.Location = new System.Drawing.Point(18, 460);
            this.textBoxObserv.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.textBoxObserv.Name = "textBoxObserv";
            this.textBoxObserv.Size = new System.Drawing.Size(866, 26);
            this.textBoxObserv.TabIndex = 14;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(18, 523);
            this.label9.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(346, 20);
            this.label9.TabIndex = 15;
            this.label9.Tag = "lblAgregarNumComdoc";
            this.label9.Text = "AGREGAR NÚMEROS DE REMITO COMDOC";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(18, 614);
            this.label10.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(224, 20);
            this.label10.TabIndex = 17;
            this.label10.Text = "(EJ.: RTO-S02:1234567/2019)";
            // 
            // buttonGuardar
            // 
            this.buttonGuardar.Location = new System.Drawing.Point(502, 825);
            this.buttonGuardar.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.buttonGuardar.Name = "buttonGuardar";
            this.buttonGuardar.Size = new System.Drawing.Size(142, 40);
            this.buttonGuardar.TabIndex = 20;
            this.buttonGuardar.Tag = "btGuardar";
            this.buttonGuardar.Text = "GUARDAR";
            this.buttonGuardar.UseVisualStyleBackColor = true;
            this.buttonGuardar.Click += new System.EventHandler(this.ButtonGuardar_Click);
            // 
            // buttonSalir
            // 
            this.buttonSalir.Location = new System.Drawing.Point(806, 825);
            this.buttonSalir.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.buttonSalir.Name = "buttonSalir";
            this.buttonSalir.Size = new System.Drawing.Size(142, 40);
            this.buttonSalir.TabIndex = 21;
            this.buttonSalir.Tag = "btSalir";
            this.buttonSalir.Text = "SALIR";
            this.buttonSalir.UseVisualStyleBackColor = true;
            this.buttonSalir.Click += new System.EventHandler(this.ButtonSalir_Click);
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(18, 554);
            this.label11.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(176, 20);
            this.label11.TabIndex = 22;
            this.label11.Text = "NRO RTO COMDOC (*)";
            // 
            // listBoxRtoComdoc
            // 
            this.listBoxRtoComdoc.FormattingEnabled = true;
            this.listBoxRtoComdoc.ItemHeight = 20;
            this.listBoxRtoComdoc.Location = new System.Drawing.Point(424, 578);
            this.listBoxRtoComdoc.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.listBoxRtoComdoc.Name = "listBoxRtoComdoc";
            this.listBoxRtoComdoc.Size = new System.Drawing.Size(460, 124);
            this.listBoxRtoComdoc.TabIndex = 23;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.BackColor = System.Drawing.SystemColors.ButtonFace;
            this.label12.Location = new System.Drawing.Point(14, 14);
            this.label12.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(318, 20);
            this.label12.TabIndex = 24;
            this.label12.Tag = "LabelOblig";
            this.label12.Text = "Los datos marcados con (*) son obligatorios";
            // 
            // comboBoxIntermediario
            // 
            this.comboBoxIntermediario.FormattingEnabled = true;
            this.comboBoxIntermediario.Location = new System.Drawing.Point(18, 360);
            this.comboBoxIntermediario.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.comboBoxIntermediario.Name = "comboBoxIntermediario";
            this.comboBoxIntermediario.Size = new System.Drawing.Size(574, 28);
            this.comboBoxIntermediario.TabIndex = 25;
            this.comboBoxIntermediario.Text = "Juan Andrés Silva";
            this.comboBoxIntermediario.SelectedValueChanged += new System.EventHandler(this.comboBoxIntermediario_SelectedValueChanged);
            // 
            // textBoxRTOComdoc
            // 
            this.textBoxRTOComdoc.Location = new System.Drawing.Point(18, 578);
            this.textBoxRTOComdoc.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.textBoxRTOComdoc.Name = "textBoxRTOComdoc";
            this.textBoxRTOComdoc.Size = new System.Drawing.Size(248, 26);
            this.textBoxRTOComdoc.TabIndex = 26;
            // 
            // buttonAñadir
            // 
            this.buttonAñadir.Location = new System.Drawing.Point(273, 578);
            this.buttonAñadir.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.buttonAñadir.Name = "buttonAñadir";
            this.buttonAñadir.Size = new System.Drawing.Size(142, 31);
            this.buttonAñadir.TabIndex = 27;
            this.buttonAñadir.Tag = "lblAgregarComd";
            this.buttonAñadir.Text = "Añadir";
            this.buttonAñadir.UseVisualStyleBackColor = true;
            this.buttonAñadir.Click += new System.EventHandler(this.ButtonAdd_Click);
            // 
            // buttonGenerarPDF
            // 
            this.buttonGenerarPDF.Location = new System.Drawing.Point(654, 825);
            this.buttonGenerarPDF.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.buttonGenerarPDF.Name = "buttonGenerarPDF";
            this.buttonGenerarPDF.Size = new System.Drawing.Size(142, 40);
            this.buttonGenerarPDF.TabIndex = 28;
            this.buttonGenerarPDF.Tag = "btGenerarPDF";
            this.buttonGenerarPDF.Text = "Generar PDF";
            this.buttonGenerarPDF.UseVisualStyleBackColor = true;
            this.buttonGenerarPDF.Click += new System.EventHandler(this.ButtonGenerarPDF_Click);
            // 
            // textBoxCodigoRemito
            // 
            this.textBoxCodigoRemito.BackColor = System.Drawing.SystemColors.GradientInactiveCaption;
            this.textBoxCodigoRemito.Enabled = false;
            this.textBoxCodigoRemito.Location = new System.Drawing.Point(892, 9);
            this.textBoxCodigoRemito.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.textBoxCodigoRemito.Name = "textBoxCodigoRemito";
            this.textBoxCodigoRemito.Size = new System.Drawing.Size(54, 26);
            this.textBoxCodigoRemito.TabIndex = 29;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(273, 618);
            this.button1.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(142, 37);
            this.button1.TabIndex = 30;
            this.button1.Tag = "lblLimpComdoc";
            this.button1.Text = "Limpiar";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click_1);
            // 
            // Ingreso_Masivo
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.GradientInactiveCaption;
            this.ClientSize = new System.Drawing.Size(966, 883);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.textBoxCodigoRemito);
            this.Controls.Add(this.buttonGenerarPDF);
            this.Controls.Add(this.buttonAñadir);
            this.Controls.Add(this.textBoxRTOComdoc);
            this.Controls.Add(this.comboBoxIntermediario);
            this.Controls.Add(this.label12);
            this.Controls.Add(this.listBoxRtoComdoc);
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
            this.Controls.Add(this.comboBoxEstado);
            this.Controls.Add(this.label1);
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "Ingreso_Masivo";
            this.Tag = "FormIngMasivo";
            this.Text = "Ingreso Masivo";
            this.Load += new System.EventHandler(this.Ingreso_Masivo_Load);
            this.HelpRequested += new System.Windows.Forms.HelpEventHandler(this.Ingreso_Masivo_HelpRequested);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox comboBoxEstado;
        private System.Windows.Forms.ComboBox comboBoxArea;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox textBoxNotaGde;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.ComboBox comboBoxAutorizante;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox textBoxDni;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox textBoxObserv;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Button buttonGuardar;
        private System.Windows.Forms.Button buttonSalir;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.ListBox listBoxRtoComdoc;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.ComboBox comboBoxIntermediario;
        private System.Windows.Forms.TextBox textBoxRTOComdoc;
        private System.Windows.Forms.Button buttonAñadir;
        private System.Windows.Forms.Button buttonGenerarPDF;
        private System.Windows.Forms.TextBox textBoxCodigoRemito;
        private System.Windows.Forms.Button button1;
    }
}