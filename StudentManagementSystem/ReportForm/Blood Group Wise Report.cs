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
    public partial class Blood_Group_Wise_Report : Form
    {
        public Blood_Group_Wise_Report()
        {
            InitializeComponent();
        }

        private void Blood_Group_Wise_Report_Load(object sender, EventArgs e)
        {
            FillBlood();
        }

        private void FillBlood()
        {
            var obj = new ManagementClass();
            var list = obj.GetAllBloodGroup();

            var bld = new BloodInfo();
            bld.Id = 0;
            bld.BloodGroupName = "All Group";

            

            var blist = new List<BloodInfo>();
            blist.Add(bld);
            blist.AddRange(list);

            cbxBlood.ValueMember = "Id";
            cbxBlood.DisplayMember = "BloodGroupName";
            cbxBlood.DataSource = blist;
        }

        private void btnShow_Click(object sender, EventArgs e)
        {
            var rpt = new Blood_Report();
            var reportViewer = new CrystalreportViewer();


            int bid = Convert.ToInt32(cbxBlood.SelectedValue);

            rpt.SetParameterValue("@Blood",bid);
            reportViewer.crystalReportViewer1.ReportSource = rpt;
            reportViewer.ShowDialog();
        }
    }
}
