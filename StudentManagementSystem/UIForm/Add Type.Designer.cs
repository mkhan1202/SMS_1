namespace StudentManagementSystem.UIForm
{
    partial class Add_Type
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
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txtTypeId = new System.Windows.Forms.TextBox();
            this.txtTypeName = new System.Windows.Forms.TextBox();
            this.button1 = new System.Windows.Forms.Button();
            this.dgvBookType = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.dgvBookType)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(40, 52);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(61, 17);
            this.label1.TabIndex = 0;
            this.label1.Text = "Type ID:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(40, 115);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(85, 17);
            this.label2.TabIndex = 0;
            this.label2.Text = "Type Name:";
            // 
            // txtTypeId
            // 
            this.txtTypeId.Location = new System.Drawing.Point(131, 52);
            this.txtTypeId.Name = "txtTypeId";
            this.txtTypeId.Size = new System.Drawing.Size(193, 22);
            this.txtTypeId.TabIndex = 1;
            // 
            // txtTypeName
            // 
            this.txtTypeName.Location = new System.Drawing.Point(131, 110);
            this.txtTypeName.Name = "txtTypeName";
            this.txtTypeName.Size = new System.Drawing.Size(193, 22);
            this.txtTypeName.TabIndex = 1;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(373, 71);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(95, 35);
            this.button1.TabIndex = 2;
            this.button1.Text = "ADD";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // dgvBookType
            // 
            this.dgvBookType.BackgroundColor = System.Drawing.SystemColors.ButtonFace;
            this.dgvBookType.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.dgvBookType.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvBookType.Location = new System.Drawing.Point(115, 184);
            this.dgvBookType.Name = "dgvBookType";
            this.dgvBookType.RowTemplate.Height = 24;
            this.dgvBookType.Size = new System.Drawing.Size(284, 298);
            this.dgvBookType.TabIndex = 3;
            // 
            // Add_Type
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(515, 553);
            this.Controls.Add(this.dgvBookType);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.txtTypeName);
            this.Controls.Add(this.txtTypeId);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "Add_Type";
            this.Text = "Add_Type";
            this.Load += new System.EventHandler(this.Add_Type_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvBookType)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtTypeId;
        private System.Windows.Forms.TextBox txtTypeName;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.DataGridView dgvBookType;
    }
}