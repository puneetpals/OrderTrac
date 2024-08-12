using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace EmployeeInfo
{


    public class clsDataBase
    {
        SqlDataReader reader = null;
        String Constrong = System.Configuration.ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
        SqlConnection conn;
        SqlCommand cmd;
        public bool AddEmployee(String Sql)
        {
            try
            {

                int response = 0;
                conn = new SqlConnection(Constrong);
                cmd = new SqlCommand(Sql, conn);
                conn.Open();
                response = cmd.ExecuteNonQuery();
                return response > 0 ? true : false;
            }
            catch (Exception ex)
            {
                return false;
                throw new Exception(ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }


        public DataTable getmployee(String Sql)
        {
            try
            {

                conn = new SqlConnection(Constrong);
                cmd = new SqlCommand(Sql, conn);
                conn.Open();
                reader = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(reader);
                return dt;


            }
            catch (Exception ex)
            {
                return null;
                throw new Exception(ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        public bool AddCustomer(String Sql)
        {
            try
            {
                int response = 0;
                conn = new SqlConnection(Constrong);
                cmd = new SqlCommand(Sql, conn);
                conn.Open();
                response = cmd.ExecuteNonQuery();
                return response > 0 ? true : false;
            }
            catch (Exception ex)
            {
                return false;
                throw new Exception(ex.Message);
            }
            finally
            { conn.Close(); }

        }

        public DataTable getCustomer(String Sql)
        {
            try
            {
                conn = new SqlConnection(Constrong);
                cmd = new SqlCommand(Sql, conn);
                conn.Open();
                reader = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(reader);
                return dt;
            }
            catch (Exception ex)
            {
                return null;
                throw new Exception(ex.Message);
            }
            finally 
            { 
                conn.Close(); 
            }

        }

        public int getCount(string columnName, string tableName)
        {
            try
            {
                conn = new SqlConnection(Constrong);
                String sql = "SELECT count(*) FROM " + tableName + "";
                conn.Open();
                cmd = new SqlCommand(sql, conn);
                Int32 count = (Int32)cmd.ExecuteScalar();
                return (Int32)count;
            }
            catch (Exception ex)
            {
                return 0;
                throw new Exception(ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        public DataTable getData(String sql)
        {
            try
            {
                conn = new SqlConnection(Constrong);
                cmd = new SqlCommand(sql, conn);
                conn.Open();
                reader = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(reader);
                return (dt);
            }
            catch (Exception ex)
            {
                return null;
                throw new Exception(ex.Message);
            }
            finally
            {
                conn.Close();
            }
        } 

        public bool AddOrders(String Sql)
        {
            try
            {

                int response = 0;
                conn = new SqlConnection(Constrong);
                cmd = new SqlCommand(Sql, conn);
                conn.Open();
                response = cmd.ExecuteNonQuery();
                return response > 0 ? true : false;
            }
            catch (Exception ex)
            {
                return false;
                throw new Exception(ex.Message);
            }
            finally
            {
                conn.Close();
            }

        }

        public DataTable getOrders(String sql) 
        {

            try
            {
                conn = new SqlConnection(Constrong);
                cmd = new SqlCommand(sql, conn);
                conn.Open();
                reader = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(reader);
                return dt;
            }
            catch (Exception ex)
            {
                return null;
                throw new Exception(ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }
        public DataTable getOrdersCount(String sql) 
        {
            try
            {
                conn = new SqlConnection(Constrong);
                cmd = new SqlCommand(sql, conn);
                conn.Open();
                reader = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(reader);
                return dt;
            }
            catch (Exception ex)
            {
                return null;
                throw new Exception(ex.Message);
            }
            finally 
            {
                conn.Close();
            }
        }
    }
        
}