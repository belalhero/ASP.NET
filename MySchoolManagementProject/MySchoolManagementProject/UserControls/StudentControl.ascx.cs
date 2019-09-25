using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

using System.Data.SqlClient;
using System.Configuration;

using System.Web.UI.HtmlControls;

namespace MySchoolManagementProject.UserControls
{
    public partial class StudentControl : System.Web.UI.UserControl
    {
        string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            Display();
        }
        
        protected void btnSave_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO Student(StuName, RollNo, FatherName, MotherName, Gender, DateOfBirth, ClassID, Address) VALUES (@name, @rollno, @fathername, @mothername, @gender, @dateofbirth, @class, @address)", con);
            cmd.Parameters.AddWithValue("@name", txtStudentName.Text.Trim());
            cmd.Parameters.AddWithValue("@rollno", txtRollNo.Text.Trim());
            cmd.Parameters.AddWithValue("@fathername", txtFatherName.Text.Trim());
            cmd.Parameters.AddWithValue("@mothername", txtMotherName.Text.Trim());
            cmd.Parameters.AddWithValue("@gender", ddlGender.Text.Trim());
            cmd.Parameters.AddWithValue("@dateofbirth", txtDateOfBirth.Text.Trim());
            cmd.Parameters.AddWithValue("@class", ddlClass.Text.Trim());
            cmd.Parameters.AddWithValue("@address", txtAddress.Text.Trim());
            cmd.ExecuteNonQuery();
            con.Close();

            txtStudentName.Text = "";
            txtRollNo.Text = "";
            txtFatherName.Text = "";
            txtMotherName.Text = "";
            txtDateOfBirth.Text = "";
            txtAddress.Text = "";

            Display();
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            Display();
        }

        public void Display()
        {
            StringBuilder table = new StringBuilder();
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Student", con);
            cmd.CommandText = "Select * from Student";
            cmd.Connection = con;
            SqlDataReader dr = cmd.ExecuteReader();
            HtmlTableRow tRow = new HtmlTableRow();
            table.Append("<table runat='server'style='width: 100 %';><tr><th>Student ID</th><th>Name</th><th>Roll No</th><th>Father Name</th><th>Mother Name</th><th>Gender</th><th>Date of Birth</th><th>Date of Admission</th><th>Class</th><th>Address</th></tr>");
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    table.Append("<tr>");
                    table.Append("<td>" + dr[0] + "</td>"+ "<td>" + dr[1] + "</td>"+ "<td>" + dr[2] + "</td>"+ "<td>" + dr[3] + "</td>"+ "<td>" + dr[4] + "</td>"+ "<td>" + dr[5] + "</td>"+ "<td>" + dr[6] + "</td>"+ "<td>" + dr[7] + "</td>"+ "<td>" + dr[8] + "</td>"+ "<td>" + dr[9] + "</td>"+ "</tr>");
                }
            }
            table.Append("</table>");
            dr.Close();
            Label1.Text = table.ToString();
            con.Close();
        }
    }
}