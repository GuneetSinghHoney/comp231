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
public partial class View : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String id = Request.Params["id"];
        SqlConnection conn;
        SqlCommand comm;
        string connectionString = ConfigurationManager.ConnectionStrings["Dorm"].ConnectionString;
        conn = new SqlConnection(connectionString);

        string query1 = "select * from viewrequest";

        conn.Open();

        comm = new SqlCommand(query1, conn);
        comm.CommandType = CommandType.Text;

        SqlDataReader dr2;
        dr2 = comm.ExecuteReader();
        myrepeater.DataSource = dr2;
        myrepeater.DataBind();
        conn.Close();
    }
}