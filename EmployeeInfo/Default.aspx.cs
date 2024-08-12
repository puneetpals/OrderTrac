using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeInfo
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            clsDataBase db1 = new clsDataBase();

            lblEmpCount.Text = Convert.ToString(db1.getCount("empid", "employee"));
            lblCustCount.Text = Convert.ToString(db1.getCount("custid", "customer"));
            lblOrdersCount.Text = Convert.ToString(db1.getCount("orderid", "orders"));
        }

        protected void BtnDefaultEmployee_Click(object sender, EventArgs e)
        {
            Response.Redirect("DefaultEmployee.aspx");
        }

        protected void BtnDefaultCustomer_Click(object sender, EventArgs e)
        {
            Response.Redirect("DefaultCustomer.aspx");
        }

        protected void BtnDefaultOrders_Click(object sender, EventArgs e)
        {
            Response.Redirect("DefaultOrders.aspx");
        }

        protected void Btn_EmployeeOrdersClick(object sender, EventArgs e)
        {
            Response.Redirect("EmployeeOrders.aspx");
        }

        protected void Btn_CustomerOrdersClick(object sender, EventArgs e)
        {
            Response.Redirect("CustomerOrders.aspx");
        }
    }
}