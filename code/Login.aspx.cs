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
public partial class Login : System.Web.UI.Page
{
    private int id = -1;
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Logon_Click(object sender, EventArgs e)
    {
        SqlConnection conn;
        SqlCommand comm;
        string connectionString = ConfigurationManager.ConnectionStrings["Dorm"].ConnectionString;
        conn = new SqlConnection(connectionString);

        string query1 = "select Id,Username,password,role from SignUp";
        int id;

        conn.Open();
        comm = new SqlCommand(query1, conn);
        comm.CommandType = CommandType.Text;
        SqlDataReader dr = comm.ExecuteReader();
        string un, psw;
        while (dr.Read())
        {
            un = dr.GetString(1);
            psw = dr.GetString(2);
            id = dr.GetInt32(0);
            String r = dr.GetString(3);


            if ((TextBox1.Text.Equals(un)) &&
                    (UserPass.Text.Equals(psw)))
            {

                if (r.Equals("Student"))
                {

                    conn = new SqlConnection(connectionString);

                    conn.Open();
                    string query2 = "update SignUp set status='1' where Username='" + un + "'";
                    comm = new SqlCommand(query2, conn);
                    comm.ExecuteNonQuery();
                    conn.Close();

                    
                    Response.Redirect("first.aspx?id=" + id);


                }
                else if (r.Equals("Admin"))
                {
                    Response.Redirect("admin.aspx");

                }

            }
            else
            {
                Msg.Text = "Invalid credentials. Please try again.";
            }
        }
        conn.Close();
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
}