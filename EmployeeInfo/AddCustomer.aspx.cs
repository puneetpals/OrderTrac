using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeInfo
{
    public partial class AddCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataReader reader = null;
            String Constring = System.Configuration.ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
            SqlConnection conn = new SqlConnection(Constring);

            SqlCommand cmd = new SqlCommand("select * from customer",conn);

            conn.Open(); 
            reader = cmd.ExecuteReader();   
            DataTable dt = new DataTable();
            dt.Load(reader);
            conn.Close();
            
        }
        protected void btn_AddClickCustomer(object sender, EventArgs e)
        {
            string sql = "insert into customer values('" + txtCustID.Text + "','" + txtCustName.Text + "' , '" + txtCustPhone.Text + "' , '" + txtCustEmail.Text + "' , '" + txtCustAge.Text + "' , '" + txtCustAddress.Text + "' , '" + txtCustStatus.Text + "' )";
            clsDataBase dbcust = new clsDataBase();
            if (dbcust.AddCustomer(sql))
            {
                Response.Redirect("DefaultCustomer.aspx");
            }
            else
            {
                lblMsgCust.Text = "failed to add employee";
            }
        }                                                                                                                                                                                                                                                                                                                                                                                                                       

    }
}