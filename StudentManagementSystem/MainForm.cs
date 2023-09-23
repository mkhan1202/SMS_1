using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using StudentManagementSystem.UIForm;

namespace StudentManagementSystem
{
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();
        }

        private void addStudentInfoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var obj = new btnAdd();
            obj.ShowDialog();
        }

        private void addDepartmentToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var obj = new AddDepartmentInfo();
            obj.ShowDialog();
        }

        private void searchStudentByStudentIdToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void searchStudentByShiftwiseToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var obj = new ShiftWiseStudentReport();
            obj.ShowDialog();
        }

        private void searchStudentByGendarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var obj = new Gender_Wise_Search();
            obj.ShowDialog();

            
        }

        private void searchStudentBySemesterToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var obj = new Semester_Wise_Search();
            obj.ShowDialog();
        }

        private void searchByBloodGroupToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var obj = new Blood_Group_Wise_Report();
            obj.ShowDialog();
        }

        private void nameWiseStudentSearchToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var obj = new NameWiseStudentSearch();
            obj.ShowDialog();
        }

        private void departmentWiseStudentSearchToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var obj = new DepartmentWiseStudentSearch();
            obj.ShowDialog();
        }

        private void addTeacherInfoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var obj = new Add_Teacher();
            obj.ShowDialog();
        }

        private void addBookInfoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var obj = new Add_Book_Info();
            obj.ShowDialog();
            var mf = new MainForm();
            mf.Hide();
        }

        private void addTypeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var obj = new Add_Type();
            obj.ShowDialog();
        }

        private void MainForm_Load(object sender, EventArgs e)
        {
            
        }

        
    }
}
