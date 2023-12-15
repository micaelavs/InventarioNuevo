namespace UI
{
    partial class Remitos
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
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.label7 = new System.Windows.Forms.Label();
            this.textBoxObservaciones = new System.Windows.Forms.TextBox();
            this.buttonVerPdf = new System.Windows.Forms.Button();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker();
            this.label6 = new System.Windows.Forms.Label();
            this.buttonModificar = new System.Windows.Forms.Button();
            this.comboBoxArea = new System.Windows.Forms.ComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.comboBoxIntermediario = new System.Windows.Forms.ComboBox();
            this.label4 = new System.Windows.Forms.Label();
            this.comboBoxAutorizante = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.textBoxNotaGDE = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.textBoxNroRemito = new System.Windows.Forms.TextBox();
            this.comboBoxEstado = new System.Windows.Forms.ComboBox();
            this.labelNombreEtiqueta = new System.Windows.Forms.Label();
            this.labelCodArea = new System.Windows.Forms.Label();
            this.textBoxCodigo = new System.Windows.Forms.TextBox();
            this.dataGridViewRemitos = new System.Windows.Forms.DataGridView();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewRemitos)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.label7);
            this.groupBox1.Controls.Add(this.textBoxObservaciones);
            this.groupBox1.Controls.Add(this.buttonVerPdf);
            this.groupBox1.Controls.Add(this.dateTimePicker1);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.buttonModificar);
            this.groupBox1.Controls.Add(this.comboBoxArea);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.comboBoxIntermediario);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.comboBoxAutorizante);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.textBoxNotaGDE);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.textBoxNroRemito);
            this.groupBox1.Controls.Add(this.comboBoxEstado);
            this.groupBox1.Controls.Add(this.labelNombreEtiqueta);
            this.groupBox1.Controls.Add(this.labelCodArea);
            this.groupBox1.Controls.Add(this.textBoxCodigo);
            this.groupBox1.Location = new System.Drawing.Point(18, 583);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.groupBox1.Size = new System.Drawing.Size(1545, 295);
            this.groupBox1.TabIndex = 60;
            this.groupBox1.TabStop = false;
            this.groupBox1.Tag = "groupBoxEtiqueta";
            this.groupBox1.Text = "Listado Remitos";
            this.groupBox1.Enter += new System.EventHandler(this.groupBox1_Enter);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(519, 222);
            this.label7.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(114, 20);
            this.label7.TabIndex = 74;
            this.label7.Tag = "";
            this.label7.Text = "Observaciones";
            // 
            // textBoxObservaciones
            // 
            this.textBoxObservaciones.Location = new System.Drawing.Point(669, 211);
            this.textBoxObservaciones.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.textBoxObservaciones.Name = "textBoxObservaciones";
            this.textBoxObservaciones.Size = new System.Drawing.Size(324, 26);
            this.textBoxObservaciones.TabIndex = 73;
            // 
            // buttonVerPdf
            // 
            this.buttonVerPdf.Location = new System.Drawing.Point(1048, 68);
            this.buttonVerPdf.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.buttonVerPdf.Name = "buttonVerPdf";
            this.buttonVerPdf.Size = new System.Drawing.Size(470, 35);
            this.buttonVerPdf.TabIndex = 51;
            this.buttonVerPdf.Tag = "BotElim";
            this.buttonVerPdf.Text = "Descargar";
            this.buttonVerPdf.UseVisualStyleBackColor = true;
            this.buttonVerPdf.Click += new System.EventHandler(this.buttonVerPdf_Click);
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.Location = new System.Drawing.Point(166, 248);
            this.dateTimePicker1.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size(324, 26);
            this.dateTimePicker1.TabIndex = 61;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(18, 258);
            this.label6.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(54, 20);
            this.label6.TabIndex = 72;
            this.label6.Tag = "LabelNombEtiqueta";
            this.label6.Text = "Fecha";
            // 
            // buttonModificar
            // 
            this.buttonModificar.Location = new System.Drawing.Point(1048, 17);
            this.buttonModificar.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.buttonModificar.Name = "buttonModificar";
            this.buttonModificar.Size = new System.Drawing.Size(470, 35);
            this.buttonModificar.TabIndex = 50;
            this.buttonModificar.Tag = "BotMod";
            this.buttonModificar.Text = "Modificar";
            this.buttonModificar.UseVisualStyleBackColor = true;
            this.buttonModificar.Click += new System.EventHandler(this.buttonModificar_Click);
            // 
            // comboBoxArea
            // 
            this.comboBoxArea.FormattingEnabled = true;
            this.comboBoxArea.Location = new System.Drawing.Point(669, 143);
            this.comboBoxArea.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.comboBoxArea.Name = "comboBoxArea";
            this.comboBoxArea.Size = new System.Drawing.Size(322, 28);
            this.comboBoxArea.TabIndex = 71;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(519, 155);
            this.label5.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(43, 20);
            this.label5.TabIndex = 70;
            this.label5.Tag = "LabelNombEtiqueta";
            this.label5.Text = "Area";
            // 
            // comboBoxIntermediario
            // 
            this.comboBoxIntermediario.FormattingEnabled = true;
            this.comboBoxIntermediario.Location = new System.Drawing.Point(669, 15);
            this.comboBoxIntermediario.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.comboBoxIntermediario.Name = "comboBoxIntermediario";
            this.comboBoxIntermediario.Size = new System.Drawing.Size(326, 28);
            this.comboBoxIntermediario.TabIndex = 69;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(519, 20);
            this.label4.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(102, 20);
            this.label4.TabIndex = 68;
            this.label4.Tag = "LabelNombEtiqueta";
            this.label4.Text = "Intermediario";
            // 
            // comboBoxAutorizante
            // 
            this.comboBoxAutorizante.FormattingEnabled = true;
            this.comboBoxAutorizante.Location = new System.Drawing.Point(166, 195);
            this.comboBoxAutorizante.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.comboBoxAutorizante.Name = "comboBoxAutorizante";
            this.comboBoxAutorizante.Size = new System.Drawing.Size(326, 28);
            this.comboBoxAutorizante.TabIndex = 67;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(21, 195);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(91, 20);
            this.label3.TabIndex = 66;
            this.label3.Tag = "LabelNombEtiqueta";
            this.label3.Text = "Autorizante";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(21, 148);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(83, 20);
            this.label2.TabIndex = 65;
            this.label2.Tag = "";
            this.label2.Text = "Nota GDE";
            // 
            // textBoxNotaGDE
            // 
            this.textBoxNotaGDE.Enabled = false;
            this.textBoxNotaGDE.Location = new System.Drawing.Point(166, 137);
            this.textBoxNotaGDE.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.textBoxNotaGDE.Name = "textBoxNotaGDE";
            this.textBoxNotaGDE.Size = new System.Drawing.Size(326, 26);
            this.textBoxNotaGDE.TabIndex = 64;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(21, 91);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(89, 20);
            this.label1.TabIndex = 63;
            this.label1.Tag = "";
            this.label1.Text = "Nro Remito";
            // 
            // textBoxNroRemito
            // 
            this.textBoxNroRemito.Enabled = false;
            this.textBoxNroRemito.Location = new System.Drawing.Point(166, 80);
            this.textBoxNroRemito.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.textBoxNroRemito.Name = "textBoxNroRemito";
            this.textBoxNroRemito.Size = new System.Drawing.Size(326, 26);
            this.textBoxNroRemito.TabIndex = 62;
            // 
            // comboBoxEstado
            // 
            this.comboBoxEstado.FormattingEnabled = true;
            this.comboBoxEstado.Location = new System.Drawing.Point(669, 83);
            this.comboBoxEstado.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.comboBoxEstado.Name = "comboBoxEstado";
            this.comboBoxEstado.Size = new System.Drawing.Size(326, 28);
            this.comboBoxEstado.TabIndex = 61;
            this.comboBoxEstado.SelectedIndexChanged += new System.EventHandler(this.comboBoxEstado_SelectedIndexChanged);
            // 
            // labelNombreEtiqueta
            // 
            this.labelNombreEtiqueta.AutoSize = true;
            this.labelNombreEtiqueta.Location = new System.Drawing.Point(519, 83);
            this.labelNombreEtiqueta.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.labelNombreEtiqueta.Name = "labelNombreEtiqueta";
            this.labelNombreEtiqueta.Size = new System.Drawing.Size(60, 20);
            this.labelNombreEtiqueta.TabIndex = 55;
            this.labelNombreEtiqueta.Tag = "LabelNombEtiqueta";
            this.labelNombreEtiqueta.Text = "Estado";
            // 
            // labelCodArea
            // 
            this.labelCodArea.AutoSize = true;
            this.labelCodArea.Location = new System.Drawing.Point(21, 34);
            this.labelCodArea.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.labelCodArea.Name = "labelCodArea";
            this.labelCodArea.Size = new System.Drawing.Size(59, 20);
            this.labelCodArea.TabIndex = 54;
            this.labelCodArea.Tag = "";
            this.labelCodArea.Text = "Codigo";
            // 
            // textBoxCodigo
            // 
            this.textBoxCodigo.Enabled = false;
            this.textBoxCodigo.Location = new System.Drawing.Point(166, 29);
            this.textBoxCodigo.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.textBoxCodigo.Name = "textBoxCodigo";
            this.textBoxCodigo.Size = new System.Drawing.Size(163, 26);
            this.textBoxCodigo.TabIndex = 42;
            // 
            // dataGridViewRemitos
            // 
            this.dataGridViewRemitos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewRemitos.Location = new System.Drawing.Point(18, 18);
            this.dataGridViewRemitos.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.dataGridViewRemitos.Name = "dataGridViewRemitos";
            this.dataGridViewRemitos.Size = new System.Drawing.Size(1893, 535);
            this.dataGridViewRemitos.TabIndex = 59;
            this.dataGridViewRemitos.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridViewRemitos_CellContentClick);
            // 
            // Remitos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.GradientInactiveCaption;
            this.ClientSize = new System.Drawing.Size(1924, 912);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.dataGridViewRemitos);
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "Remitos";
            this.Text = "Remitos";
            this.Load += new System.EventHandler(this.Remitos_Load);
            this.HelpRequested += new System.Windows.Forms.HelpEventHandler(this.Remitos_HelpRequested);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewRemitos)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button buttonModificar;
        private System.Windows.Forms.Label labelNombreEtiqueta;
        private System.Windows.Forms.Label labelCodArea;
        private System.Windows.Forms.Button buttonVerPdf;
        private System.Windows.Forms.TextBox textBoxCodigo;
        private System.Windows.Forms.DataGridView dataGridViewRemitos;
        private System.Windows.Forms.ComboBox comboBoxEstado;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.ComboBox comboBoxArea;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.ComboBox comboBoxIntermediario;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.ComboBox comboBoxAutorizante;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox textBoxNotaGDE;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox textBoxNroRemito;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox textBoxObservaciones;
        private System.Windows.Forms.DateTimePicker dateTimePicker1;
    }
}