using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class re : System.Web.UI.Page
{
    public int ids;
    public String val;

    public string value()
    {
        String id = Request.Params["id"];
        SqlConnection conn1;
        SqlCommand comm;
        string connectionString = ConfigurationManager.ConnectionStrings["Dorm"].ConnectionString;

        conn1 = new SqlConnection(connectionString);
        string query = "select request.msg from request inner join SignUp on request.Id=SignUp.Id where request.Id='" + id + "'";
        conn1.Open();
        comm = new SqlCommand(query, conn1);
        comm.CommandType = CommandType.Text;
        SqlDataReader dr = comm.ExecuteReader();
        while (dr.Read())
        {
            val = dr.GetString(0);
            Label1.Text = dr.GetString(0);
        }

        conn1.Close();

        return val;
    }
    public int ides()
    {
        String id = Request.Params["id"];
        SqlConnection conn1;
        SqlCommand comm;
        string connectionString = ConfigurationManager.ConnectionStrings["Dorm"].ConnectionString;

        conn1 = new SqlConnection(connectionString);

        string query2 = "select Id from SignUp where status=3";
        conn1.Open();
        comm = new SqlCommand(query2, conn1);
        comm.CommandType = CommandType.Text;
        SqlDataReader dr2 = comm.ExecuteReader();
        while (dr2.Read())
        {
            ids = dr2.GetInt32(0);
        }
        conn1.Close();

        return ids;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        String val,id = Request.Params["id"];
        int ids;
        SqlConnection conn1;
        SqlCommand comm;
        string connectionString = ConfigurationManager.ConnectionStrings["Dorm"].ConnectionString;
        conn1 = new SqlConnection(connectionString);

        string query = "select request.msg from request inner join SignUp on request.Id=SignUp.Id where request.Id='"+id+"'";
        conn1.Open();
        comm = new SqlCommand(query, conn1);
        comm.CommandType = CommandType.Text;
        SqlDataReader dr = comm.ExecuteReader();
        while (dr.Read())
        {
            Label1.Text = dr.GetString(0);
        }
        conn1.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String id = Request.Params["id"];
        SqlConnection conn1;
        SqlCommand comm;
        string connectionString = ConfigurationManager.ConnectionStrings["Dorm"].ConnectionString;
        
        conn1 = new SqlConnection(connectionString);
        
        conn1.Open();
        string query1 = "insert into viewrequest(Id,empId,msg,resp) values('" + id + "','" + ides() + "','" + value().ToString() + "','" + txt.Value.ToString() + "')";
        comm = new SqlCommand(query1, conn1);
        comm.ExecuteNonQuery();
        string query3 = "update request set resp='"+txt.Value.ToString()+"'";
        //conn1.Open();
        comm = new SqlCommand(query3, conn1);
        comm.ExecuteNonQuery();
        conn1.Close();

        Response.Write("<script LANGUAGE='JavaScript' >alert('Replied')</script>");
        txt.Value = "";
    }
}