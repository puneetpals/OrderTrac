using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Xml.Resolvers;

namespace EmployeeInfo
{
    public partial class AddOrders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                String date = "O" + DateTime.Now.ToString("yyMMddHHmmss");
                txtOrderID.Text = date;

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

            }

        }

        protected void BtnOrders_Click(object sender, EventArgs e)
        {
            String today = DateTime.Now.ToString("yy-MM-dd");
            String Sql = "insert into orders values('" + txtOrderID.Text + "','" + ddlCustomer.SelectedValue + "','" + today + "','" + ddlProducts.SelectedValue + "','" + ddlEmployee.SelectedValue+ "','" + ddlOrderStat.SelectedItem + "','" + txtQuantity.Text + "')";
            clsDataBase db = new clsDataBase();
            if (db.AddOrders(Sql))
            {
                Response.Redirect("DefaultOrders.aspx");
            }
            else
            {
                lblMsgOrders.Text = "Failed to Add Order";
            }

        }
    }
}