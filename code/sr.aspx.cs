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

public partial class sr : System.Web.UI.Page
{   protected void Page_Load(object sender, EventArgs e)
    {

        var id = Request.QueryString["id"];
//        Label1.Text = id;

        SqlConnection conn;
        SqlCommand comm;
        string connectionString = ConfigurationManager.ConnectionStrings["Recipe"].ConnectionString;
        conn = new SqlConnection(connectionString);

        string query = "select Name,Category,Prep_time,Servings,Description from Recipe3 where ID='" + id + "'";
        conn.Open();
        comm = new SqlCommand(query, conn);
        comm.CommandType = CommandType.Text;

        SqlDataReader dr;
        dr = comm.ExecuteReader();
        myrepeater.DataSource = dr;
        myrepeater.DataBind();
        conn.Close();

        //Label1.Text = IDe.ToString();

        conn.Open();
        string query1 = "select Ingredients,Quantity,Unit from Ingred1 where ID='" + id + "'";

        comm = new SqlCommand(query1, conn);
        comm.CommandType = CommandType.Text;
        SqlDataReader dr2;
        dr2 = comm.ExecuteReader();
      
        Repeater1.DataSource = dr2;
        Repeater1.DataBind();
        conn.Close();

        conn.Open();
        string query2 = "select filepath,filename from Imagebox where ID='" + id + "'";

        comm = new SqlCommand(query2, conn);
        comm.CommandType = CommandType.Text;
        SqlDataReader dr3;
        dr3 = comm.ExecuteReader();

        Repeater2.DataSource = dr3;
        Repeater2.DataBind();
        conn.Close();


    }
}