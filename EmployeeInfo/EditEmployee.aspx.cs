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
    public partial class EditEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                String empid = Session["empid"].ToString();
                String sql = "select empid,name,phone,email,address,age,status from employee where empid ='" + empid + "' ";
                clsDataBase db1 = new clsDataBase();
                dt = db1.getmployee(sql);
                DataTableReader dr = dt.CreateDataReader();
                if (dr.Read())
                {
                    TxtId.Text = dr[0].ToString();
                    TxtName.Text = dr[1].ToString();
                    TxtPhone.Text = dr[2].ToString();
                    TxtEmail.Text = dr[3].ToString();
                    TxtAddress.Text = dr[4].ToString();
                    TxtAge.Text = dr[5].ToString();
                    TxtStat.Text = dr[6].ToString();

                }
            }
        }


        protected void btnEdit_Click(object sender, EventArgs e)
        {
                String sql = "update employee set name = '" + TxtName.Text + "' , phone = '" + TxtPhone.Text + "' , address = '" + TxtAddress.Text + "' , age = '" + TxtAge.Text + "' , status = '" + TxtStat.Text + "' , email = '" + TxtEmail.Text + "' where empid='" + TxtId.Text + "'";             
                clsDataBase db1 = new clsDataBase();
            if (db1.AddEmployee(sql))
            {
                Response.Redirect("DefaultEmployee.aspx");
            }
            else
            {
                lblMsgCust1.Text = "Fail to Edit Employee";
            }
        }
    }
    }