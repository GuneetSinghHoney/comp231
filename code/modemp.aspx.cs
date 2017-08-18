using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class modemp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      String id = Request.Params["id"];

        SqlConnection conn;
        SqlCommand comm;
        string connectionString = ConfigurationManager.ConnectionStrings["Dorm"].ConnectionString;
        conn = new SqlConnection(connectionString);

        string query = "select * from SignUp where Id='" + id + "'";
        conn.Open();

        comm = new SqlCommand(query, conn);
        comm.CommandType = CommandType.Text;

        SqlDataReader dr2;
        dr2 = comm.ExecuteReader();
        dr2.Read();
        textbox1.Text = (dr2["password"].ToString());
        textbox2.Text = (dr2["contact"].ToString());
        textbox3.Text = (dr2["email"].ToString());
        textbox4.Text = (dr2["House"].ToString());
        textbox5.Text = (dr2["Street"].ToString());
        textbox6.Text = (dr2["City"].ToString());
        textbox7.Text = (dr2["Province"].ToString());
        textbox9.Text = (dr2["Country"].ToString());
        textbox10.Text = (dr2["code"].ToString());
        textbox11.Text = (dr2["fname"].ToString());
        textbox12.Text = (dr2["lname"].ToString());
        L1.Text = (dr2["Id"].ToString());
        L2.Text = (dr2["Username"].ToString());
        conn.Close();
    }

    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        String id = Request.Params["id"];
        SqlConnection conn;
        SqlCommand comm;
        string connectionString = ConfigurationManager.ConnectionStrings["Dorm"].ConnectionString;
        conn = new SqlConnection(connectionString);

        conn.Open();

        String query2 = "update SignUp set fname='" + textbox11.Text + "',lname='" + textbox12.Text + "',password='" + textbox1.Text + "',contact='" + textbox2.Text + "',email='" + textbox3.Text + "',House='" + textbox4.Text + "',Street='" + textbox5.Text + "',City='" + textbox6.Text + "',Province='" + textbox7.Text + "',Country='" + textbox9.Text + "',code='" + textbox10.Text + "' where Id='" + id + "'";
        comm = new SqlCommand(query2, conn);
        comm.ExecuteNonQuery();
        conn.Close();
        Response.Write("<script LANGUAGE='JavaScript' >alert('Info Updated')</script>");

    }
}