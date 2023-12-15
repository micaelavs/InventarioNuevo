namespace UI
{
    partial class Editar_Documento
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
            this.buttonSalir = new System.Windows.Forms.Button();
            this.buttonModificar = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.comboBoxEstadoExpediente = new System.Windows.Forms.ComboBox();
            this.label12 = new System.Windows.Forms.Label();
            this.buttonGenerarRemitoDev = new System.Windows.Forms.Button();
            this.label14 = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.dataGridViewCuerpos = new System.Windows.Forms.DataGridView();
            this.dataGridViewExpe = new System.Windows.Forms.DataGridView();
            this.label4 = new System.Windows.Forms.Label();
            this.label15 = new System.Windows.Forms.Label();
            this.textBoxObservacionesDevolucion = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.textBoxNotaGde = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewCuerpos)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewExpe)).BeginInit();
            this.SuspendLayout();
            // 
            // buttonSalir
            // 
            this.buttonSalir.Location = new System.Drawing.Point(1222, 996);
            this.buttonSalir.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.buttonSalir.Name = "buttonSalir";
            this.buttonSalir.Size = new System.Drawing.Size(142, 40);
            this.buttonSalir.TabIndex = 141;
            this.buttonSalir.Text = "SALIR";
            this.buttonSalir.UseVisualStyleBackColor = true;
            this.buttonSalir.Click += new System.EventHandler(this.buttonSalir_Click);
            // 
            // buttonModificar
            // 
            this.buttonModificar.Location = new System.Drawing.Point(12, 849);
            this.buttonModificar.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.buttonModificar.Name = "buttonModificar";
            this.buttonModificar.Size = new System.Drawing.Size(213, 33);
            this.buttonModificar.TabIndex = 140;
            this.buttonModificar.Text = "Modificar Documento";
            this.buttonModificar.UseVisualStyleBackColor = true;
            this.buttonModificar.Click += new System.EventHandler(this.buttonModificar_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 766);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(80, 20);
            this.label2.TabIndex = 152;
            this.label2.Text = "Estado (*)";
            // 
            // comboBoxEstadoExpediente
            // 
            this.comboBoxEstadoExpediente.FormattingEnabled = true;
            this.comboBoxEstadoExpediente.Location = new System.Drawing.Point(12, 800);
            this.comboBoxEstadoExpediente.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.comboBoxEstadoExpediente.Name = "comboBoxEstadoExpediente";
            this.comboBoxEstadoExpediente.Size = new System.Drawing.Size(210, 28);
            this.comboBoxEstadoExpediente.TabIndex = 153;
            this.comboBoxEstadoExpediente.Text = "DEVOLUCIÓN";
            this.comboBoxEstadoExpediente.SelectedIndexChanged += new System.EventHandler(this.comboBoxEstadoExpediente_SelectedIndexChanged);
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.BackColor = System.Drawing.SystemColors.ButtonFace;
            this.label12.Location = new System.Drawing.Point(504, 9);
            this.label12.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(318, 20);
            this.label12.TabIndex = 154;
            this.label12.Text = "Los datos marcados con (*) son obligatorios";
            // 
            // buttonGenerarRemitoDev
            // 
            this.buttonGenerarRemitoDev.Location = new System.Drawing.Point(641, 930);
            this.buttonGenerarRemitoDev.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.buttonGenerarRemitoDev.Name = "buttonGenerarRemitoDev";
            this.buttonGenerarRemitoDev.Size = new System.Drawing.Size(208, 30);
            this.buttonGenerarRemitoDev.TabIndex = 158;
            this.buttonGenerarRemitoDev.Text = "Generar PDF Devolucion";
            this.buttonGenerarRemitoDev.UseVisualStyleBackColor = true;
            this.buttonGenerarRemitoDev.Click += new System.EventHandler(this.buttonGenerarRemitoDev_Click);
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Location = new System.Drawing.Point(128, 940);
            this.label14.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(78, 20);
            this.label14.TabIndex = 156;
            this.label14.Text = "Nota Gde";
            this.label14.Click += new System.EventHandler(this.label14_Click);
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(16, 913);
            this.label11.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(80, 20);
            this.label11.TabIndex = 159;
            this.label11.Text = "Remito (*)";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(-208, 82);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(100, 20);
            this.label1.TabIndex = 163;
            this.label1.Text = "Documentos";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(-204, 575);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(69, 20);
            this.label3.TabIndex = 162;
            this.label3.Text = "Cuerpos";
            // 
            // dataGridViewCuerpos
            // 
            this.dataGridViewCuerpos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewCuerpos.Location = new System.Drawing.Point(12, 496);
            this.dataGridViewCuerpos.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.dataGridViewCuerpos.Name = "dataGridViewCuerpos";
            this.dataGridViewCuerpos.Size = new System.Drawing.Size(1351, 248);
            this.dataGridViewCuerpos.TabIndex = 161;
            // 
            // dataGridViewExpe
            // 
            this.dataGridViewExpe.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewExpe.Location = new System.Drawing.Point(13, 56);
            this.dataGridViewExpe.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.dataGridViewExpe.Name = "dataGridViewExpe";
            this.dataGridViewExpe.Size = new System.Drawing.Size(1351, 383);
            this.dataGridViewExpe.TabIndex = 160;
            this.dataGridViewExpe.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridViewExpe_CellContentClick);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(12, 31);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(194, 20);
            this.label4.TabIndex = 164;
            this.label4.Text = "Seleccione Documento (*)";
            // 
            // label15
            // 
            this.label15.AutoSize = true;
            this.label15.Location = new System.Drawing.Point(16, 978);
            this.label15.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(196, 20);
            this.label15.TabIndex = 166;
            this.label15.Tag = "LabelFojas";
            this.label15.Text = "Observaciones Devolucion";
            // 
            // textBoxObservacionesDevolucion
            // 
            this.textBoxObservacionesDevolucion.Location = new System.Drawing.Point(220, 975);
            this.textBoxObservacionesDevolucion.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.textBoxObservacionesDevolucion.Name = "textBoxObservacionesDevolucion";
            this.textBoxObservacionesDevolucion.Size = new System.Drawing.Size(692, 26);
            this.textBoxObservacionesDevolucion.TabIndex = 165;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(12, 471);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(69, 20);
            this.label5.TabIndex = 167;
            this.label5.Text = "Cuerpos";
            // 
            // textBoxNotaGde
            // 
            this.textBoxNotaGde.Location = new System.Drawing.Point(220, 934);
            this.textBoxNotaGde.Name = "textBoxNotaGde";
            this.textBoxNotaGde.Size = new System.Drawing.Size(401, 26);
            this.textBoxNotaGde.TabIndex = 168;
            // 
            // Editar_Documento
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.GradientInactiveCaption;
            this.ClientSize = new System.Drawing.Size(1391, 1050);
            this.Controls.Add(this.textBoxNotaGde);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label15);
            this.Controls.Add(this.textBoxObservacionesDevolucion);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.dataGridViewCuerpos);
            this.Controls.Add(this.dataGridViewExpe);
            this.Controls.Add(this.label11);
            this.Controls.Add(this.buttonGenerarRemitoDev);
            this.Controls.Add(this.label14);
            this.Controls.Add(this.label12);
            this.Controls.Add(this.comboBoxEstadoExpediente);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.buttonSalir);
            this.Controls.Add(this.buttonModificar);
            this.Name = "Editar_Documento";
            this.Text = "Editar Documento";
            this.Load += new System.EventHandler(this.Editar_Documento_Load);
            this.HelpRequested += new System.Windows.Forms.HelpEventHandler(this.Editar_Documento_HelpRequested);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewCuerpos)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewExpe)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Button buttonSalir;
        private System.Windows.Forms.Button buttonModificar;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox comboBoxEstadoExpediente;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Button buttonGenerarRemitoDev;
        internal System.Windows.Forms.Label label14;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.DataGridView dataGridViewCuerpos;
        private System.Windows.Forms.DataGridView dataGridViewExpe;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.TextBox textBoxObservacionesDevolucion;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox textBoxNotaGde;
    }
}