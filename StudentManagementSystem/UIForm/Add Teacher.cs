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
    public partial class Add_Teacher : Form
    {
        public Add_Teacher()
        {
            InitializeComponent();
        }

        private void Add_Teacher_Load(object sender, EventArgs e)
        {
            FillDepartment();
            FillShift();
            FillDesignation();
            FillGender();
            FillBlood();
            FillType();
            FillGridView();
        }

        private void FillGridView()
        {
            var mc = new ManagementClass();
            var list = mc.GetAllTeacherInfo();
            dgvTeacherInfo.DataSource = list;
        }

        private void FillType()
        {
            var mc = new ManagementClass();
            var list = mc.GetAllType();

            cbxType.ValueMember = "Type_Id";
            cbxType.DisplayMember = "Type_Name";
            cbxType.DataSource = list;
        }

        private void FillBlood()
        {
            var obj = new ManagementClass();
            var list = obj.GetAllBloodGroup();

            cbxBlood.ValueMember = "Id";
            cbxBlood.DisplayMember = "BloodGroupName";
            cbxBlood.DataSource = list;
        }

        private void FillGender()
        {
            var obj = new ManagementClass();
            var list = obj.GetAllGendar();

            cbxGender.ValueMember = "SexId";
            cbxGender.DisplayMember = "SexType";
            cbxGender.DataSource = list;
        }

        private void FillDesignation()
        {
            var mc = new ManagementClass();
            var list = mc.GetAllDesignation();

            cbxDesignation.ValueMember = "Designation_Id";
            cbxDesignation.DisplayMember = "Designation_Name";
            cbxDesignation.DataSource = list;
        }

        private void FillShift()
        {
            var mc = new ManagementClass();
            var list = mc.GetAllShift();
            cbxShift.ValueMember = "ShiftId";
            cbxShift.DisplayMember = "Shift_Name";
            cbxShift.DataSource = list;
        }

        private void FillDepartment()
        {
            var mg = new ManagementClass();
            var list = mg.GetAllDepartment();

            cbxDepartment.ValueMember = "DepartmentId";
            cbxDepartment.DisplayMember = "DeptName";
            cbxDepartment.DataSource = list;
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            var contex = new STUDENTEntities();
            var tb = new TEACHER_INFO();

            tb.TEACHER_ID = Convert.ToInt32(txtId.Text.Trim());
            tb.NAME = txtName.Text.Trim();
            tb.DEPARTMENT_ID = Convert.ToInt32(cbxDepartment.SelectedValue);
            tb.SHIFT_ID = Convert.ToInt32(cbxShift.SelectedValue);
            tb.DESIGNATION_ID = Convert.ToInt32(cbxDesignation.SelectedValue);
            tb.TYPE_ID = Convert.ToInt32(cbxType.SelectedValue);
            tb.GENDER_ID = Convert.ToInt32(cbxGender.SelectedValue);
            tb.BLOOD_ID = Convert.ToInt32(cbxBlood.SelectedValue);
            tb.CONTACT_NO = txtContact.Text.Trim();
            tb.ADDRESS = txtAddress.Text.Trim();

            contex.AddToTEACHER_INFO(tb);
            contex.SaveChanges();
            FillGridView();
            MessageBox.Show("Data added successfuly!");
            ClearText();
        }

        private void ClearText()
        {
            txtId.Text = txtName.Text= txtContact.Text= txtAddress.Text=txtSearchId.Text= string.Empty;
            cbxType = cbxShift = cbxGender = cbxDesignation = cbxDepartment = cbxBlood = null;
        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            var std = new STUDENTEntities();

            var tb = std.TEACHER_INFO.ToList().Where(x => x.TEACHER_ID == Convert.ToInt32(txtSearchId.Text.ToString())).FirstOrDefault();

            tb.TEACHER_ID = Convert.ToInt32(txtId.Text.Trim());
            tb.NAME = txtName.Text.Trim();
            tb.DEPARTMENT_ID = Convert.ToInt32(cbxDepartment.SelectedValue);
            tb.SHIFT_ID = Convert.ToInt32(cbxShift.SelectedValue);
            tb.DESIGNATION_ID = Convert.ToInt32(cbxDesignation.SelectedValue);
            tb.TYPE_ID = Convert.ToInt32(cbxType.SelectedValue);
            tb.GENDER_ID = Convert.ToInt32(cbxGender.SelectedValue);
            tb.BLOOD_ID = Convert.ToInt32(cbxBlood.SelectedValue);
            tb.CONTACT_NO = txtContact.Text.Trim();
            tb.ADDRESS = txtAddress.Text.Trim();

            std.SaveChanges();
            MessageBox.Show("Data Updated Successfully", @"Successful", MessageBoxButtons.OK, MessageBoxIcon.None);
            FillGridView();
            ClearText();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var std = new STUDENTEntities();

            var obj = std.TEACHER_INFO.ToList().Where(x => x.TEACHER_ID == Convert.ToInt32(txtSearchId.Text.ToString())).FirstOrDefault();
            txtId.Text = obj.TEACHER_ID.ToString();
            txtName.Text = obj.NAME;
            txtAddress.Text = obj.ADDRESS;
            txtContact.Text = obj.CONTACT_NO;
            cbxType.SelectedValue = obj.TYPE_ID;
            cbxShift.SelectedValue = obj.SHIFT_ID;
            cbxGender.SelectedValue = obj.GENDER_ID;
            cbxDesignation.SelectedValue = obj.DESIGNATION_ID;
            cbxDepartment.SelectedValue = obj.DEPARTMENT_ID;
            cbxBlood.SelectedValue = obj.BLOOD_ID;
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            var std = new STUDENTEntities();

            var obj = std.TEACHER_INFO.ToList().Where(x => x.TEACHER_ID == Convert.ToInt32(txtSearchId.Text.ToString())).FirstOrDefault();

            std.DeleteObject(obj);
            std.SaveChanges();
            MessageBox.Show("Deleted");
            ClearText();
            FillGridView();
        }

        


    }
}
