using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace EmployeeInfo
{
    public partial class EditCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                String cust_id = Session["custid"].ToString();
                String sql = "select custid,name,phone,email,address,age,status from customer where custid='" + cust_id + "'";
                clsDataBase dbcust = new clsDataBase();
                dt = dbcust.getCustomer(sql);
                DataTableReader dr1 = new DataTableReader(dt);
                if (dr1.Read())
                {
                    txtCustId.Text = dr1[0].ToString();
                    txtCustName.Text = dr1[1].ToString();
                    txtCustPhone.Text = dr1[2].ToString();
                    txtCustEmail.Text = dr1[3].ToString();
                    txtCustAddress.Text = dr1[4].ToString();
                    txtCustAge.Text = dr1[5].ToString();
                    txtCustStatus.Text = dr1[6].ToString();
                }
            }
        }

        protected void btnEditCust_Click(object sender, EventArgs e)
        {
            String sql = "update customer set name='" + txtCustName.Text + "', phone='" + txtCustPhone.Text + "' , email = '" + txtCustEmail.Text + "' , address = '" + txtCustAddress.Text + "', age ='" + txtCustAge.Text + "'  , status = '" + txtCustStatus.Text + "' where custid='" + txtCustId.Text + "'";
            clsDataBase db = new clsDataBase();
            if (db.AddCustomer(sql))
            {
                Response.Redirect("DefaultCustomer.aspx");
            }
            else
            {
                lblMsgCust1.Text = "Failed to Edit Customer";
            }
        }
    }
}