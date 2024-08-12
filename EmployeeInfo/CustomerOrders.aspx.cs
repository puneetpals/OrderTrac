using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeInfo
{
    public partial class CustomerOrders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            String sql = "select orders.custid,customer.name as custname,orderid,product,quantity,orderstat from customer,orders where orders.custid=customer.custid order by custid";
            clsDataBase dataBase = new clsDataBase();
            dt = dataBase.getOrdersCount(sql);
            gridCustOrders.DataSource = dt;
            gridCustOrders.DataBind();
        }
    }
}