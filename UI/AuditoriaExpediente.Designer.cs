namespace UI
{
    partial class AuditoriaExpediente
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
            this.dataGridViewHistoricoExp = new System.Windows.Forms.DataGridView();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.label1 = new System.Windows.Forms.Label();
            this.textNumDocumento = new System.Windows.Forms.TextBox();
            this.btn_limpiar = new System.Windows.Forms.Button();
            this.buttonBuscar = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewHistoricoExp)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // dataGridViewHistoricoExp
            // 
            this.dataGridViewHistoricoExp.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewHistoricoExp.Location = new System.Drawing.Point(18, 145);
            this.dataGridViewHistoricoExp.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.dataGridViewHistoricoExp.Name = "dataGridViewHistoricoExp";
            this.dataGridViewHistoricoExp.Size = new System.Drawing.Size(1869, 586);
            this.dataGridViewHistoricoExp.TabIndex = 64;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btn_limpiar);
            this.groupBox1.Controls.Add(this.buttonBuscar);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.textNumDocumento);
            this.groupBox1.Location = new System.Drawing.Point(18, 18);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.groupBox1.Size = new System.Drawing.Size(846, 108);
            this.groupBox1.TabIndex = 63;
            this.groupBox1.TabStop = false;
            this.groupBox1.Tag = "groupBoxEtiqueta";
            this.groupBox1.Text = "Histórico Expedientes";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(14, 40);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(92, 20);
            this.label1.TabIndex = 63;
            this.label1.Tag = "";
            this.label1.Text = "Documento";
            // 
            // textNumDocumento
            // 
            this.textNumDocumento.Location = new System.Drawing.Point(135, 35);
            this.textNumDocumento.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.textNumDocumento.Name = "textNumDocumento";
            this.textNumDocumento.Size = new System.Drawing.Size(326, 26);
            this.textNumDocumento.TabIndex = 62;
            this.textNumDocumento.TextChanged += new System.EventHandler(this.textNumDocumento_TextChanged);
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
            // AuditoriaExpediente
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.GradientInactiveCaption;
            this.ClientSize = new System.Drawing.Size(1924, 749);
            this.Controls.Add(this.dataGridViewHistoricoExp);
            this.Controls.Add(this.groupBox1);
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "AuditoriaExpediente";
            this.Text = "AuditoriaExpediente";
            this.Load += new System.EventHandler(this.AuditoriaExpediente_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewHistoricoExp)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridViewHistoricoExp;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button buttonBuscar;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox textNumDocumento;
        private System.Windows.Forms.Button btn_limpiar;
    }
}