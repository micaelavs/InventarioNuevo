namespace UI
{
    partial class Etiquetas
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
            this.buttonLimpiar = new System.Windows.Forms.Button();
            this.labelCodEtiqueta = new System.Windows.Forms.Label();
            this.buttonEliminar = new System.Windows.Forms.Button();
            this.textBoxCodigo = new System.Windows.Forms.TextBox();
            this.buttonModificar = new System.Windows.Forms.Button();
            this.textBoxNombre = new System.Windows.Forms.TextBox();
            this.buttonNuevo = new System.Windows.Forms.Button();
            this.labelNombreEtiqueta = new System.Windows.Forms.Label();
            this.dataGridViewEtiquetas = new System.Windows.Forms.DataGridView();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewEtiquetas)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // buttonLimpiar
            // 
            this.buttonLimpiar.Location = new System.Drawing.Point(99, 138);
            this.buttonLimpiar.Name = "buttonLimpiar";
            this.buttonLimpiar.Size = new System.Drawing.Size(75, 23);
            this.buttonLimpiar.TabIndex = 52;
            this.buttonLimpiar.Tag = "BotLimpiarEti";
            this.buttonLimpiar.Text = "Limpiar";
            this.buttonLimpiar.UseVisualStyleBackColor = true;
            this.buttonLimpiar.Click += new System.EventHandler(this.buttonLimpiar_Click);
            // 
            // labelCodEtiqueta
            // 
            this.labelCodEtiqueta.AutoSize = true;
            this.labelCodEtiqueta.Location = new System.Drawing.Point(20, 22);
            this.labelCodEtiqueta.Name = "labelCodEtiqueta";
            this.labelCodEtiqueta.Size = new System.Drawing.Size(40, 13);
            this.labelCodEtiqueta.TabIndex = 54;
            this.labelCodEtiqueta.Tag = "labelCodEtiqueta";
            this.labelCodEtiqueta.Text = "Codigo";
            // 
            // buttonEliminar
            // 
            this.buttonEliminar.Location = new System.Drawing.Point(13, 138);
            this.buttonEliminar.Name = "buttonEliminar";
            this.buttonEliminar.Size = new System.Drawing.Size(75, 23);
            this.buttonEliminar.TabIndex = 51;
            this.buttonEliminar.Tag = "BotElimEtiqueta";
            this.buttonEliminar.Text = "Eliminar";
            this.buttonEliminar.UseVisualStyleBackColor = true;
            this.buttonEliminar.Click += new System.EventHandler(this.buttonEliminar_Click);
            // 
            // textBoxCodigo
            // 
            this.textBoxCodigo.Enabled = false;
            this.textBoxCodigo.Location = new System.Drawing.Point(88, 16);
            this.textBoxCodigo.Name = "textBoxCodigo";
            this.textBoxCodigo.Size = new System.Drawing.Size(98, 20);
            this.textBoxCodigo.TabIndex = 42;
            // 
            // buttonModificar
            // 
            this.buttonModificar.Location = new System.Drawing.Point(99, 99);
            this.buttonModificar.Name = "buttonModificar";
            this.buttonModificar.Size = new System.Drawing.Size(75, 23);
            this.buttonModificar.TabIndex = 50;
            this.buttonModificar.Tag = "BotModEtiqueta";
            this.buttonModificar.Text = "Modificar";
            this.buttonModificar.UseVisualStyleBackColor = true;
            this.buttonModificar.Click += new System.EventHandler(this.buttonModificar_Click);
            // 
            // textBoxNombre
            // 
            this.textBoxNombre.Location = new System.Drawing.Point(88, 51);
            this.textBoxNombre.Name = "textBoxNombre";
            this.textBoxNombre.Size = new System.Drawing.Size(98, 20);
            this.textBoxNombre.TabIndex = 43;
            // 
            // buttonNuevo
            // 
            this.buttonNuevo.Location = new System.Drawing.Point(13, 99);
            this.buttonNuevo.Name = "buttonNuevo";
            this.buttonNuevo.Size = new System.Drawing.Size(69, 23);
            this.buttonNuevo.TabIndex = 49;
            this.buttonNuevo.Tag = "BotNuevEtiqueta";
            this.buttonNuevo.Text = "Nuevo";
            this.buttonNuevo.UseVisualStyleBackColor = true;
            this.buttonNuevo.Click += new System.EventHandler(this.buttonNuevo_Click);
            // 
            // labelNombreEtiqueta
            // 
            this.labelNombreEtiqueta.AutoSize = true;
            this.labelNombreEtiqueta.Location = new System.Drawing.Point(20, 58);
            this.labelNombreEtiqueta.Name = "labelNombreEtiqueta";
            this.labelNombreEtiqueta.Size = new System.Drawing.Size(44, 13);
            this.labelNombreEtiqueta.TabIndex = 55;
            this.labelNombreEtiqueta.Tag = "LabelNombEtiqueta";
            this.labelNombreEtiqueta.Text = "Nombre";
            // 
            // dataGridViewEtiquetas
            // 
            this.dataGridViewEtiquetas.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewEtiquetas.Location = new System.Drawing.Point(234, 12);
            this.dataGridViewEtiquetas.Name = "dataGridViewEtiquetas";
            this.dataGridViewEtiquetas.Size = new System.Drawing.Size(470, 250);
            this.dataGridViewEtiquetas.TabIndex = 53;
            this.dataGridViewEtiquetas.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridViewEtiquetas_CellContentClick);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.buttonModificar);
            this.groupBox1.Controls.Add(this.buttonLimpiar);
            this.groupBox1.Controls.Add(this.labelNombreEtiqueta);
            this.groupBox1.Controls.Add(this.labelCodEtiqueta);
            this.groupBox1.Controls.Add(this.buttonNuevo);
            this.groupBox1.Controls.Add(this.buttonEliminar);
            this.groupBox1.Controls.Add(this.textBoxNombre);
            this.groupBox1.Controls.Add(this.textBoxCodigo);
            this.groupBox1.Location = new System.Drawing.Point(12, 8);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(201, 184);
            this.groupBox1.TabIndex = 56;
            this.groupBox1.TabStop = false;
            this.groupBox1.Tag = "groupBoxEtiqueta";
            this.groupBox1.Text = "Etiquetas";
            // 
            // Etiquetas
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.GradientInactiveCaption;
            this.ClientSize = new System.Drawing.Size(723, 275);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.dataGridViewEtiquetas);
            this.Name = "Etiquetas";
            this.Tag = "gestorDeEtiquetaForm";
            this.Text = "Gestión de Etiquetas";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.Etiquetas_FormClosing);
            this.Load += new System.EventHandler(this.Etiquetas_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewEtiquetas)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.Button buttonLimpiar;
        private System.Windows.Forms.Label labelCodEtiqueta;
        private System.Windows.Forms.Button buttonEliminar;
        private System.Windows.Forms.TextBox textBoxCodigo;
        private System.Windows.Forms.Button buttonModificar;
        private System.Windows.Forms.TextBox textBoxNombre;
        private System.Windows.Forms.Button buttonNuevo;
        private System.Windows.Forms.Label labelNombreEtiqueta;
        private System.Windows.Forms.DataGridView dataGridViewEtiquetas;
        private System.Windows.Forms.GroupBox groupBox1;
    }
}