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
    public partial class NameWiseStudentSearch : Form
    {
        public NameWiseStudentSearch()
        {
            InitializeComponent();
        }

        private void NameWiseStudentSearch_Load(object sender, EventArgs e)
        {
            FillGridview();
        }

        private void FillGridview()
        {
            var std = new ManagementClass();
            var lsit = std.GetAllStudentInformation();
             dataGridView1.DataSource = lsit;
        }

        private void button1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(txtStudentId.Text.Trim());
             string name = txtName.Text.Trim();
              var mc = new ManagementClass();
            var list = mc.GetAllStudentRecord(id,name);
            dataGridView1.DataSource = list;
            
        }

        //private void button1_Click(object sender, EventArgs e)
        //{
        //    int id = Convert.ToInt32(txtStudentId.Text.Trim());
        //    string name = txtName.Text.Trim();

        //    var mc = new ManagementClass();
        //    var list = mc.getAllStudent(int id,string name);
        //    dataGridView1.DataSource = list;
        //    FillGridview();
        //}
    }
}
