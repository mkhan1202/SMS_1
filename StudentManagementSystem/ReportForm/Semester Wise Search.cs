using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using StudentManagementSystem.CrystalReport;

namespace StudentManagementSystem
{
    public partial class Semester_Wise_Search : Form
    {
        public Semester_Wise_Search()
        {
            InitializeComponent();
        }

        private void Semester_Wise_Search_Load(object sender, EventArgs e)
        {
            FillSemester();

        }

        private void FillSemester()
        {
            var obj = new ManagementClass();
            var list = obj.GetAllSemester();

            var sem = new SemesterInfo();
            sem.Id = 0;
            sem.Semester = "All Semester";

            list.Add(sem);

            var smlst = new List<SemesterInfo>();
            smlst.AddRange(list);

            cbxSemester.ValueMember = "Id";
            cbxSemester.DisplayMember = "Semester";
            cbxSemester.DataSource = smlst;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var rpt = new Semester_Report();
            var report = new CrystalreportViewer();

            int roll = Convert.ToInt32(txtRoll.Text.Trim());
            int sem = Convert.ToInt32(cbxSemester.SelectedValue);

            rpt.SetParameterValue("@ROLL", roll);
            rpt.SetParameterValue("@SM", sem);
            report.crystalReportViewer1.ReportSource = rpt;
            report.Show();
        }
    }
}
