using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace MySchoolManagementProject.Pages
{
    public partial class ProfilePage : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {
            ShowData();
            LoadImages();
            DataDisplayToEdit();
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

        }

        public void ShowData()
        {
            if (!this.IsPostBack)
            {
                var email = Context.User.Identity.GetUserName();

                string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    using (SqlCommand cmd = new SqlCommand("Select StudentID, StuName, StuEmail, RollNo, FatherName, MotherName, Gender, DateOfBirth, DateOfAdmission, ClassID, Address from Student Where StuEmail ='"+email+"'", con))
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.Connection = con;
                        con.Open();
                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {

                            while (dr.Read())
                            {
                                txtStudentID.Text = dr["StudentID"].ToString();
                                txtName.Text = dr["StuName"].ToString();
                                txtEmail.Text = dr["StuEmail"].ToString();
                                txtRollNo.Text = dr["RollNo"].ToString();
                                txtFatherName.Text = dr["FatherName"].ToString();
                                txtMotherName.Text = dr["MotherName"].ToString();
                                txtGender.Text = dr["Gender"].ToString();
                                txtDateOfBirth.Text = dr["DateOfBirth"].ToString();
                                txtDateOfAdmit.Text = dr["DateOfAdmission"].ToString();
                                txtClass.Text = dr["ClassID"].ToString();
                                txtAddress.Text = dr["Address"].ToString();
                            }
                        }
                        con.Close();
                    }
                }
            }
        }

        protected void View_Click(object sender, EventArgs e)
        {
            txtStuIdEdit.Text = txtStudentID.Text;
            txtNameEdit.Text = txtName.Text;
            txtFatehrNameEdit.Text = txtFatherName.Text;
            txtMotherNameEdit.Text = txtMotherName.Text;
            txtAddressEdit.Text = txtAddress.Text;
        }

        private void LoadImages()
        {
            var username = Context.User.Identity.GetUserName();

            string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("Select Picture from Student Where StuEmail = '"+ username + "'", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                GridView2.DataSource = rdr;
                GridView2.DataBind();
                con.Close();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand("Update Student Set StuName = @studentname, FatherName = @fathername, MotherName = @mothername, Address = @address Where StudentID = @studentid ", con);
            cmd.Parameters.AddWithValue("@studentid", txtStudentID.Text.Trim());
            cmd.Parameters.AddWithValue("@studentname", txtNameEdit.Text.Trim());
            cmd.Parameters.AddWithValue("@fathername", txtFatehrNameEdit.Text.Trim());
            cmd.Parameters.AddWithValue("@mothername", txtMotherNameEdit.Text.Trim());
            cmd.Parameters.AddWithValue("@address", txtAddressEdit.Text.Trim());
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void DataDisplayToEdit()
        {

        }
    }
}