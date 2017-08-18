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


public partial class recipe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        SqlConnection conn;
        SqlCommand comm;
        string connectionString = ConfigurationManager.ConnectionStrings["Recipe"].ConnectionString;
        conn = new SqlConnection(connectionString);

        string query = "select username from UserInfo where status=1";
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
            string query1 = "select ID,Submit,Name,Prep_time from Recipe3 where Submit='" + u + "'";
            comm = new SqlCommand(query1, conn);
            comm.CommandType = CommandType.Text;
            SqlDataReader dr3;
            dr3 = comm.ExecuteReader();
            myrepeater.DataSource = dr3;
            myrepeater.DataBind();
            conn.Close();
        }
/*            string N = (string)(Session["Name"]);
            Label1.Text = N.ToString();

            string S = (string)(Session["SubmittedBy"]);
            Label2.Text = S.ToString();

            string C = (string)(Session["Prepare"]);
            Label3.Text = C.ToString();*/
        }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
     }
}