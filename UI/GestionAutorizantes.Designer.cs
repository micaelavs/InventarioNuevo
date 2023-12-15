namespace UI
{
    partial class GestionAutorizantes
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
            this.comboBoxDependencias = new System.Windows.Forms.ComboBox();
            this.labelIdepen = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.textBoxDocumento = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.textBoxApellido = new System.Windows.Forms.TextBox();
            this.buttonModificar = new System.Windows.Forms.Button();
            this.buttonLimpiar = new System.Windows.Forms.Button();
            this.labelNombreEtiqueta = new System.Windows.Forms.Label();
            this.labelCodEtiqueta = new System.Windows.Forms.Label();
            this.buttonNuevo = new System.Windows.Forms.Button();
            this.textBoxNombre = new System.Windows.Forms.TextBox();
            this.textBoxCodigo = new System.Windows.Forms.TextBox();
            this.dataGridViewAutorizantes = new System.Windows.Forms.DataGridView();
            this.buttonMostrarH = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewAutorizantes)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.buttonMostrarH);
            this.groupBox1.Controls.Add(this.comboBoxDependencias);
            this.groupBox1.Controls.Add(this.labelIdepen);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.textBoxDocumento);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.textBoxApellido);
            this.groupBox1.Controls.Add(this.buttonModificar);
            this.groupBox1.Controls.Add(this.buttonLimpiar);
            this.groupBox1.Controls.Add(this.labelNombreEtiqueta);
            this.groupBox1.Controls.Add(this.labelCodEtiqueta);
            this.groupBox1.Controls.Add(this.buttonNuevo);
            this.groupBox1.Controls.Add(this.textBoxNombre);
            this.groupBox1.Controls.Add(this.textBoxCodigo);
            this.groupBox1.Location = new System.Drawing.Point(14, 12);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.groupBox1.Size = new System.Drawing.Size(302, 504);
            this.groupBox1.TabIndex = 58;
            this.groupBox1.TabStop = false;
            this.groupBox1.Tag = "groupBoxEtiqueta";
            this.groupBox1.Text = "Autorizantes";
            // 
            // comboBoxDependencias
            // 
            this.comboBoxDependencias.FormattingEnabled = true;
            this.comboBoxDependencias.Items.AddRange(new object[] {
            "Auto",
            "SUV",
            "Camioneta"});
            this.comboBoxDependencias.Location = new System.Drawing.Point(132, 246);
            this.comboBoxDependencias.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.comboBoxDependencias.Name = "comboBoxDependencias";
            this.comboBoxDependencias.Size = new System.Drawing.Size(145, 28);
            this.comboBoxDependencias.TabIndex = 127;
            // 
            // labelIdepen
            // 
            this.labelIdepen.AutoSize = true;
            this.labelIdepen.Location = new System.Drawing.Point(9, 251);
            this.labelIdepen.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.labelIdepen.Name = "labelIdepen";
            this.labelIdepen.Size = new System.Drawing.Size(104, 20);
            this.labelIdepen.TabIndex = 128;
            this.labelIdepen.Text = "Dependencia";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(18, 195);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(92, 20);
            this.label3.TabIndex = 61;
            this.label3.Tag = "LabelDocumento";
            this.label3.Text = "Documento";
            // 
            // textBoxDocumento
            // 
            this.textBoxDocumento.Location = new System.Drawing.Point(132, 191);
            this.textBoxDocumento.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.textBoxDocumento.Name = "textBoxDocumento";
            this.textBoxDocumento.Size = new System.Drawing.Size(145, 26);
            this.textBoxDocumento.TabIndex = 60;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(18, 137);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(65, 20);
            this.label1.TabIndex = 57;
            this.label1.Tag = "LabelApellido";
            this.label1.Text = "Apellido";
            // 
            // textBoxApellido
            // 
            this.textBoxApellido.Location = new System.Drawing.Point(132, 132);
            this.textBoxApellido.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.textBoxApellido.Name = "textBoxApellido";
            this.textBoxApellido.Size = new System.Drawing.Size(145, 26);
            this.textBoxApellido.TabIndex = 56;
            // 
            // buttonModificar
            // 
            this.buttonModificar.Location = new System.Drawing.Point(152, 317);
            this.buttonModificar.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.buttonModificar.Name = "buttonModificar";
            this.buttonModificar.Size = new System.Drawing.Size(112, 35);
            this.buttonModificar.TabIndex = 50;
            this.buttonModificar.Tag = "BotModEtiqueta";
            this.buttonModificar.Text = "Modificar";
            this.buttonModificar.UseVisualStyleBackColor = true;
            this.buttonModificar.Click += new System.EventHandler(this.buttonModificar_Click);
            // 
            // buttonLimpiar
            // 
            this.buttonLimpiar.Location = new System.Drawing.Point(22, 374);
            this.buttonLimpiar.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.buttonLimpiar.Name = "buttonLimpiar";
            this.buttonLimpiar.Size = new System.Drawing.Size(242, 35);
            this.buttonLimpiar.TabIndex = 52;
            this.buttonLimpiar.Tag = "BotLimpiarEti";
            this.buttonLimpiar.Text = "Limpiar";
            this.buttonLimpiar.UseVisualStyleBackColor = true;
            this.buttonLimpiar.Click += new System.EventHandler(this.ButtonLimpiar_Click);
            // 
            // labelNombreEtiqueta
            // 
            this.labelNombreEtiqueta.AutoSize = true;
            this.labelNombreEtiqueta.Location = new System.Drawing.Point(18, 89);
            this.labelNombreEtiqueta.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.labelNombreEtiqueta.Name = "labelNombreEtiqueta";
            this.labelNombreEtiqueta.Size = new System.Drawing.Size(65, 20);
            this.labelNombreEtiqueta.TabIndex = 55;
            this.labelNombreEtiqueta.Tag = "LabelNombEtiqueta";
            this.labelNombreEtiqueta.Text = "Nombre";
            // 
            // labelCodEtiqueta
            // 
            this.labelCodEtiqueta.AutoSize = true;
            this.labelCodEtiqueta.Location = new System.Drawing.Point(18, 35);
            this.labelCodEtiqueta.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.labelCodEtiqueta.Name = "labelCodEtiqueta";
            this.labelCodEtiqueta.Size = new System.Drawing.Size(59, 20);
            this.labelCodEtiqueta.TabIndex = 54;
            this.labelCodEtiqueta.Tag = "labelCodEtiqueta";
            this.labelCodEtiqueta.Text = "Codigo";
            // 
            // buttonNuevo
            // 
            this.buttonNuevo.Location = new System.Drawing.Point(22, 317);
            this.buttonNuevo.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.buttonNuevo.Name = "buttonNuevo";
            this.buttonNuevo.Size = new System.Drawing.Size(104, 35);
            this.buttonNuevo.TabIndex = 49;
            this.buttonNuevo.Tag = "BotNuevEtiqueta";
            this.buttonNuevo.Text = "Nuevo";
            this.buttonNuevo.UseVisualStyleBackColor = true;
            this.buttonNuevo.Click += new System.EventHandler(this.buttonNuevo_Click);
            // 
            // textBoxNombre
            // 
            this.textBoxNombre.Location = new System.Drawing.Point(132, 78);
            this.textBoxNombre.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.textBoxNombre.Name = "textBoxNombre";
            this.textBoxNombre.Size = new System.Drawing.Size(145, 26);
            this.textBoxNombre.TabIndex = 43;
            // 
            // textBoxCodigo
            // 
            this.textBoxCodigo.Enabled = false;
            this.textBoxCodigo.Location = new System.Drawing.Point(132, 25);
            this.textBoxCodigo.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.textBoxCodigo.Name = "textBoxCodigo";
            this.textBoxCodigo.Size = new System.Drawing.Size(145, 26);
            this.textBoxCodigo.TabIndex = 42;
            // 
            // dataGridViewAutorizantes
            // 
            this.dataGridViewAutorizantes.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewAutorizantes.Location = new System.Drawing.Point(346, 18);
            this.dataGridViewAutorizantes.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.dataGridViewAutorizantes.Name = "dataGridViewAutorizantes";
            this.dataGridViewAutorizantes.Size = new System.Drawing.Size(1044, 491);
            this.dataGridViewAutorizantes.TabIndex = 57;
            this.dataGridViewAutorizantes.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridViewEtiquetas_CellContentClick);
            // 
            // buttonMostrarH
            // 
            this.buttonMostrarH.Location = new System.Drawing.Point(22, 430);
            this.buttonMostrarH.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.buttonMostrarH.Name = "buttonMostrarH";
            this.buttonMostrarH.Size = new System.Drawing.Size(242, 35);
            this.buttonMostrarH.TabIndex = 59;
            this.buttonMostrarH.Text = "Mostar Histórico";
            this.buttonMostrarH.UseVisualStyleBackColor = true;
            this.buttonMostrarH.Click += new System.EventHandler(this.buttonMostrarH_Click);
            // 
            // GestionAutorizantes
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.GradientInactiveCaption;
            this.ClientSize = new System.Drawing.Size(1408, 554);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.dataGridViewAutorizantes);
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "GestionAutorizantes";
            this.Text = "Gestion de Autorizantes";
            this.Load += new System.EventHandler(this.GestionAutorizantes_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewAutorizantes)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button buttonModificar;
        private System.Windows.Forms.Button buttonLimpiar;
        private System.Windows.Forms.Label labelNombreEtiqueta;
        private System.Windows.Forms.Label labelCodEtiqueta;
        private System.Windows.Forms.Button buttonNuevo;
        private System.Windows.Forms.TextBox textBoxNombre;
        private System.Windows.Forms.TextBox textBoxCodigo;
        private System.Windows.Forms.DataGridView dataGridViewAutorizantes;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox textBoxApellido;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox textBoxDocumento;
        private System.Windows.Forms.ComboBox comboBoxDependencias;
        internal System.Windows.Forms.Label labelIdepen;
        private System.Windows.Forms.Button buttonMostrarH;
    }
}