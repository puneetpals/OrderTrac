using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeInfo
{
    public partial class CustomerList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                String sql = "select * from customer";
                clsDataBase dataBase1 = new clsDataBase();
                dt = dataBase1.getCustomer(sql);
                gridCustomer.DataSource = dt;
                gridCustomer.DataBind();
            }
        }

        public string FilePath { get; }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddCustomer.aspx");
        }

        protected void gridCustomer_RowDataBound(object sender, GridViewRowEventArgs e)
        {
        }
        protected void gridCustomer_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            String customerId = e.CommandArgument.ToString();
            Session["custid"] = customerId;
            Response.Redirect("EditCustomer.aspx?empid=" + customerId + "");

        }

    }
}