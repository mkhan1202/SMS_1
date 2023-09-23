using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace StudentManagementSystem
{
    public partial class LoginForm : Form
    {
        public LoginForm()
        {
            InitializeComponent();
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            Close();
            //this.Close();
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            using (var contex = new STUDENTEntities())
            {
                if (string.IsNullOrEmpty(txtUsername.Text) || string.IsNullOrEmpty(txtPassword.Text))
                {
                    MessageBox.Show("Please enter valid password and user name","message");
                    return;
                }

                try
                {
                    var q = from log in contex.UserLogins
                            where log.USERNAME == txtUsername.Text && log.PASSWORD == txtPassword.Text
                            select log;

                    if (q.SingleOrDefault() != null)
                    {
                        MessageBox.Show("Login Success", @"Message", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        txtPassword.Text = txtUsername.Text = string.Empty;
                        var obj = new MainForm();
                        obj.ShowDialog();
                        //lblMgs.Text = "Login Successful";
                        //timer1.Start();
                        
                    }
                    else
                    {
                        MessageBox.Show("Please enter correct format",@"message",MessageBoxButtons.RetryCancel);
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }

        private void LoginForm_Load(object sender, EventArgs e)
        {
            txtUsername.Focus();
        }

        //private void timer1_Tick(object sender, EventArgs e)
        //{
        //    lblMgs.Text = null;
            
        //}

        
    }
}
