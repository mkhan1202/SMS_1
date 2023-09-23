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
    public partial class btnAdd : Form
    {
        public btnAdd()
        {
            InitializeComponent();
        }
        private void AddStudentInfo_Load(object sender, EventArgs e)
        {
            FillDepartment();
            FillGendar();
            FillSemester();
            FillBlood();
            //FillVexin();
            FillShift();
            FillGridview();
        }

        private void FillGridview()
        {
            var std = new ManagementClass();
            var lsit = std.GetAllStudentInformation();
            StudentDatagridview.DataSource = lsit;
        }
        private void FillShift()
        {
            var mc = new ManagementClass();
            var list = mc.GetAllShift();
            cbxShift.ValueMember = "ShiftId";
            cbxShift.DisplayMember = "Shift_Name";
            cbxShift.DataSource = list;
        }
    
        private void FillBlood()
        {
            var obj = new ManagementClass();
            var list = obj.GetAllBloodGroup();

            cbxBlood.ValueMember = "Id";
            cbxBlood.DisplayMember = "BloodGroupName";
            cbxBlood.DataSource = list;
        }
        private void FillSemester()
        {
            var obj = new ManagementClass();
            var list = obj.GetAllSemester();

            cbxSemester.ValueMember = "Id";
            cbxSemester.DisplayMember = "Semester";
            cbxSemester.DataSource = list;
        }
        private void FillGendar()
        {
            var obj = new ManagementClass();
            var list = obj.GetAllGendar();

            cbxGendar.ValueMember = "SexId";
            cbxGendar.DisplayMember = "SexType";
            cbxGendar.DataSource = list;
        }
        private void FillDepartment()
        {
            var obj = new ManagementClass();
            var list = obj.GetAllDepartment();

            cbxDepartment.ValueMember = "DepartmentId";
            cbxDepartment.DisplayMember = "DeptName";
            cbxDepartment.DataSource = list;

        }
        private void AddStudent_Click(object sender, EventArgs e)
        {
              var context = new STUDENTEntities();
          
            var obj = new STUDENTINFO();


            obj.STUDENTID = Convert.ToInt32(txtStudentId.Text.Trim());
            obj.NAME = txtName.Text.Trim();
            obj.DeptId = Convert.ToInt32(cbxDepartment.SelectedValue);
            obj.ShiftId = Convert.ToInt32(cbxShift.SelectedValue);
            obj.SESSION = txtSession.Text.Trim();
            obj.GendarId = Convert.ToInt32(cbxGendar.SelectedValue);
            obj.BloodId = Convert.ToInt32(cbxBlood.SelectedValue);
            //obj.VaccineID = Convert.ToInt32(cbxVaccine.SelectedValue);
            obj.ADDRESS = txtAddress.Text.Trim();
            obj.Contact = Convert.ToInt32(txtContact.Text);
            obj.DateOfBirth = Convert.ToDateTime(dteDateofBirth.Value);
            obj.SemesterId = Convert.ToInt32(cbxSemester.SelectedValue);

            context.AddToSTUDENTINFOes(obj);
            context.SaveChanges();
            MessageBox.Show("Data Saved Successfully!!");
            ClearTextBox();
            FillGridview();
           }

        private void ClearTextBox()
        {
            txtSession.Text = string.Empty;
            txtStudentId.Text = String.Empty;
            txtName.Text = null;
            txtContact.Text = txtAddress.Text = string.Empty;
            cbxBlood.Text = cbxDepartment.Text = cbxGendar.Text = cbxSemester.Text = cbxShift.Text = string.Empty;
        }

        private void btnEdit_Click(object sender, EventArgs e)
        {
            var std = new STUDENTEntities();
            var obj = std.STUDENTINFOes.ToList().Where(x => x.STUDENTID == Convert.ToInt32(txtSearch.Text.ToString())).FirstOrDefault();

            obj.STUDENTID = Convert.ToInt32(txtStudentId.Text.Trim());
            obj.NAME = txtName.Text.Trim();
            obj.DeptId = Convert.ToInt32(cbxDepartment.SelectedValue);
            obj.ShiftId = Convert.ToInt32(cbxShift.SelectedValue);
            obj.SESSION = txtSession.Text.Trim();
            obj.GendarId = Convert.ToInt32(cbxGendar.SelectedValue);
            obj.BloodId = Convert.ToInt32(cbxBlood.SelectedValue);
            //obj.VaccineID = Convert.ToInt32(cbxVaccine.SelectedValue);
            obj.ADDRESS = txtAddress.Text.Trim();
            obj.Contact = Convert.ToInt32(txtContact.Text);
            obj.DateOfBirth = Convert.ToDateTime(dteDateofBirth.Value);
            obj.SemesterId = Convert.ToInt32(cbxSemester.SelectedValue);


            //std.ObjectStateManager(obj);
            //std.AddToSTUDENTINFOes(obj);
            std.SaveChanges();
            MessageBox.Show("Data updated success");
            ClearTextBox();
            FillGridview();

        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            var std = new STUDENTEntities();
            
      var ob = std.STUDENTINFOes.ToList().Where(x => x.STUDENTID == Convert.ToInt32(txtSearch.Text.ToString())).FirstOrDefault();
      txtStudentId.Text = ob.STUDENTID.ToString();
            txtName.Text = ob.NAME;
            cbxDepartment.SelectedValue = ob.DeptId.ToString();
            cbxShift.SelectedValue = ob.ShiftId.ToString();
            txtSession.Text = ob.SESSION;
            cbxGendar.SelectedValue = ob.GendarId.ToString();
            cbxBlood.SelectedValue = ob.BloodId.ToString();
            txtAddress.Text = ob.ADDRESS;
            txtContact.Text = ob.Contact.ToString();
            dteDateofBirth.Value = Convert.ToDateTime(ob.DateOfBirth);
            cbxSemester.SelectedValue = ob.SemesterId.ToString();

        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            var std = new STUDENTEntities();

            var obj = std.STUDENTINFOes.ToList().Where(x => x.STUDENTID == Convert.ToInt32(txtSearch.Text.ToString())).FirstOrDefault();
            std.DeleteObject(obj);
            std.SaveChanges();
            MessageBox.Show(@"Deleted");
            ClearTextBox();
            FillGridview();

        }
        }
    }

