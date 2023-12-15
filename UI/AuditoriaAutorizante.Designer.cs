namespace UI
{
    partial class AuditoriaAutorizante
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
            this.dataGridViewHistoricoAutoriz = new System.Windows.Forms.DataGridView();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.buttonVolver = new System.Windows.Forms.Button();
            this.comboBoxAutorizante = new System.Windows.Forms.ComboBox();
            this.btn_limpiar = new System.Windows.Forms.Button();
            this.buttonBuscar = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewHistoricoAutoriz)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // dataGridViewHistoricoAutoriz
            // 
            this.dataGridViewHistoricoAutoriz.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewHistoricoAutoriz.Location = new System.Drawing.Point(13, 161);
            this.dataGridViewHistoricoAutoriz.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.dataGridViewHistoricoAutoriz.Name = "dataGridViewHistoricoAutoriz";
            this.dataGridViewHistoricoAutoriz.Size = new System.Drawing.Size(1717, 586);
            this.dataGridViewHistoricoAutoriz.TabIndex = 66;
            this.dataGridViewHistoricoAutoriz.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridViewHistoricoAutoriz_CellContentClick);
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.SystemColors.GradientInactiveCaption;
            this.groupBox1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.groupBox1.Controls.Add(this.buttonVolver);
            this.groupBox1.Controls.Add(this.comboBoxAutorizante);
            this.groupBox1.Controls.Add(this.btn_limpiar);
            this.groupBox1.Controls.Add(this.buttonBuscar);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Location = new System.Drawing.Point(13, 19);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.groupBox1.Size = new System.Drawing.Size(1214, 108);
            this.groupBox1.TabIndex = 65;
            this.groupBox1.TabStop = false;
            this.groupBox1.Tag = "groupBoxEtiqueta";
            this.groupBox1.Text = "Histórico Autorizante";
            // 
            // buttonVolver
            // 
            this.buttonVolver.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.buttonVolver.Location = new System.Drawing.Point(827, 26);
            this.buttonVolver.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.buttonVolver.Name = "buttonVolver";
            this.buttonVolver.Size = new System.Drawing.Size(363, 49);
            this.buttonVolver.TabIndex = 68;
            this.buttonVolver.Tag = "";
            this.buttonVolver.Text = "Volver a estado seleccionado";
            this.buttonVolver.UseVisualStyleBackColor = true;
            this.buttonVolver.Click += new System.EventHandler(this.button1_Click);
            // 
            // comboBoxAutorizante
            // 
            this.comboBoxAutorizante.FormattingEnabled = true;
            this.comboBoxAutorizante.Location = new System.Drawing.Point(123, 40);
            this.comboBoxAutorizante.Name = "comboBoxAutorizante";
            this.comboBoxAutorizante.Size = new System.Drawing.Size(347, 28);
            this.comboBoxAutorizante.TabIndex = 67;
            this.comboBoxAutorizante.SelectedIndexChanged += new System.EventHandler(this.comboBoxAutorizante_SelectedIndexChanged);
            // 
            // btn_limpiar
            // 
            this.btn_limpiar.Image = global::UI.Properties.Resources.referescar_20x20;
            this.btn_limpiar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_limpiar.Location = new System.Drawing.Point(672, 26);
            this.btn_limpiar.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btn_limpiar.Name = "btn_limpiar";
            this.btn_limpiar.Size = new System.Drawing.Size(135, 49);
            this.btn_limpiar.TabIndex = 65;
            this.btn_limpiar.Text = "Limpiar";
            this.btn_limpiar.UseVisualStyleBackColor = true;
            this.btn_limpiar.Click += new System.EventHandler(this.btn_limpiar_Click);
            // 
            // buttonBuscar
            // 
            this.buttonBuscar.Image = global::UI.Properties.Resources.lupa_20x20;
            this.buttonBuscar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.buttonBuscar.Location = new System.Drawing.Point(508, 26);
            this.buttonBuscar.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.buttonBuscar.Name = "buttonBuscar";
            this.buttonBuscar.Size = new System.Drawing.Size(138, 49);
            this.buttonBuscar.TabIndex = 50;
            this.buttonBuscar.Tag = "";
            this.buttonBuscar.Text = "Buscar";
            this.buttonBuscar.UseVisualStyleBackColor = true;
            this.buttonBuscar.Click += new System.EventHandler(this.buttonBuscar_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(14, 40);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(91, 20);
            this.label1.TabIndex = 63;
            this.label1.Tag = "";
            this.label1.Text = "Autorizante";
            // 
            // AuditoriaAutorizante
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.GradientInactiveCaption;
            this.ClientSize = new System.Drawing.Size(1751, 790);
            this.Controls.Add(this.dataGridViewHistoricoAutoriz);
            this.Controls.Add(this.groupBox1);
            this.Name = "AuditoriaAutorizante";
            this.Text = "AuditoriaAutorizante";
            this.Load += new System.EventHandler(this.AuditoriaAutorizante_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewHistoricoAutoriz)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridViewHistoricoAutoriz;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btn_limpiar;
        private System.Windows.Forms.Button buttonBuscar;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox comboBoxAutorizante;
        private System.Windows.Forms.Button buttonVolver;
    }
}