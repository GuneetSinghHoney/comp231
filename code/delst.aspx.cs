using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class delst : System.Web.UI.Page
{
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.Params["id"];
        SqlConnection conn;
        SqlCommand comm;
        string connectionString = ConfigurationManager.ConnectionStrings["Dorm"].ConnectionString;
        conn = new SqlConnection(connectionString);

        conn.Open();

        String query2 = "delete from SignUp where Id=" + id;
        comm = new SqlCommand(query2, conn);
        comm.ExecuteNonQuery();
        conn.Close();

        Response.Write("<script LANGUAGE='JavaScript' >alert('Student Deleted')</script>");

        id = Request.Params["id"];
        Response.Redirect("student.aspx");
    }
}