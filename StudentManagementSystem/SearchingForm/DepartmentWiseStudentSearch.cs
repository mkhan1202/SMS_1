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
    public partial class DepartmentWiseStudentSearch : Form
    {
        public DepartmentWiseStudentSearch()
        {
            InitializeComponent();
        }

        private void DepartmentWiseStudentSearch_Load(object sender, EventArgs e)
        {
            FillDepartment();
            FillGrid();
        }

        private void FillGrid()
        {
            var std = new STUDENTEntities();
            var lsit = std.SP_STUDENTGRIDVIEW();
            dataGridView1.DataSource = lsit;
        }

        private void FillDepartment()
        {
            var obj = new ManagementClass();
            var list = obj.GetAllDepartment();

            cbxDepartment.ValueMember = "DepartmentId";
            cbxDepartment.DisplayMember = "DeptName";
            cbxDepartment.DataSource = list;
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(txtRoll.Text.Trim());
            int did = Convert.ToInt32(cbxDepartment.SelectedValue);

            var obj = new ManagementClass();
            var list = obj.GetAllStudentByDepartmentId(id,did);
            dataGridView1.DataSource = list;

        }
    }
}
