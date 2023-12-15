namespace UI
{
    partial class Serializacion
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
            this.ListBoxArea2 = new System.Windows.Forms.ListBox();
            this.buttonDeserealizarSeleccion = new System.Windows.Forms.Button();
            this.buttonSerializar = new System.Windows.Forms.Button();
            this._optTodo = new System.Windows.Forms.RadioButton();
            this._optSeleccionado = new System.Windows.Forms.RadioButton();
            this.ListBoxArea = new System.Windows.Forms.ListBox();
            this.buttonDeserealizarTodo = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.buttonLimpiar = new System.Windows.Forms.Button();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.button1 = new System.Windows.Forms.Button();
            this.radioSelecAuto = new System.Windows.Forms.RadioButton();
            this.buttonDeserealizarAutoSelec = new System.Windows.Forms.Button();
            this.buttonDeserealizarAutoTodo = new System.Windows.Forms.Button();
            this.radioTodoAuto = new System.Windows.Forms.RadioButton();
            this.listBoxAuto2 = new System.Windows.Forms.ListBox();
            this.listBoxAuto = new System.Windows.Forms.ListBox();
            this.buttonSerializarAuto = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // ListBoxArea2
            // 
            this.ListBoxArea2.FormattingEnabled = true;
            this.ListBoxArea2.ItemHeight = 20;
            this.ListBoxArea2.Location = new System.Drawing.Point(779, 29);
            this.ListBoxArea2.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.ListBoxArea2.Name = "ListBoxArea2";
            this.ListBoxArea2.Size = new System.Drawing.Size(312, 404);
            this.ListBoxArea2.TabIndex = 21;
            // 
            // buttonDeserealizarSeleccion
            // 
            this.buttonDeserealizarSeleccion.Location = new System.Drawing.Point(505, 353);
            this.buttonDeserealizarSeleccion.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.buttonDeserealizarSeleccion.Name = "buttonDeserealizarSeleccion";
            this.buttonDeserealizarSeleccion.Size = new System.Drawing.Size(237, 38);
            this.buttonDeserealizarSeleccion.TabIndex = 20;
            this.buttonDeserealizarSeleccion.Text = "Deserializar la selección";
            this.buttonDeserealizarSeleccion.UseVisualStyleBackColor = true;
            this.buttonDeserealizarSeleccion.Click += new System.EventHandler(this.buttonDeserealizar_Click);
            // 
            // buttonSerializar
            // 
            this.buttonSerializar.Location = new System.Drawing.Point(505, 29);
            this.buttonSerializar.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.buttonSerializar.Name = "buttonSerializar";
            this.buttonSerializar.Size = new System.Drawing.Size(237, 34);
            this.buttonSerializar.TabIndex = 19;
            this.buttonSerializar.Text = "Serializar";
            this.buttonSerializar.UseVisualStyleBackColor = true;
            this.buttonSerializar.Click += new System.EventHandler(this._cmdDeserializaPersona_Click);
            // 
            // _optTodo
            // 
            this._optTodo.AutoSize = true;
            this._optTodo.Checked = true;
            this._optTodo.Location = new System.Drawing.Point(8, 29);
            this._optTodo.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this._optTodo.Name = "_optTodo";
            this._optTodo.Size = new System.Drawing.Size(70, 24);
            this._optTodo.TabIndex = 18;
            this._optTodo.TabStop = true;
            this._optTodo.Text = "Todo";
            this._optTodo.UseVisualStyleBackColor = true;
            // 
            // _optSeleccionado
            // 
            this._optSeleccionado.AutoSize = true;
            this._optSeleccionado.Location = new System.Drawing.Point(8, 67);
            this._optSeleccionado.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this._optSeleccionado.Name = "_optSeleccionado";
            this._optSeleccionado.Size = new System.Drawing.Size(130, 24);
            this._optSeleccionado.TabIndex = 17;
            this._optSeleccionado.Text = "Seleccionado";
            this._optSeleccionado.UseVisualStyleBackColor = true;
            // 
            // ListBoxArea
            // 
            this.ListBoxArea.FormattingEnabled = true;
            this.ListBoxArea.ItemHeight = 20;
            this.ListBoxArea.Location = new System.Drawing.Point(156, 29);
            this.ListBoxArea.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.ListBoxArea.Name = "ListBoxArea";
            this.ListBoxArea.Size = new System.Drawing.Size(312, 404);
            this.ListBoxArea.TabIndex = 16;
            // 
            // buttonDeserealizarTodo
            // 
            this.buttonDeserealizarTodo.Location = new System.Drawing.Point(505, 311);
            this.buttonDeserealizarTodo.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.buttonDeserealizarTodo.Name = "buttonDeserealizarTodo";
            this.buttonDeserealizarTodo.Size = new System.Drawing.Size(237, 32);
            this.buttonDeserealizarTodo.TabIndex = 22;
            this.buttonDeserealizarTodo.Text = "Deserializar todo";
            this.buttonDeserealizarTodo.UseVisualStyleBackColor = true;
            this.buttonDeserealizarTodo.Click += new System.EventHandler(this.button1_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.buttonLimpiar);
            this.groupBox1.Controls.Add(this._optSeleccionado);
            this.groupBox1.Controls.Add(this.buttonDeserealizarSeleccion);
            this.groupBox1.Controls.Add(this.buttonDeserealizarTodo);
            this.groupBox1.Controls.Add(this._optTodo);
            this.groupBox1.Controls.Add(this.ListBoxArea2);
            this.groupBox1.Controls.Add(this.ListBoxArea);
            this.groupBox1.Controls.Add(this.buttonSerializar);
            this.groupBox1.Location = new System.Drawing.Point(13, 14);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.groupBox1.Size = new System.Drawing.Size(1115, 463);
            this.groupBox1.TabIndex = 59;
            this.groupBox1.TabStop = false;
            this.groupBox1.Tag = "groupBoxEtiqueta";
            this.groupBox1.Text = "Areas";
            this.groupBox1.Enter += new System.EventHandler(this.groupBox1_Enter);
            // 
            // buttonLimpiar
            // 
            this.buttonLimpiar.Location = new System.Drawing.Point(505, 401);
            this.buttonLimpiar.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.buttonLimpiar.Name = "buttonLimpiar";
            this.buttonLimpiar.Size = new System.Drawing.Size(237, 32);
            this.buttonLimpiar.TabIndex = 23;
            this.buttonLimpiar.Text = "Limpiar";
            this.buttonLimpiar.UseVisualStyleBackColor = true;
            this.buttonLimpiar.Click += new System.EventHandler(this.buttonLimpiar_Click);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.button1);
            this.groupBox2.Controls.Add(this.radioSelecAuto);
            this.groupBox2.Controls.Add(this.buttonDeserealizarAutoSelec);
            this.groupBox2.Controls.Add(this.buttonDeserealizarAutoTodo);
            this.groupBox2.Controls.Add(this.radioTodoAuto);
            this.groupBox2.Controls.Add(this.listBoxAuto2);
            this.groupBox2.Controls.Add(this.listBoxAuto);
            this.groupBox2.Controls.Add(this.buttonSerializarAuto);
            this.groupBox2.Location = new System.Drawing.Point(21, 501);
            this.groupBox2.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Padding = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.groupBox2.Size = new System.Drawing.Size(1115, 463);
            this.groupBox2.TabIndex = 60;
            this.groupBox2.TabStop = false;
            this.groupBox2.Tag = "groupBoxEtiqueta";
            this.groupBox2.Text = "Autorizante";
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(505, 401);
            this.button1.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(237, 32);
            this.button1.TabIndex = 23;
            this.button1.Text = "Limpiar";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click_1);
            // 
            // radioSelecAuto
            // 
            this.radioSelecAuto.AutoSize = true;
            this.radioSelecAuto.Location = new System.Drawing.Point(8, 67);
            this.radioSelecAuto.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.radioSelecAuto.Name = "radioSelecAuto";
            this.radioSelecAuto.Size = new System.Drawing.Size(130, 24);
            this.radioSelecAuto.TabIndex = 17;
            this.radioSelecAuto.Text = "Seleccionado";
            this.radioSelecAuto.UseVisualStyleBackColor = true;
            // 
            // buttonDeserealizarAutoSelec
            // 
            this.buttonDeserealizarAutoSelec.Location = new System.Drawing.Point(505, 353);
            this.buttonDeserealizarAutoSelec.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.buttonDeserealizarAutoSelec.Name = "buttonDeserealizarAutoSelec";
            this.buttonDeserealizarAutoSelec.Size = new System.Drawing.Size(237, 38);
            this.buttonDeserealizarAutoSelec.TabIndex = 20;
            this.buttonDeserealizarAutoSelec.Text = "Deserializar la selección";
            this.buttonDeserealizarAutoSelec.UseVisualStyleBackColor = true;
            this.buttonDeserealizarAutoSelec.Click += new System.EventHandler(this.buttonDeserealizarAutoSelec_Click);
            // 
            // buttonDeserealizarAutoTodo
            // 
            this.buttonDeserealizarAutoTodo.Location = new System.Drawing.Point(505, 311);
            this.buttonDeserealizarAutoTodo.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.buttonDeserealizarAutoTodo.Name = "buttonDeserealizarAutoTodo";
            this.buttonDeserealizarAutoTodo.Size = new System.Drawing.Size(237, 32);
            this.buttonDeserealizarAutoTodo.TabIndex = 22;
            this.buttonDeserealizarAutoTodo.Text = "Deserializar todo";
            this.buttonDeserealizarAutoTodo.UseVisualStyleBackColor = true;
            this.buttonDeserealizarAutoTodo.Click += new System.EventHandler(this.buttonDeserealizarAutoTodo_Click);
            // 
            // radioTodoAuto
            // 
            this.radioTodoAuto.AutoSize = true;
            this.radioTodoAuto.Checked = true;
            this.radioTodoAuto.Location = new System.Drawing.Point(8, 29);
            this.radioTodoAuto.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.radioTodoAuto.Name = "radioTodoAuto";
            this.radioTodoAuto.Size = new System.Drawing.Size(70, 24);
            this.radioTodoAuto.TabIndex = 18;
            this.radioTodoAuto.TabStop = true;
            this.radioTodoAuto.Text = "Todo";
            this.radioTodoAuto.UseVisualStyleBackColor = true;
            // 
            // listBoxAuto2
            // 
            this.listBoxAuto2.FormattingEnabled = true;
            this.listBoxAuto2.ItemHeight = 20;
            this.listBoxAuto2.Location = new System.Drawing.Point(779, 29);
            this.listBoxAuto2.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.listBoxAuto2.Name = "listBoxAuto2";
            this.listBoxAuto2.Size = new System.Drawing.Size(312, 404);
            this.listBoxAuto2.TabIndex = 21;
            // 
            // listBoxAuto
            // 
            this.listBoxAuto.FormattingEnabled = true;
            this.listBoxAuto.ItemHeight = 20;
            this.listBoxAuto.Location = new System.Drawing.Point(156, 29);
            this.listBoxAuto.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.listBoxAuto.Name = "listBoxAuto";
            this.listBoxAuto.Size = new System.Drawing.Size(312, 404);
            this.listBoxAuto.TabIndex = 16;
            // 
            // buttonSerializarAuto
            // 
            this.buttonSerializarAuto.Location = new System.Drawing.Point(505, 29);
            this.buttonSerializarAuto.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.buttonSerializarAuto.Name = "buttonSerializarAuto";
            this.buttonSerializarAuto.Size = new System.Drawing.Size(237, 34);
            this.buttonSerializarAuto.TabIndex = 19;
            this.buttonSerializarAuto.Text = "Serializar";
            this.buttonSerializarAuto.UseVisualStyleBackColor = true;
            this.buttonSerializarAuto.Click += new System.EventHandler(this.buttonSerializarAuto_Click);
            // 
            // Serializacion
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.GradientInactiveCaption;
            this.ClientSize = new System.Drawing.Size(1164, 1027);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Name = "Serializacion";
            this.Text = "Serializador";
            this.Load += new System.EventHandler(this.Serializacion_Load);
            this.HelpRequested += new System.Windows.Forms.HelpEventHandler(this.Serializacion_HelpRequested);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ListBox ListBoxArea2;
        private System.Windows.Forms.Button buttonDeserealizarSeleccion;
        private System.Windows.Forms.Button buttonSerializar;
        private System.Windows.Forms.RadioButton _optTodo;
        private System.Windows.Forms.RadioButton _optSeleccionado;
        private System.Windows.Forms.ListBox ListBoxArea;
        private System.Windows.Forms.Button buttonDeserealizarTodo;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button buttonLimpiar;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.RadioButton radioSelecAuto;
        private System.Windows.Forms.Button buttonDeserealizarAutoSelec;
        private System.Windows.Forms.Button buttonDeserealizarAutoTodo;
        private System.Windows.Forms.RadioButton radioTodoAuto;
        private System.Windows.Forms.ListBox listBoxAuto2;
        private System.Windows.Forms.ListBox listBoxAuto;
        private System.Windows.Forms.Button buttonSerializarAuto;
    }
}