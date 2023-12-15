namespace UI
{
    partial class GestionUsuarios
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
            this.cmdGuardarFamilia = new System.Windows.Forms.Button();
            this.treeView1 = new System.Windows.Forms.TreeView();
            this.grpUsuarios = new System.Windows.Forms.GroupBox();
            this.button2 = new System.Windows.Forms.Button();
            this.cboFamilias = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.cboPatentes = new System.Windows.Forms.ComboBox();
            this.LabelAgregarPatentes = new System.Windows.Forms.Label();
            this.cmdConfigurar = new System.Windows.Forms.Button();
            this.cboUsuarios = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.grpUsuarios.SuspendLayout();
            this.SuspendLayout();
            // 
            // cmdGuardarFamilia
            // 
            this.cmdGuardarFamilia.Location = new System.Drawing.Point(422, 369);
            this.cmdGuardarFamilia.Name = "cmdGuardarFamilia";
            this.cmdGuardarFamilia.Size = new System.Drawing.Size(160, 34);
            this.cmdGuardarFamilia.TabIndex = 10;
            this.cmdGuardarFamilia.Tag = "cmdGuardarFamilia";
            this.cmdGuardarFamilia.Text = "Guardar cambios";
            this.cmdGuardarFamilia.UseVisualStyleBackColor = true;
            this.cmdGuardarFamilia.Click += new System.EventHandler(this.cmdGuardarFamilia_Click);
            // 
            // treeView1
            // 
            this.treeView1.Location = new System.Drawing.Point(422, 35);
            this.treeView1.Name = "treeView1";
            this.treeView1.Size = new System.Drawing.Size(412, 326);
            this.treeView1.TabIndex = 9;
            // 
            // grpUsuarios
            // 
            this.grpUsuarios.Controls.Add(this.button2);
            this.grpUsuarios.Controls.Add(this.cboFamilias);
            this.grpUsuarios.Controls.Add(this.label3);
            this.grpUsuarios.Controls.Add(this.button1);
            this.grpUsuarios.Controls.Add(this.cboPatentes);
            this.grpUsuarios.Controls.Add(this.LabelAgregarPatentes);
            this.grpUsuarios.Controls.Add(this.cmdConfigurar);
            this.grpUsuarios.Controls.Add(this.cboUsuarios);
            this.grpUsuarios.Controls.Add(this.label2);
            this.grpUsuarios.Location = new System.Drawing.Point(14, 20);
            this.grpUsuarios.Name = "grpUsuarios";
            this.grpUsuarios.Size = new System.Drawing.Size(384, 383);
            this.grpUsuarios.TabIndex = 8;
            this.grpUsuarios.TabStop = false;
            this.grpUsuarios.Tag = "grpUsuarios";
            this.grpUsuarios.Text = "Usuarios";
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(16, 337);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(124, 42);
            this.button2.TabIndex = 13;
            this.button2.Tag = "bntAgrPatUsu";
            this.button2.Text = "Agregar >>";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // cboFamilias
            // 
            this.cboFamilias.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboFamilias.FormattingEnabled = true;
            this.cboFamilias.Location = new System.Drawing.Point(16, 298);
            this.cboFamilias.Name = "cboFamilias";
            this.cboFamilias.Size = new System.Drawing.Size(349, 28);
            this.cboFamilias.TabIndex = 12;
            this.cboFamilias.Tag = "cboFamilias";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(14, 274);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(128, 20);
            this.label3.TabIndex = 11;
            this.label3.Tag = "labelAgregarFamiliasUsu";
            this.label3.Text = "Agregar Familias";
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(16, 232);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(124, 38);
            this.button1.TabIndex = 10;
            this.button1.Tag = "bntAgrPatUsu";
            this.button1.Text = "Agregar >>";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // cboPatentes
            // 
            this.cboPatentes.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboPatentes.FormattingEnabled = true;
            this.cboPatentes.Location = new System.Drawing.Point(16, 195);
            this.cboPatentes.Name = "cboPatentes";
            this.cboPatentes.Size = new System.Drawing.Size(349, 28);
            this.cboPatentes.TabIndex = 9;
            this.cboPatentes.Tag = "cboPatentesUsu";
            // 
            // LabelAgregarPatentes
            // 
            this.LabelAgregarPatentes.AutoSize = true;
            this.LabelAgregarPatentes.Location = new System.Drawing.Point(14, 169);
            this.LabelAgregarPatentes.Name = "LabelAgregarPatentes";
            this.LabelAgregarPatentes.Size = new System.Drawing.Size(133, 20);
            this.LabelAgregarPatentes.TabIndex = 8;
            this.LabelAgregarPatentes.Tag = "LabelAgregarPatentes";
            this.LabelAgregarPatentes.Text = "Agregar patentes";
            // 
            // cmdConfigurar
            // 
            this.cmdConfigurar.Location = new System.Drawing.Point(16, 97);
            this.cmdConfigurar.Name = "cmdConfigurar";
            this.cmdConfigurar.Size = new System.Drawing.Size(129, 40);
            this.cmdConfigurar.TabIndex = 7;
            this.cmdConfigurar.Tag = "configurarUsu";
            this.cmdConfigurar.Text = "Configurar";
            this.cmdConfigurar.UseVisualStyleBackColor = true;
            this.cmdConfigurar.Click += new System.EventHandler(this.cmdConfigurar_Click);
            // 
            // cboUsuarios
            // 
            this.cboUsuarios.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboUsuarios.FormattingEnabled = true;
            this.cboUsuarios.Location = new System.Drawing.Point(16, 60);
            this.cboUsuarios.Name = "cboUsuarios";
            this.cboUsuarios.Size = new System.Drawing.Size(349, 28);
            this.cboUsuarios.TabIndex = 6;
            this.cboUsuarios.Tag = "cboUsuarios";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(14, 35);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(141, 20);
            this.label2.TabIndex = 5;
            this.label2.Tag = "LabelUsuarios";
            this.label2.Text = "Todos los usuarios";
            // 
            // GestionUsuarios
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.GradientInactiveCaption;
            this.ClientSize = new System.Drawing.Size(897, 458);
            this.Controls.Add(this.cmdGuardarFamilia);
            this.Controls.Add(this.treeView1);
            this.Controls.Add(this.grpUsuarios);
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "GestionUsuarios";
            this.Tag = "FormUsuarios";
            this.Text = "Gestion de Usuarios";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.GestionUsuarios_FormClosing);
            this.Load += new System.EventHandler(this.GestionUsuarios_Load);
            this.HelpRequested += new System.Windows.Forms.HelpEventHandler(this.GestionUsuarios_HelpRequested);
            this.grpUsuarios.ResumeLayout(false);
            this.grpUsuarios.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button cmdGuardarFamilia;
        private System.Windows.Forms.TreeView treeView1;
        private System.Windows.Forms.GroupBox grpUsuarios;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.ComboBox cboFamilias;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.ComboBox cboPatentes;
        private System.Windows.Forms.Label LabelAgregarPatentes;
        private System.Windows.Forms.Button cmdConfigurar;
        private System.Windows.Forms.ComboBox cboUsuarios;
        private System.Windows.Forms.Label label2;
    }
}