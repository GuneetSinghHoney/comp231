using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

        SqlConnection conn;
        SqlCommand comm;
        string connectionString = ConfigurationManager.ConnectionStrings["Recipe"].ConnectionString;
        conn = new SqlConnection(connectionString);

        string query1 = "select username,password from UserInfo where status=1";
        conn.Open();
        comm = new SqlCommand(query1, conn);
        comm.CommandType = CommandType.Text;
        SqlDataReader dr = comm.ExecuteReader();
        string un;
        if(dr.Read())
        {
            un = dr.GetString(0);


            Label1.Text = un;
        } }
}