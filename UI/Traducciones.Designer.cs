namespace UI
{
    partial class Traducciones
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
            this.comboBoxEtiquetas = new System.Windows.Forms.ComboBox();
            this.labelEtiqueta = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.buttonBorrar = new System.Windows.Forms.Button();
            this.comboBoxIdiomas = new System.Windows.Forms.ComboBox();
            this.labelIdioma = new System.Windows.Forms.Label();
            this.buttonModificar = new System.Windows.Forms.Button();
            this.buttonLimpiar = new System.Windows.Forms.Button();
            this.labelTraduccion = new System.Windows.Forms.Label();
            this.buttonNuevo = new System.Windows.Forms.Button();
            this.textBoxTraduccion = new System.Windows.Forms.TextBox();
            this.dataGridViewTraducciones = new System.Windows.Forms.DataGridView();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewTraducciones)).BeginInit();
            this.SuspendLayout();
            // 
            // comboBoxEtiquetas
            // 
            this.comboBoxEtiquetas.FormattingEnabled = true;
            this.comboBoxEtiquetas.Items.AddRange(new object[] {
            "Auto",
            "SUV",
            "Camioneta"});
            this.comboBoxEtiquetas.Location = new System.Drawing.Point(96, 19);
            this.comboBoxEtiquetas.Name = "comboBoxEtiquetas";
            this.comboBoxEtiquetas.Size = new System.Drawing.Size(98, 21);
            this.comboBoxEtiquetas.TabIndex = 115;
            // 
            // labelEtiqueta
            // 
            this.labelEtiqueta.AutoSize = true;
            this.labelEtiqueta.Location = new System.Drawing.Point(25, 23);
            this.labelEtiqueta.Name = "labelEtiqueta";
            this.labelEtiqueta.Size = new System.Drawing.Size(46, 13);
            this.labelEtiqueta.TabIndex = 116;
            this.labelEtiqueta.Text = "Etiqueta";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.buttonBorrar);
            this.groupBox1.Controls.Add(this.comboBoxIdiomas);
            this.groupBox1.Controls.Add(this.labelIdioma);
            this.groupBox1.Controls.Add(this.buttonModificar);
            this.groupBox1.Controls.Add(this.buttonLimpiar);
            this.groupBox1.Controls.Add(this.labelTraduccion);
            this.groupBox1.Controls.Add(this.buttonNuevo);
            this.groupBox1.Controls.Add(this.textBoxTraduccion);
            this.groupBox1.Controls.Add(this.comboBoxEtiquetas);
            this.groupBox1.Controls.Add(this.labelEtiqueta);
            this.groupBox1.Location = new System.Drawing.Point(12, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(229, 236);
            this.groupBox1.TabIndex = 117;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Traducciones";
            // 
            // buttonBorrar
            // 
            this.buttonBorrar.Location = new System.Drawing.Point(14, 184);
            this.buttonBorrar.Name = "buttonBorrar";
            this.buttonBorrar.Size = new System.Drawing.Size(75, 23);
            this.buttonBorrar.TabIndex = 127;
            this.buttonBorrar.Text = "Eliminar";
            this.buttonBorrar.UseVisualStyleBackColor = true;
            this.buttonBorrar.Click += new System.EventHandler(this.buttonBorrar_Click);
            // 
            // comboBoxIdiomas
            // 
            this.comboBoxIdiomas.FormattingEnabled = true;
            this.comboBoxIdiomas.Items.AddRange(new object[] {
            "Auto",
            "SUV",
            "Camioneta"});
            this.comboBoxIdiomas.Location = new System.Drawing.Point(96, 59);
            this.comboBoxIdiomas.Name = "comboBoxIdiomas";
            this.comboBoxIdiomas.Size = new System.Drawing.Size(98, 21);
            this.comboBoxIdiomas.TabIndex = 125;
            // 
            // labelIdioma
            // 
            this.labelIdioma.AutoSize = true;
            this.labelIdioma.Location = new System.Drawing.Point(25, 63);
            this.labelIdioma.Name = "labelIdioma";
            this.labelIdioma.Size = new System.Drawing.Size(38, 13);
            this.labelIdioma.TabIndex = 126;
            this.labelIdioma.Text = "Idioma";
            // 
            // buttonModificar
            // 
            this.buttonModificar.Location = new System.Drawing.Point(106, 140);
            this.buttonModificar.Name = "buttonModificar";
            this.buttonModificar.Size = new System.Drawing.Size(75, 23);
            this.buttonModificar.TabIndex = 120;
            this.buttonModificar.Text = "Modificar";
            this.buttonModificar.UseVisualStyleBackColor = true;
            this.buttonModificar.Click += new System.EventHandler(this.buttonModificar_Click);
            // 
            // buttonLimpiar
            // 
            this.buttonLimpiar.Location = new System.Drawing.Point(106, 184);
            this.buttonLimpiar.Name = "buttonLimpiar";
            this.buttonLimpiar.Size = new System.Drawing.Size(75, 23);
            this.buttonLimpiar.TabIndex = 122;
            this.buttonLimpiar.Text = "Limpiar";
            this.buttonLimpiar.UseVisualStyleBackColor = true;
            this.buttonLimpiar.Click += new System.EventHandler(this.buttonLimpiar_Click);
            // 
            // labelTraduccion
            // 
            this.labelTraduccion.AutoSize = true;
            this.labelTraduccion.Location = new System.Drawing.Point(25, 100);
            this.labelTraduccion.Name = "labelTraduccion";
            this.labelTraduccion.Size = new System.Drawing.Size(61, 13);
            this.labelTraduccion.TabIndex = 123;
            this.labelTraduccion.Text = "Traducción";
            // 
            // buttonNuevo
            // 
            this.buttonNuevo.Location = new System.Drawing.Point(14, 140);
            this.buttonNuevo.Name = "buttonNuevo";
            this.buttonNuevo.Size = new System.Drawing.Size(75, 23);
            this.buttonNuevo.TabIndex = 119;
            this.buttonNuevo.Text = "Nuevo";
            this.buttonNuevo.UseVisualStyleBackColor = true;
            this.buttonNuevo.Click += new System.EventHandler(this.buttonNuevo_Click);
            // 
            // textBoxTraduccion
            // 
            this.textBoxTraduccion.Location = new System.Drawing.Point(96, 97);
            this.textBoxTraduccion.Name = "textBoxTraduccion";
            this.textBoxTraduccion.Size = new System.Drawing.Size(98, 20);
            this.textBoxTraduccion.TabIndex = 117;
            // 
            // dataGridViewTraducciones
            // 
            this.dataGridViewTraducciones.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewTraducciones.Location = new System.Drawing.Point(257, 12);
            this.dataGridViewTraducciones.Name = "dataGridViewTraducciones";
            this.dataGridViewTraducciones.Size = new System.Drawing.Size(470, 295);
            this.dataGridViewTraducciones.TabIndex = 118;
            this.dataGridViewTraducciones.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridViewTraducciones_CellContentClick);
            // 
            // Traducciones
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.GradientInactiveCaption;
            this.ClientSize = new System.Drawing.Size(751, 335);
            this.Controls.Add(this.dataGridViewTraducciones);
            this.Controls.Add(this.groupBox1);
            this.Name = "Traducciones";
            this.Text = "Gestión de Traducciones";
            this.Load += new System.EventHandler(this.Traducciones_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewTraducciones)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ComboBox comboBoxEtiquetas;
        internal System.Windows.Forms.Label labelEtiqueta;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.ComboBox comboBoxIdiomas;
        internal System.Windows.Forms.Label labelIdioma;
        private System.Windows.Forms.Button buttonModificar;
        private System.Windows.Forms.Button buttonLimpiar;
        private System.Windows.Forms.Label labelTraduccion;
        private System.Windows.Forms.Button buttonNuevo;
        private System.Windows.Forms.TextBox textBoxTraduccion;
        private System.Windows.Forms.DataGridView dataGridViewTraducciones;
        private System.Windows.Forms.Button buttonBorrar;
    }
}