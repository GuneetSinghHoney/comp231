using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class update : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        var id = Request.QueryString["id"];

        SqlConnection conn;
        SqlCommand comm;
        string connectionString = ConfigurationManager.ConnectionStrings["Recipe"].ConnectionString;
        conn = new SqlConnection(connectionString);

        string query ="select * from Recipe3 where ID='"+id+"'";
        conn.Open();

        comm = new SqlCommand(query, conn);
        comm.CommandType = CommandType.Text;

        SqlDataReader dr2;

        dr2 = comm.ExecuteReader();

        dr2.Read();
        L1.Text = (dr2["Name"].ToString());
        Label2.Text = (dr2["Category"].ToString());
        Label3.Text = (dr2["Prep_time"].ToString());
        Label4.Text = (dr2["Servings"].ToString());
        Label5.Text = (dr2["Description"].ToString());
        conn.Close();

        String query1 = "select Submit,Category from Recipe3";
        using (SqlCommand cmd1 = new SqlCommand(query1))
        {
            cmd1.CommandType = CommandType.Text;
            cmd1.Connection = conn;
            conn.Open();
            using (SqlDataReader sdr = cmd1.ExecuteReader())
            {
                while (sdr.Read())
                {
                    ListItem item = new ListItem();
                    ListItem item2 = new ListItem();
                    item.Text = sdr["Category"].ToString();
                    item.Value = sdr["Category"].ToString();
                    DropDownList1.Items.Add(item);
                }
            }
            conn.Close();
        }
        string query2 = "select username from UserInfo where status=1";
        conn.Open();

        comm = new SqlCommand(query2, conn);
        comm.CommandType = CommandType.Text;

        SqlDataReader dr4;

        dr4 = comm.ExecuteReader();

        dr4.Read();
        Label6.Text = (dr4["username"].ToString());
        conn.Close();

    }

    protected void B2_Click(object sender, EventArgs e)
    {
        var id = Request.QueryString["id"];
        int idx1 = DropDownList1.SelectedIndex;
        string Val1 = Convert.ToString(DropDownList1.SelectedItem.Value); ;


        if (NameRecipe.Text.ToString() == String.Empty || Cooking.Text.ToString() == String.Empty || NS.Text.ToString() == String.Empty || TA.Value.ToString() == String.Empty)
        {
            Label1.Text = "Field cannot be blank....";
        }
        else if (idx1!=0 && Val1 == Cat.ToString())
        {

            Label1.Text = id.ToString();
            SqlConnection conn;
            SqlCommand comm;
            string connectionString = ConfigurationManager.ConnectionStrings["Recipe"].ConnectionString;
            conn = new SqlConnection(connectionString);

            string query = "select * from Recipe3 where ID='" + id + "'";
            conn.Open();

            comm = new SqlCommand(query, conn);
            comm.CommandType = CommandType.Text;

            SqlDataReader dr2;

            dr2 = comm.ExecuteReader();

            dr2.Read();
            string na = (dr2["Name"].ToString());
            conn.Close();

            conn.Open();
            string query2 = "update Recipe3 set Name='" + NameRecipe.Text.ToString() + "',Category='" + Val1.ToString() + "',Prep_time='" + Cooking.Text.ToString() + "',Servings='" + NS.Text.ToString() + "',Description='" + TA.Value.ToString() + "' where ID='" + id + "'";
            comm = new SqlCommand(query2, conn);
            comm.ExecuteNonQuery();
            conn.Close();

        }
        else if (idx1==0)
        {
            Label1.Text = id.ToString();
            SqlConnection conn;
            SqlCommand comm;
            string connectionString = ConfigurationManager.ConnectionStrings["Recipe"].ConnectionString;
            conn = new SqlConnection(connectionString);

            string query = "select * from Recipe3 where ID='" + id + "'";
            conn.Open();

            comm = new SqlCommand(query, conn);
            comm.CommandType = CommandType.Text;

            SqlDataReader dr2;

            dr2 = comm.ExecuteReader();

            dr2.Read();
            string na = (dr2["Name"].ToString());
            conn.Close();

            conn.Open();
            string query2 = "update Recipe3 set Name='" + NameRecipe.Text.ToString() + "',Category='" + Cat.Text.ToString() + "',Prep_time='" + Cooking.Text.ToString() + "',Servings='" + NS.Text.ToString() + "',Description='" + TA.Value.ToString() + "' where ID='" + id + "'";
            comm = new SqlCommand(query2, conn);
            comm.ExecuteNonQuery();
            conn.Close();

        }
        else
        {
            Label1.Text = id.ToString();
            SqlConnection conn;
            SqlCommand comm;
            string connectionString = ConfigurationManager.ConnectionStrings["Recipe"].ConnectionString;
            conn = new SqlConnection(connectionString);

            string query = "select * from Recipe3 where ID='" + id + "'";
            conn.Open();

            comm = new SqlCommand(query, conn);
            comm.CommandType = CommandType.Text;

            SqlDataReader dr2;

            dr2 = comm.ExecuteReader();

            dr2.Read();
            string na = (dr2["Name"].ToString());
            conn.Close();

            conn.Open();
            string query2 = "update Recipe3 set Name='" + NameRecipe.Text.ToString() + "',Category='" + Val1.ToString() + "',Prep_time='" + Cooking.Text.ToString() + "',Servings='" + NS.Text.ToString() + "',Description='" + TA.Value.ToString() + "' where ID='" + id + "'";
            comm = new SqlCommand(query2, conn);
            comm.ExecuteNonQuery();
            conn.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        var id = Request.QueryString["id"];

        Response.Redirect("update.aspx?id=" + id);

    }
}