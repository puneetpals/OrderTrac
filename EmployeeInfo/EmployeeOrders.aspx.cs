using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeInfo
{
    public partial class EmployeeOrders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            String sql = "select orders.empid,employee.name as empname,customer.name as custname,product,quantity,orderstat from employee,customer,orders where orders.custid=customer.custid and orders.empid=employee.empid order by empid";
            clsDataBase db = new clsDataBase();
            dt = db.getOrdersCount(sql);
            gridEmpOrders.DataSource = dt;
            gridEmpOrders.DataBind();
        }

        protected void gridEmpOrders_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void gridEmpOrders_RowDataBound(object sender, GridViewRowEventArgs e)
        {
             
        }
    }
}