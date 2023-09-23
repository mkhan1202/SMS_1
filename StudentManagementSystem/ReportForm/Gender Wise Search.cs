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
    public partial class Gender_Wise_Search : Form
    {
        public Gender_Wise_Search()
        {
            InitializeComponent();
        }

        private void Gender_Wise_Search_Load(object sender, EventArgs e)
        {
            FillGender();
        }

        private void FillGender()
        {
            var obj = new ManagementClass();
            var list= obj.GetAllGendar();

            var gen = new SexInfo();
            gen.SexId = 0;
            gen.SexType = "All Gendar";

            list.Add(gen);

            var glist = new List<SexInfo>();
            glist.AddRange(list);
            

            cbxGender.DisplayMember = "SexType";
            cbxGender.ValueMember = "SexId";
            cbxGender.DataSource = glist;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var rpt = new Gender_Report();
            var reportviewer = new CrystalreportViewer();

            int roll = Convert.ToInt32(txtRoll.Text.Trim());
            int gid = Convert.ToInt32(cbxGender.SelectedValue);
            rpt.SetParameterValue("@ROLL", roll);
            rpt.SetParameterValue("@GID", gid);

            reportviewer.crystalReportViewer1.ReportSource = rpt;
            reportviewer.Show();
        }
    }
}
