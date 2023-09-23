using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using CrystalDecisions.CrystalReports.Engine;
using System.Windows.Forms;
using StudentManagementSystem.CrystalReport;

namespace StudentManagementSystem
{
    public partial class ShiftWiseStudentReport : Form
    {
        public ShiftWiseStudentReport()
        {
            InitializeComponent();
        }

        private void ShiftWiseStudentReport_Load(object sender, EventArgs e)
        {
            FillShift();
        }

        private void FillShift()
        {
            var m = new ManagementClass();
            var list = m.GetAllShift();

            var sft = new ShiftInfo();
            sft.ShiftId = 0;
            sft.Shift_Name = "All Shift";

            list.Add(sft);

            var slist= new List<ShiftInfo>();
            slist.AddRange(list);
            
            cbxShift.DisplayMember = "Shift_Name";
            cbxShift.ValueMember = "ShiftId";
            cbxShift.DataSource = slist;
        }
        private void btnShow_Click(object sender, EventArgs e)
        {

            var rpt = new ShiftAndSessionWiseStudentSearch();
            var reportViewr = new CrystalreportViewer();

          int  roll = Convert.ToInt32(txtId.Text.Trim());
          int  shift = Convert.ToInt32(cbxShift.SelectedValue);
           var _session = txtSession.Text.Trim();

            rpt.SetParameterValue("@ROLL",roll);
            rpt.SetParameterValue("@SFT",shift);
            rpt.SetParameterValue("@session",_session);

            reportViewr.crystalReportViewer1.ReportSource = rpt;
            reportViewr.Show();
        }
    }
}
