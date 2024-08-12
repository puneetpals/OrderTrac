using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeInfo
{
    public partial class AddEmployee : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataReader reader = null;
            String Constrong = System.Configuration.ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
            SqlConnection conn = new SqlConnection(Constrong);

            SqlCommand cmd = new SqlCommand("select * from employee", conn);

            conn.Open();
            reader = cmd.ExecuteReader();
            DataTable dataTable = new DataTable();
            dataTable.Load(reader);
            conn.Close();



            //for read
            //Convert reader to datatable
            //datatable to gridview
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                String sql = "insert into employee values('" + TxtId.Text + "','" + TxtName.Text + "','" + TxtPhone.Text + "','" + TxtEmail.Text + "','" + TxtAge.Text + "','" + TxtAddress.Text + "','" + TxtStat.Text + "')";
                clsDataBase db = new clsDataBase();
                if (db.AddEmployee(sql))
                {
                    Response.Redirect("DefaultEmployee.aspx");
                }
                else
                {
                    lblMsg.Text = "Failed to Add Employee";
                }
            }
        }

       
    }
}