using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeInfo
{
    public partial class DefaultOrders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                String sql = "select orderid,orders.custid,orderdate,product,orders.empid,orderstat,quantity,customer.name as custname,employee.name as empname from orders,customer,employee where orders.custid=customer.custid and orders.empid=employee.empid";
                clsDataBase dataBase = new clsDataBase();
                dt = dataBase.getOrders(sql);

                gridOrders.DataSource = dt;
                gridOrders.DataBind();
            }
        }

        protected void gridOrders_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "Details")
                {
                String OrderId = e.CommandArgument.ToString();
                Session["orderid"]= OrderId;
                Response.Redirect("EditOrder.aspx?orderid="+OrderId+"");
            }
        }

        protected void gridOrders_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void btnAddOrder_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddOrders.aspx");
        }
    }
}