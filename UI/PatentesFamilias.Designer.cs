﻿namespace UI
{
    partial class PatentesFamilias
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
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.cmdGuardarFamilia = new System.Windows.Forms.Button();
            this.treeConfigurarFamilia = new System.Windows.Forms.TreeView();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.cmdSeleccionar = new System.Windows.Forms.Button();
            this.cmdAgregarFamilia = new System.Windows.Forms.Button();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.button1 = new System.Windows.Forms.Button();
            this.txtNombreFamilia = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.cboFamilias = new System.Windows.Forms.ComboBox();
            this.label4 = new System.Windows.Forms.Label();
            this.grpPatentes = new System.Windows.Forms.GroupBox();
            this.cmdAgregarPatente = new System.Windows.Forms.Button();
            this.cboPatentes = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnGuardarPatente = new System.Windows.Forms.Button();
            this.txtNombrePatente = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.cboPermisos = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox4.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.grpPatentes.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox4
            // 
            this.groupBox4.Controls.Add(this.cmdGuardarFamilia);
            this.groupBox4.Controls.Add(this.treeConfigurarFamilia);
            this.groupBox4.Location = new System.Drawing.Point(822, 17);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Size = new System.Drawing.Size(435, 383);
            this.groupBox4.TabIndex = 9;
            this.groupBox4.TabStop = false;
            this.groupBox4.Tag = "gpConfFamil";
            this.groupBox4.Text = "Configurar Familia";
            // 
            // cmdGuardarFamilia
            // 
            this.cmdGuardarFamilia.Location = new System.Drawing.Point(16, 337);
            this.cmdGuardarFamilia.Name = "cmdGuardarFamilia";
            this.cmdGuardarFamilia.Size = new System.Drawing.Size(132, 46);
            this.cmdGuardarFamilia.TabIndex = 1;
            this.cmdGuardarFamilia.Tag = "btGuardarFam";
            this.cmdGuardarFamilia.Text = "Guardar familia";
            this.cmdGuardarFamilia.UseVisualStyleBackColor = true;
            this.cmdGuardarFamilia.Click += new System.EventHandler(this.cmdGuardarFamilia_Click);
            // 
            // treeConfigurarFamilia
            // 
            this.treeConfigurarFamilia.Location = new System.Drawing.Point(16, 35);
            this.treeConfigurarFamilia.Name = "treeConfigurarFamilia";
            this.treeConfigurarFamilia.Size = new System.Drawing.Size(391, 293);
            this.treeConfigurarFamilia.TabIndex = 0;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.cmdSeleccionar);
            this.groupBox2.Controls.Add(this.cmdAgregarFamilia);
            this.groupBox2.Controls.Add(this.groupBox3);
            this.groupBox2.Controls.Add(this.cboFamilias);
            this.groupBox2.Controls.Add(this.label4);
            this.groupBox2.Location = new System.Drawing.Point(416, 17);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(387, 383);
            this.groupBox2.TabIndex = 8;
            this.groupBox2.TabStop = false;
            this.groupBox2.Tag = "GrpFamilias";
            this.groupBox2.Text = "Familias";
            // 
            // cmdSeleccionar
            // 
            this.cmdSeleccionar.Location = new System.Drawing.Point(21, 97);
            this.cmdSeleccionar.Name = "cmdSeleccionar";
            this.cmdSeleccionar.Size = new System.Drawing.Size(148, 49);
            this.cmdSeleccionar.TabIndex = 11;
            this.cmdSeleccionar.Tag = "BtPatentesConf";
            this.cmdSeleccionar.Text = "Configurar";
            this.cmdSeleccionar.UseVisualStyleBackColor = true;
            this.cmdSeleccionar.Click += new System.EventHandler(this.cmdSeleccionar_Click);
            // 
            // cmdAgregarFamilia
            // 
            this.cmdAgregarFamilia.Location = new System.Drawing.Point(176, 97);
            this.cmdAgregarFamilia.Name = "cmdAgregarFamilia";
            this.cmdAgregarFamilia.Size = new System.Drawing.Size(148, 49);
            this.cmdAgregarFamilia.TabIndex = 10;
            this.cmdAgregarFamilia.Tag = "BotFamiliasAgregar";
            this.cmdAgregarFamilia.Text = "Agregar >> ";
            this.cmdAgregarFamilia.UseVisualStyleBackColor = true;
            this.cmdAgregarFamilia.Click += new System.EventHandler(this.cmdAgregarFamilia_Click);
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.button1);
            this.groupBox3.Controls.Add(this.txtNombreFamilia);
            this.groupBox3.Controls.Add(this.label5);
            this.groupBox3.Location = new System.Drawing.Point(22, 152);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(348, 143);
            this.groupBox3.TabIndex = 9;
            this.groupBox3.TabStop = false;
            this.groupBox3.Tag = "gpNuevaFam";
            this.groupBox3.Text = "Nueva";
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(16, 94);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(152, 43);
            this.button1.TabIndex = 4;
            this.button1.Tag = "btGuardarFam";
            this.button1.Text = "Guardar Familia";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // txtNombreFamilia
            // 
            this.txtNombreFamilia.Location = new System.Drawing.Point(16, 57);
            this.txtNombreFamilia.Name = "txtNombreFamilia";
            this.txtNombreFamilia.Size = new System.Drawing.Size(259, 26);
            this.txtNombreFamilia.TabIndex = 3;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(14, 31);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(65, 20);
            this.label5.TabIndex = 2;
            this.label5.Tag = "lbNombreFam";
            this.label5.Text = "Nombre";
            // 
            // cboFamilias
            // 
            this.cboFamilias.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboFamilias.FormattingEnabled = true;
            this.cboFamilias.Location = new System.Drawing.Point(22, 60);
            this.cboFamilias.Name = "cboFamilias";
            this.cboFamilias.Size = new System.Drawing.Size(349, 28);
            this.cboFamilias.TabIndex = 8;
            this.cboFamilias.SelectedIndexChanged += new System.EventHandler(this.cboFamilias_SelectedIndexChanged);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(20, 35);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(134, 20);
            this.label4.TabIndex = 7;
            this.label4.Tag = "LabTodasFamilias";
            this.label4.Text = "Todas las familias";
            // 
            // grpPatentes
            // 
            this.grpPatentes.Controls.Add(this.cmdAgregarPatente);
            this.grpPatentes.Controls.Add(this.cboPatentes);
            this.grpPatentes.Controls.Add(this.label2);
            this.grpPatentes.Controls.Add(this.groupBox1);
            this.grpPatentes.Location = new System.Drawing.Point(12, 17);
            this.grpPatentes.Name = "grpPatentes";
            this.grpPatentes.Size = new System.Drawing.Size(384, 383);
            this.grpPatentes.TabIndex = 7;
            this.grpPatentes.TabStop = false;
            this.grpPatentes.Tag = "gpPatentes";
            this.grpPatentes.Text = "Patentes";
            // 
            // cmdAgregarPatente
            // 
            this.cmdAgregarPatente.Location = new System.Drawing.Point(16, 97);
            this.cmdAgregarPatente.Name = "cmdAgregarPatente";
            this.cmdAgregarPatente.Size = new System.Drawing.Size(120, 49);
            this.cmdAgregarPatente.TabIndex = 8;
            this.cmdAgregarPatente.Tag = "BtAgregarPatente";
            this.cmdAgregarPatente.Text = "Agregar >> ";
            this.cmdAgregarPatente.UseVisualStyleBackColor = true;
            this.cmdAgregarPatente.Click += new System.EventHandler(this.cmdAgregarPatente_Click);
            // 
            // cboPatentes
            // 
            this.cboPatentes.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboPatentes.FormattingEnabled = true;
            this.cboPatentes.Location = new System.Drawing.Point(16, 60);
            this.cboPatentes.Name = "cboPatentes";
            this.cboPatentes.Size = new System.Drawing.Size(349, 28);
            this.cboPatentes.TabIndex = 6;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(14, 35);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(144, 20);
            this.label2.TabIndex = 5;
            this.label2.Tag = "LblTodasPatentes";
            this.label2.Text = "Todas las patentes";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btnGuardarPatente);
            this.groupBox1.Controls.Add(this.txtNombrePatente);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.cboPermisos);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Location = new System.Drawing.Point(16, 152);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(348, 212);
            this.groupBox1.TabIndex = 7;
            this.groupBox1.TabStop = false;
            this.groupBox1.Tag = "gpNueva";
            this.groupBox1.Text = "Nueva";
            // 
            // btnGuardarPatente
            // 
            this.btnGuardarPatente.Location = new System.Drawing.Point(24, 166);
            this.btnGuardarPatente.Name = "btnGuardarPatente";
            this.btnGuardarPatente.Size = new System.Drawing.Size(178, 40);
            this.btnGuardarPatente.TabIndex = 4;
            this.btnGuardarPatente.Tag = "btnGuardarPat";
            this.btnGuardarPatente.Text = "Guardar Patente";
            this.btnGuardarPatente.UseVisualStyleBackColor = true;
            this.btnGuardarPatente.Click += new System.EventHandler(this.btnGuardarPatente_Click);
            // 
            // txtNombrePatente
            // 
            this.txtNombrePatente.Location = new System.Drawing.Point(24, 129);
            this.txtNombrePatente.Name = "txtNombrePatente";
            this.txtNombrePatente.Size = new System.Drawing.Size(259, 26);
            this.txtNombrePatente.TabIndex = 3;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(21, 103);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(65, 20);
            this.label3.TabIndex = 2;
            this.label3.Tag = "blNombrePate";
            this.label3.Text = "Nombre";
            // 
            // cboPermisos
            // 
            this.cboPermisos.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboPermisos.FormattingEnabled = true;
            this.cboPermisos.Location = new System.Drawing.Point(24, 55);
            this.cboPermisos.Name = "cboPermisos";
            this.cboPermisos.Size = new System.Drawing.Size(259, 28);
            this.cboPermisos.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(21, 31);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(66, 20);
            this.label1.TabIndex = 0;
            this.label1.Tag = "lblPerm";
            this.label1.Text = "Permiso";
            // 
            // PatentesFamilias
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.GradientInactiveCaption;
            this.ClientSize = new System.Drawing.Size(1280, 422);
            this.Controls.Add(this.groupBox4);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.grpPatentes);
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "PatentesFamilias";
            this.Tag = "FormGestPatentesFamilias";
            this.Text = "Gestión de Patentes y Familias";
            this.Load += new System.EventHandler(this.PatentesFamilias_Load);
            this.HelpRequested += new System.Windows.Forms.HelpEventHandler(this.PatentesFamilias_HelpRequested);
            this.groupBox4.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.grpPatentes.ResumeLayout(false);
            this.grpPatentes.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.Button cmdGuardarFamilia;
        private System.Windows.Forms.TreeView treeConfigurarFamilia;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button cmdSeleccionar;
        private System.Windows.Forms.Button cmdAgregarFamilia;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.TextBox txtNombreFamilia;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.ComboBox cboFamilias;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.GroupBox grpPatentes;
        private System.Windows.Forms.Button cmdAgregarPatente;
        private System.Windows.Forms.ComboBox cboPatentes;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btnGuardarPatente;
        private System.Windows.Forms.TextBox txtNombrePatente;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox cboPermisos;
        private System.Windows.Forms.Label label1;
    }
}