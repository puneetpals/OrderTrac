using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeInfo
{
    public partial class EmployeeList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                String sql = "select * from employee";
                clsDataBase db1 = new clsDataBase();
                dt = db1.getmployee(sql);

                gridEmployee.DataSource = dt;
                gridEmployee.DataBind(); 
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddEmployee.aspx");
        }

        protected void gridEmployee_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void gridEmployee_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Details")
            {
                String EmployeeId = e.CommandArgument.ToString();
                Session["empid"] = EmployeeId;
                Response.Redirect("EditEmployee.aspx?empid=" + EmployeeId + "");
            }
        }
    }
}