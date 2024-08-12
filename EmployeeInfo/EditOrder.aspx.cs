using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeInfo
{
    public partial class EditOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                clsDataBase db = new clsDataBase();
                dt = db.getData("select custid,name from customer");
                ddlCustomer.DataSource = dt;
                ddlCustomer.DataTextField = "name";
                ddlCustomer.DataValueField = "custid";
                ddlCustomer.DataBind();
                ddlCustomer.Items.Insert(0, new ListItem("---Select Name---", "-1"));


                dt = new DataTable();
                dt = db.getData("select productname from products");
                ddlProducts.DataSource = dt;
                ddlProducts.DataTextField = "productname";
                ddlProducts.DataValueField = "productname";
                ddlProducts.DataBind();
                ddlProducts.Items.Insert(0, new ListItem("--Select Product--", "-1"));

                dt = new DataTable();
                dt = db.getData("select empid,name from employee");
                ddlEmployee.DataSource = dt;
                ddlEmployee.DataTextField = "name";
                ddlEmployee.DataValueField = "empid";
                ddlEmployee.DataBind();
                ddlEmployee.Items.Insert(0, new ListItem("--Select Employee--", "-1"));

                ddlOrderStat.Items.Clear();
                ddlOrderStat.Items.Insert(0, new ListItem("--Select Order Status--", "-1"));
                ddlOrderStat.Items.Insert(1, new ListItem("Pending", "Pending"));
                ddlOrderStat.Items.Insert(2, new ListItem("Done", "Done"));

                dt = new DataTable();
                String order_id = Session["orderid"].ToString();
                String sql = "select orderid,custid,product,empid,orderstat,quantity from orders where orderid='" + order_id + "'";
                db = new clsDataBase();
                dt = db.getOrders(sql);
                DataTableReader dr = dt.CreateDataReader();
                if (dr.Read())
                {
                    try
                    {
                        txtOrderID.Text = dr[0].ToString();
                        ddlCustomer.SelectedValue = dr[1].ToString();
                        ddlProducts.SelectedValue = dr[2].ToString();
                        txtQuantity.Text = dr[5].ToString();
                        ddlEmployee.SelectedValue = dr[3].ToString();
                        ddlOrderStat.SelectedValue = dr[4].ToString();
                    }
                    catch { }
                }
            }
        }

        protected void btnEditOrder_Click(object sender, EventArgs e)
        {
            String sql = "update orders set custid='" + ddlCustomer.SelectedValue + "',product='" + ddlProducts.SelectedValue + "',quantity='" + txtQuantity.Text + "',empid='" + ddlEmployee.SelectedValue + "', orderstat='" + ddlOrderStat.SelectedItem.Text + "' where orderid='" + txtOrderID.Text + "'";
            clsDataBase dt = new clsDataBase();
            if (dt.AddOrders(sql))
            {
                Response.Redirect("DefaultOrders.aspx");
            }
            else
            {
                lblMsgEditOrder.Text = "Fail to Edit Order";
            }
        }
    }
}