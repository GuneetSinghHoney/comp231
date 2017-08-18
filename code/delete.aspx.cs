using System.Data.SqlClient;
using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Diagnostics;
using System.Data;


public partial class delete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var id = Request.QueryString["id"];
        SqlConnection conn;
        SqlCommand comm;
        string connectionString = ConfigurationManager.ConnectionStrings["Recipe"].ConnectionString;
        conn = new SqlConnection(connectionString);


        conn.Open();
        string query2 = "delete from Ingred1 where ID='" + id + "'";
        comm = new SqlCommand(query2, conn);
        comm.ExecuteNonQuery();
        conn.Close();

        conn.Open();
        string query1 = "delete from Recipe3 where ID='" + id + "'";
 
        comm = new SqlCommand(query1, conn);
        comm.ExecuteNonQuery();
        conn.Close();

        conn.Open();
        string query3 = "delete from Imagebox where ID='" + id + "'";
        comm = new SqlCommand(query3, conn);
        comm.ExecuteNonQuery();
        conn.Close();

        Response.Redirect("recipe.aspx");
    }
}