using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class reg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void RegisterClick(object sender, EventArgs e)
    {
        SqlConnection conn;
        SqlCommand comm;
        string connectionString = ConfigurationManager.ConnectionStrings["Dorm"].ConnectionString;
        conn = new SqlConnection(connectionString);
        string query1 = "insert into SignUp(fname,lname,Username,password,House,Street,City,Province,Country,code,email,contact,role,status) values('" + fname.Text + "','" + lname.Text + "','" + User.Text + "','" + pass.Text + "','" + house.Text + "','" + st.Text + "','" + ct.Text + "','" + prov.Text + "','" + count.Text + "','" + code.Text + "','" + email.Text + "','" + cont.Text + "','Student',0)";
        comm = new SqlCommand(query1, conn);
        conn.Open();
        comm.ExecuteNonQuery();
        conn.Close();


    }
}