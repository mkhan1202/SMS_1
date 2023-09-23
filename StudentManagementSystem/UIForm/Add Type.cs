using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace StudentManagementSystem.UIForm
{
    public partial class Add_Type : Form
    {
        public Add_Type()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var std = new STUDENTEntities();
            var tb = new Book_Type_Info();

            tb.Type_Id = Convert.ToInt32(txtTypeId.Text.Trim());
            tb.Type_Name = txtTypeName.Text.Trim();

            std.AddToBook_Type_Info(tb);
            std.SaveChanges();
            MessageBox.Show("Type Added Successfully", @"Successful");
            ClearTxt();
            //FillDataGrid();
        }

        //private void FillDataGrid()
        //{
        //    var mc = new ManagementClass();
        //    var list = mc.GetAllBookTypeData();
        //    dgvBookType.DataSource = list;
        //}

        private void ClearTxt()
        {
            txtTypeId.Text = txtTypeName.Text = null;
        }

        private void Add_Type_Load(object sender, EventArgs e)
        {
            //FillDataGrid();
        }
    }
}
