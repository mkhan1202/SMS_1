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
    public partial class Add_Book_Info : Form
    {
        public Add_Book_Info()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var context = new STUDENTEntities();
            var tb = new BOOK_INFO();


            tb.BOOK_ID = Convert.ToInt32(txtID.Text.Trim());
            tb.BOOK_NAME = txtName.Text.Trim();
            tb.BOOK_TYPE_ID = Convert.ToInt32(cbxType.SelectedValue);
            tb.EDITION_ID = Convert.ToInt32(cbxEdition.SelectedValue);
            tb.LANGUAGE_ID = Convert.ToInt32(cbxLanguage.SelectedValue);
            tb.PPUBLISHER_ID = Convert.ToInt32(cbxPublisher.SelectedValue);
            tb.WRITER = txtWriter.Text.Trim();
            tb.PUBLISHING_YEAR = Convert.ToInt32(txtPublishYear.Text.Trim());
            tb.QUANTITY = Convert.ToInt32(txtQuantity.Text.Trim());
            tb.Isbn_No = Convert.ToInt32(txtISBN.Text.Trim());
            tb.Classification_No = Convert.ToDecimal(txtClassification.Text.Trim());
            tb.Source = Convert.ToInt32(cbxSource.SelectedValue);
            tb.Supplier = txtSupplier.Text.Trim();
            tb.Clue_Page = Convert.ToInt32(txtCluePage.Text.Trim());
            tb.Entry_Date = Convert.ToDateTime(dteEntryDate.Value);

            context.AddToBOOK_INFO(tb);
            context.SaveChanges();
            FillGridView();
            Clear();

        }

        private void Clear()
        {
            txtID.Text = txtName.Text = txtPublishYear.Text = txtQuantity.Text= txtSearchBook.Text = txtWriter.Text = null;
            cbxEdition = cbxType = cbxPublisher = cbxLanguage = null;
        }

        private void FillGridView()
        {
            var obj = new ManagementClass();
            var list = obj.GetAllBookInfo();
            dgvBookInfo.DataSource = list;
        }

        private void Add_Book_Info_Load(object sender, EventArgs e)
        {
            FillType();
            FillGridView();
            FillLanguage();
            FillPublisher();
            FillEdition();
            FillSource();
        }

        private void FillSource()
        {
            var mc = new ManagementClass();
            var list = mc.GetAllSource();

            cbxSource.ValueMember = "Source_Id";
            cbxSource.DisplayMember = "Source_Name";
            cbxSource.DataSource = list;
        }

        private void FillEdition()
        {
            var mc = new ManagementClass();
            var list = mc.GetAllEdition();

            cbxEdition.ValueMember = "Edition_Id";
            cbxEdition.DisplayMember = "Edition_Name";
            cbxEdition.DataSource = list;

        }

        private void FillPublisher()
        {
            var mc = new ManagementClass();
            var list = mc.GetAllPublisher();

            cbxPublisher.ValueMember = "Publisher_Id";
            cbxPublisher.DisplayMember = "Publisher_Name";
            cbxPublisher.DataSource = list;
        }

        private void FillLanguage()
        {
            var mc = new ManagementClass();
            var list = mc.GetAllLanguage();

            cbxLanguage.ValueMember = "Language_Id";
            cbxLanguage.DisplayMember = "Language_Name";
            cbxLanguage.DataSource = list;
        }

        private void FillType()
        {
            var gf = new ManagementClass();
            var list = gf.GetAllBookType();

            cbxType.ValueMember = "Type_Id";
            cbxType.DisplayMember = "Type_Name";
            cbxType.DataSource = list;
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            var std = new STUDENTEntities();

            var obj = std.BOOK_INFO.ToList().Where(x => x.BOOK_ID == Convert.ToInt32(txtSearchBook.Text.ToString())).FirstOrDefault();

            txtID.Text = obj.BOOK_ID.ToString();
            txtName.Text = obj.BOOK_NAME;
            txtWriter.Text = obj.WRITER;
            cbxType.SelectedValue = obj.BOOK_TYPE_ID;
            cbxPublisher.SelectedValue = obj.PPUBLISHER_ID;
            cbxEdition.SelectedValue = obj.EDITION_ID;
            cbxLanguage.SelectedValue = obj.LANGUAGE_ID;
            txtPublishYear.Text = obj.PUBLISHING_YEAR.ToString();
            txtQuantity.Text = obj.QUANTITY.ToString();
        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            var std = new STUDENTEntities();

            var tb = std.BOOK_INFO.ToList().Where(x => x.BOOK_ID == Convert.ToInt32(txtSearchBook.Text.ToString())).FirstOrDefault();
            tb.BOOK_ID = Convert.ToInt32(txtID.Text.Trim());
            tb.BOOK_NAME = txtName.Text.Trim();
            tb.BOOK_TYPE_ID = Convert.ToInt32(cbxType.SelectedValue);
            tb.EDITION_ID = Convert.ToInt32(cbxEdition.SelectedValue);
            tb.LANGUAGE_ID = Convert.ToInt32(cbxLanguage.SelectedValue);
            tb.PPUBLISHER_ID = Convert.ToInt32(cbxPublisher.SelectedValue);
            tb.WRITER = txtWriter.Text.Trim();
            tb.PUBLISHING_YEAR = Convert.ToInt32(txtPublishYear.Text.Trim());
            tb.QUANTITY = Convert.ToInt32(txtQuantity.Text.Trim());

            std.SaveChanges();
            MessageBox.Show("Data Updated Successfully", @"Successful", MessageBoxButtons.OK, MessageBoxIcon.None);
            FillGridView();
            Clear();

        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            var std = new STUDENTEntities();

            var obj = std.BOOK_INFO.ToList().Where(x => x.BOOK_ID == Convert.ToInt32(txtSearchBook.Text.ToString())).FirstOrDefault();
            std.DeleteObject(obj);
            std.SaveChanges();
            MessageBox.Show("Deleted");
            Clear();
            FillGridView();
        }

        



        
    }
}
