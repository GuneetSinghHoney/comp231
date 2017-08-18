using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class comp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn, conn1;
        SqlCommand comm;
        string connectionString = ConfigurationManager.ConnectionStrings["Dorm"].ConnectionString;
        conn1 = new SqlConnection(connectionString);

        string query = "select Id from SignUp where status=1";
        int id;
        conn1.Open();
        comm = new SqlCommand(query, conn1);
        comm.CommandType = CommandType.Text;
        SqlDataReader dr = comm.ExecuteReader();
        while (dr.Read())
        {
            id = dr.GetInt32(0);
        }
        conn1.Close();
    }
    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        SqlConnection conn,conn1;
        SqlCommand comm;
        string connectionString = ConfigurationManager.ConnectionStrings["Dorm"].ConnectionString;
        conn1 = new SqlConnection(connectionString);

        string query = "select Id from SignUp where status=1";
        int id;
        conn1.Open();
        comm = new SqlCommand(query, conn1);
        comm.CommandType = CommandType.Text;
        SqlDataReader dr = comm.ExecuteReader();
        while (dr.Read())
        {
            id = dr.GetInt32(0);
            conn = new SqlConnection(connectionString);
            string query1 = "insert into request(Id,msg,resp) values ('" + id + "','"+tx.Value.ToString()+"','')";
            comm = new SqlCommand(query1, conn);
            conn.Open();
            comm.ExecuteNonQuery();
            conn.Close();
        }
        conn1.Close();
        Response.Write("<script LANGUAGE='JavaScript' >alert('Request send')</script>");

        tx.Value = "";
       
    }
}