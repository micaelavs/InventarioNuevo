namespace UI
{
    partial class Area
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
            this.buttonModificar = new System.Windows.Forms.Button();
            this.buttonLimpiar = new System.Windows.Forms.Button();
            this.labelNombreEtiqueta = new System.Windows.Forms.Label();
            this.labelCodArea = new System.Windows.Forms.Label();
            this.buttonNuevo = new System.Windows.Forms.Button();
            this.buttonEliminar = new System.Windows.Forms.Button();
            this.textBoxNombre = new System.Windows.Forms.TextBox();
            this.textBoxCodigo = new System.Windows.Forms.TextBox();
            this.dataGridViewAreas = new System.Windows.Forms.DataGridView();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewAreas)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.buttonModificar);
            this.groupBox1.Controls.Add(this.buttonLimpiar);
            this.groupBox1.Controls.Add(this.labelNombreEtiqueta);
            this.groupBox1.Controls.Add(this.labelCodArea);
            this.groupBox1.Controls.Add(this.buttonNuevo);
            this.groupBox1.Controls.Add(this.buttonEliminar);
            this.groupBox1.Controls.Add(this.textBoxNombre);
            this.groupBox1.Controls.Add(this.textBoxCodigo);
            this.groupBox1.Location = new System.Drawing.Point(21, 26);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.groupBox1.Size = new System.Drawing.Size(302, 283);
            this.groupBox1.TabIndex = 58;
            this.groupBox1.TabStop = false;
            this.groupBox1.Tag = "groupBoxEtiqueta";
            this.groupBox1.Text = "Areas";
            // 
            // buttonModificar
            // 
            this.buttonModificar.Location = new System.Drawing.Point(148, 152);
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
            this.buttonLimpiar.Location = new System.Drawing.Point(148, 212);
            this.buttonLimpiar.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.buttonLimpiar.Name = "buttonLimpiar";
            this.buttonLimpiar.Size = new System.Drawing.Size(112, 35);
            this.buttonLimpiar.TabIndex = 52;
            this.buttonLimpiar.Tag = "BotLimpiarEti";
            this.buttonLimpiar.Text = "Limpiar";
            this.buttonLimpiar.UseVisualStyleBackColor = true;
            this.buttonLimpiar.Click += new System.EventHandler(this.buttonLimpiar_Click);
            // 
            // labelNombreEtiqueta
            // 
            this.labelNombreEtiqueta.AutoSize = true;
            this.labelNombreEtiqueta.Location = new System.Drawing.Point(30, 84);
            this.labelNombreEtiqueta.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.labelNombreEtiqueta.Name = "labelNombreEtiqueta";
            this.labelNombreEtiqueta.Size = new System.Drawing.Size(65, 20);
            this.labelNombreEtiqueta.TabIndex = 55;
            this.labelNombreEtiqueta.Tag = "LabelNombEtiqueta";
            this.labelNombreEtiqueta.Text = "Nombre";
            // 
            // labelCodArea
            // 
            this.labelCodArea.AutoSize = true;
            this.labelCodArea.Location = new System.Drawing.Point(30, 31);
            this.labelCodArea.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.labelCodArea.Name = "labelCodArea";
            this.labelCodArea.Size = new System.Drawing.Size(59, 20);
            this.labelCodArea.TabIndex = 54;
            this.labelCodArea.Tag = "";
            this.labelCodArea.Text = "Codigo";
            // 
            // buttonNuevo
            // 
            this.buttonNuevo.Location = new System.Drawing.Point(20, 152);
            this.buttonNuevo.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.buttonNuevo.Name = "buttonNuevo";
            this.buttonNuevo.Size = new System.Drawing.Size(104, 35);
            this.buttonNuevo.TabIndex = 49;
            this.buttonNuevo.Tag = "BotNuevEtiqueta";
            this.buttonNuevo.Text = "Nuevo";
            this.buttonNuevo.UseVisualStyleBackColor = true;
            this.buttonNuevo.Click += new System.EventHandler(this.buttonNuevo_Click);
            // 
            // buttonEliminar
            // 
            this.buttonEliminar.Location = new System.Drawing.Point(20, 212);
            this.buttonEliminar.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.buttonEliminar.Name = "buttonEliminar";
            this.buttonEliminar.Size = new System.Drawing.Size(112, 35);
            this.buttonEliminar.TabIndex = 51;
            this.buttonEliminar.Tag = "BotElimEtiqueta";
            this.buttonEliminar.Text = "Eliminar";
            this.buttonEliminar.UseVisualStyleBackColor = true;
            this.buttonEliminar.Click += new System.EventHandler(this.buttonEliminar_Click);
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
            // dataGridViewAreas
            // 
            this.dataGridViewAreas.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewAreas.Location = new System.Drawing.Point(354, 32);
            this.dataGridViewAreas.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.dataGridViewAreas.Name = "dataGridViewAreas";
            this.dataGridViewAreas.Size = new System.Drawing.Size(705, 385);
            this.dataGridViewAreas.TabIndex = 57;
            this.dataGridViewAreas.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridViewAreas_CellContentClick);
            // 
            // Area
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.GradientInactiveCaption;
            this.ClientSize = new System.Drawing.Size(1116, 457);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.dataGridViewAreas);
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "Area";
            this.Text = "Area";
            this.Load += new System.EventHandler(this.Area_Load);
            this.HelpRequested += new System.Windows.Forms.HelpEventHandler(this.Area_HelpRequested);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewAreas)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button buttonModificar;
        private System.Windows.Forms.Button buttonLimpiar;
        private System.Windows.Forms.Label labelNombreEtiqueta;
        private System.Windows.Forms.Label labelCodArea;
        private System.Windows.Forms.Button buttonNuevo;
        private System.Windows.Forms.Button buttonEliminar;
        private System.Windows.Forms.TextBox textBoxNombre;
        private System.Windows.Forms.TextBox textBoxCodigo;
        private System.Windows.Forms.DataGridView dataGridViewAreas;
    }
}