namespace UI
{
    partial class ListadoExpedientes
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
            this.dataGridViewExpe = new System.Windows.Forms.DataGridView();
            this.dataGridViewCuerpos = new System.Windows.Forms.DataGridView();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.buttonMostrarH = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewExpe)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewCuerpos)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridViewExpe
            // 
            this.dataGridViewExpe.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewExpe.Location = new System.Drawing.Point(22, 37);
            this.dataGridViewExpe.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.dataGridViewExpe.Name = "dataGridViewExpe";
            this.dataGridViewExpe.Size = new System.Drawing.Size(1568, 447);
            this.dataGridViewExpe.TabIndex = 0;
            this.dataGridViewExpe.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            // 
            // dataGridViewCuerpos
            // 
            this.dataGridViewCuerpos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewCuerpos.Location = new System.Drawing.Point(22, 530);
            this.dataGridViewCuerpos.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.dataGridViewCuerpos.Name = "dataGridViewCuerpos";
            this.dataGridViewCuerpos.Size = new System.Drawing.Size(1568, 369);
            this.dataGridViewCuerpos.TabIndex = 1;
            this.dataGridViewCuerpos.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridViewCuerpos_CellContentClick);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(22, 505);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(69, 20);
            this.label1.TabIndex = 2;
            this.label1.Text = "Cuerpos";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(18, 12);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(100, 20);
            this.label2.TabIndex = 3;
            this.label2.Text = "Documentos";
            this.label2.Click += new System.EventHandler(this.label2_Click);
            // 
            // buttonMostrarH
            // 
            this.buttonMostrarH.Location = new System.Drawing.Point(1370, 924);
            this.buttonMostrarH.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.buttonMostrarH.Name = "buttonMostrarH";
            this.buttonMostrarH.Size = new System.Drawing.Size(220, 35);
            this.buttonMostrarH.TabIndex = 4;
            this.buttonMostrarH.Text = "Mostar Histórico";
            this.buttonMostrarH.UseVisualStyleBackColor = true;
            this.buttonMostrarH.Click += new System.EventHandler(this.buttonMostrarH_Click);
            // 
            // ListadoExpedientes
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.GradientInactiveCaption;
            this.ClientSize = new System.Drawing.Size(1616, 1050);
            this.Controls.Add(this.buttonMostrarH);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.dataGridViewCuerpos);
            this.Controls.Add(this.dataGridViewExpe);
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "ListadoExpedientes";
            this.Text = "ListadoExpdientes";
            this.Load += new System.EventHandler(this.ListadoExpdientes_Load);
            this.HelpRequested += new System.Windows.Forms.HelpEventHandler(this.ListadoExpedientes_HelpRequested);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewExpe)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewCuerpos)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridViewExpe;
        private System.Windows.Forms.DataGridView dataGridViewCuerpos;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button buttonMostrarH;
    }
}