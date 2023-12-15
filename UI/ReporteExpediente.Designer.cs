namespace UI
{
    partial class ReporteExpediente
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
            this.textBoxDocumento = new System.Windows.Forms.TextBox();
            this.LabelEstado = new System.Windows.Forms.Label();
            this.labelArea = new System.Windows.Forms.Label();
            this.labelUsuarioRepor = new System.Windows.Forms.Label();
            this.labelDes = new System.Windows.Forms.Label();
            this.labelHast = new System.Windows.Forms.Label();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.dateTimePickerDes = new System.Windows.Forms.DateTimePicker();
            this.dateTimePickerHast = new System.Windows.Forms.DateTimePicker();
            this.buttonBusc = new System.Windows.Forms.Button();
            this.comboBoxEst = new System.Windows.Forms.ComboBox();
            this.comboBoxArea = new System.Windows.Forms.ComboBox();
            this.comboBoxUsu = new System.Windows.Forms.ComboBox();
            this.label13 = new System.Windows.Forms.Label();
            this.buttonLimp = new System.Windows.Forms.Button();
            this.buttonDescargar = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(21, 25);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(92, 20);
            this.label1.TabIndex = 0;
            this.label1.Text = "Documento";
            // 
            // textBoxDocumento
            // 
            this.textBoxDocumento.Location = new System.Drawing.Point(25, 48);
            this.textBoxDocumento.Name = "textBoxDocumento";
            this.textBoxDocumento.Size = new System.Drawing.Size(254, 26);
            this.textBoxDocumento.TabIndex = 1;
            // 
            // LabelEstado
            // 
            this.LabelEstado.AutoSize = true;
            this.LabelEstado.Location = new System.Drawing.Point(334, 25);
            this.LabelEstado.Name = "LabelEstado";
            this.LabelEstado.Size = new System.Drawing.Size(60, 20);
            this.LabelEstado.TabIndex = 2;
            this.LabelEstado.Text = "Estado";
            // 
            // labelArea
            // 
            this.labelArea.AutoSize = true;
            this.labelArea.Location = new System.Drawing.Point(21, 135);
            this.labelArea.Name = "labelArea";
            this.labelArea.Size = new System.Drawing.Size(43, 20);
            this.labelArea.TabIndex = 10;
            this.labelArea.Text = "Area";
            // 
            // labelUsuarioRepor
            // 
            this.labelUsuarioRepor.AutoSize = true;
            this.labelUsuarioRepor.Location = new System.Drawing.Point(334, 135);
            this.labelUsuarioRepor.Name = "labelUsuarioRepor";
            this.labelUsuarioRepor.Size = new System.Drawing.Size(64, 20);
            this.labelUsuarioRepor.TabIndex = 12;
            this.labelUsuarioRepor.Text = "Usuario";
            // 
            // labelDes
            // 
            this.labelDes.AutoSize = true;
            this.labelDes.Location = new System.Drawing.Point(644, 25);
            this.labelDes.Name = "labelDes";
            this.labelDes.Size = new System.Drawing.Size(56, 20);
            this.labelDes.TabIndex = 14;
            this.labelDes.Text = "Desde";
            // 
            // labelHast
            // 
            this.labelHast.AutoSize = true;
            this.labelHast.Location = new System.Drawing.Point(644, 141);
            this.labelHast.Name = "labelHast";
            this.labelHast.Size = new System.Drawing.Size(52, 20);
            this.labelHast.TabIndex = 16;
            this.labelHast.Text = "Hasta";
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(25, 230);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowTemplate.Height = 28;
            this.dataGridView1.Size = new System.Drawing.Size(1708, 568);
            this.dataGridView1.TabIndex = 19;
            // 
            // dateTimePickerDes
            // 
            this.dateTimePickerDes.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dateTimePickerDes.Location = new System.Drawing.Point(648, 50);
            this.dateTimePickerDes.Name = "dateTimePickerDes";
            this.dateTimePickerDes.Size = new System.Drawing.Size(254, 26);
            this.dateTimePickerDes.TabIndex = 21;
            // 
            // dateTimePickerHast
            // 
            this.dateTimePickerHast.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dateTimePickerHast.Location = new System.Drawing.Point(648, 164);
            this.dateTimePickerHast.Name = "dateTimePickerHast";
            this.dateTimePickerHast.Size = new System.Drawing.Size(254, 26);
            this.dateTimePickerHast.TabIndex = 22;
            // 
            // buttonBusc
            // 
            this.buttonBusc.Image = global::UI.Properties.Resources.lupa_20x20;
            this.buttonBusc.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.buttonBusc.Location = new System.Drawing.Point(953, 41);
            this.buttonBusc.Name = "buttonBusc";
            this.buttonBusc.Size = new System.Drawing.Size(254, 40);
            this.buttonBusc.TabIndex = 18;
            this.buttonBusc.Text = "Buscar";
            this.buttonBusc.UseVisualStyleBackColor = true;
            this.buttonBusc.Click += new System.EventHandler(this.buttonBusc_Click);
            // 
            // comboBoxEst
            // 
            this.comboBoxEst.FormattingEnabled = true;
            this.comboBoxEst.Location = new System.Drawing.Point(338, 46);
            this.comboBoxEst.Name = "comboBoxEst";
            this.comboBoxEst.Size = new System.Drawing.Size(254, 28);
            this.comboBoxEst.TabIndex = 23;
            // 
            // comboBoxArea
            // 
            this.comboBoxArea.FormattingEnabled = true;
            this.comboBoxArea.Location = new System.Drawing.Point(25, 162);
            this.comboBoxArea.Name = "comboBoxArea";
            this.comboBoxArea.Size = new System.Drawing.Size(254, 28);
            this.comboBoxArea.TabIndex = 25;
            // 
            // comboBoxUsu
            // 
            this.comboBoxUsu.FormattingEnabled = true;
            this.comboBoxUsu.Location = new System.Drawing.Point(338, 160);
            this.comboBoxUsu.Name = "comboBoxUsu";
            this.comboBoxUsu.Size = new System.Drawing.Size(254, 28);
            this.comboBoxUsu.TabIndex = 26;
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(21, 84);
            this.label13.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(240, 20);
            this.label13.TabIndex = 57;
            this.label13.Text = "(EJ.: MEMO-S02:2322212/2018)";
            // 
            // buttonLimp
            // 
            this.buttonLimp.Image = global::UI.Properties.Resources.referescar_20x20;
            this.buttonLimp.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.buttonLimp.Location = new System.Drawing.Point(953, 98);
            this.buttonLimp.Name = "buttonLimp";
            this.buttonLimp.Size = new System.Drawing.Size(254, 40);
            this.buttonLimp.TabIndex = 58;
            this.buttonLimp.Text = "Limpiar";
            this.buttonLimp.UseVisualStyleBackColor = true;
            this.buttonLimp.Click += new System.EventHandler(this.buttonLimp_Click);
            // 
            // buttonDescargar
            // 
            this.buttonDescargar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.buttonDescargar.Location = new System.Drawing.Point(953, 160);
            this.buttonDescargar.Name = "buttonDescargar";
            this.buttonDescargar.Size = new System.Drawing.Size(254, 35);
            this.buttonDescargar.TabIndex = 59;
            this.buttonDescargar.Text = "Descargar PDF";
            this.buttonDescargar.UseVisualStyleBackColor = true;
            this.buttonDescargar.Click += new System.EventHandler(this.buttonDescargar_Click);
            // 
            // ReporteExpediente
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.GradientInactiveCaption;
            this.ClientSize = new System.Drawing.Size(1763, 810);
            this.Controls.Add(this.buttonDescargar);
            this.Controls.Add(this.buttonLimp);
            this.Controls.Add(this.label13);
            this.Controls.Add(this.comboBoxUsu);
            this.Controls.Add(this.comboBoxArea);
            this.Controls.Add(this.comboBoxEst);
            this.Controls.Add(this.dateTimePickerHast);
            this.Controls.Add(this.dateTimePickerDes);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.buttonBusc);
            this.Controls.Add(this.labelHast);
            this.Controls.Add(this.labelDes);
            this.Controls.Add(this.labelUsuarioRepor);
            this.Controls.Add(this.labelArea);
            this.Controls.Add(this.LabelEstado);
            this.Controls.Add(this.textBoxDocumento);
            this.Controls.Add(this.label1);
            this.Name = "ReporteExpediente";
            this.Text = "ReporteExpediente";
            this.Load += new System.EventHandler(this.ReporteExpediente_Load);
            this.HelpRequested += new System.Windows.Forms.HelpEventHandler(this.ReporteExpediente_HelpRequested);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox textBoxDocumento;
        private System.Windows.Forms.Label LabelEstado;
        private System.Windows.Forms.Label labelArea;
        private System.Windows.Forms.Label labelUsuarioRepor;
        private System.Windows.Forms.Label labelDes;
        private System.Windows.Forms.Label labelHast;
        private System.Windows.Forms.Button buttonBusc;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.DateTimePicker dateTimePickerDes;
        private System.Windows.Forms.DateTimePicker dateTimePickerHast;
        private System.Windows.Forms.ComboBox comboBoxEst;
        private System.Windows.Forms.ComboBox comboBoxArea;
        private System.Windows.Forms.ComboBox comboBoxUsu;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.Button buttonLimp;
        private System.Windows.Forms.Button buttonDescargar;
    }
}