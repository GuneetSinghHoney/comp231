using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class first : System.Web.UI.Page
{
    String id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.Params["id"];
        Session.Add("userID", id);
        SqlConnection conn;
        SqlCommand comm;
        string connectionString = ConfigurationManager.ConnectionStrings["Dorm"].ConnectionString;
        conn = new SqlConnection(connectionString);

        string query = "select Username from SignUp where status=1";
        conn.Open();
        comm = new SqlCommand(query, conn);
        comm.CommandType = CommandType.Text;
        SqlDataReader dr2;
        dr2 = comm.ExecuteReader();
        string u;
        if (dr2.Read())
        {
            u = dr2["username"].ToString();

            conn.Close();
            conn.Open();
            string query1 = "select fname,lname from SignUp where Username='" + u + "'";
            comm = new SqlCommand(query1, conn);
            comm.CommandType = CommandType.Text;
            SqlDataReader dr3;
            dr3 = comm.ExecuteReader();
           
            myrepeater.DataSource = dr3;
            myrepeater.DataBind();
            conn.Close();
        }
    }
}