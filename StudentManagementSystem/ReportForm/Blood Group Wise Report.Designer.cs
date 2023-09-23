namespace StudentManagementSystem
{
    partial class Blood_Group_Wise_Report
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
            this.cbxBlood = new System.Windows.Forms.ComboBox();
            this.btnShow = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(93, 68);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(135, 17);
            this.label1.TabIndex = 0;
            this.label1.Text = "Select Blood Group:";
            // 
            // cbxBlood
            // 
            this.cbxBlood.FormattingEnabled = true;
            this.cbxBlood.Location = new System.Drawing.Point(244, 65);
            this.cbxBlood.Name = "cbxBlood";
            this.cbxBlood.Size = new System.Drawing.Size(152, 24);
            this.cbxBlood.TabIndex = 1;
            // 
            // btnShow
            // 
            this.btnShow.Location = new System.Drawing.Point(244, 111);
            this.btnShow.Name = "btnShow";
            this.btnShow.Size = new System.Drawing.Size(148, 36);
            this.btnShow.TabIndex = 2;
            this.btnShow.Text = "Show Report";
            this.btnShow.UseVisualStyleBackColor = true;
            this.btnShow.Click += new System.EventHandler(this.btnShow_Click);
            // 
            // Blood_Group_Wise_Report
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(490, 214);
            this.Controls.Add(this.btnShow);
            this.Controls.Add(this.cbxBlood);
            this.Controls.Add(this.label1);
            this.Name = "Blood_Group_Wise_Report";
            this.Text = "Blood_Group_Wise_Report";
            this.Load += new System.EventHandler(this.Blood_Group_Wise_Report_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cbxBlood;
        private System.Windows.Forms.Button btnShow;
    }
}