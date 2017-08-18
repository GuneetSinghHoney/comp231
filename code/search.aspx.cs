using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        SqlConnection conn;
        SqlCommand comm;
        string connectionString = ConfigurationManager.ConnectionStrings["Recipe"].ConnectionString;
        conn = new SqlConnection(connectionString);
        
        String query1="select Submit,Category from Recipe3";
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
                    item2.Text = sdr["Submit"].ToString();
                    item2.Value = sdr["Submit"].ToString();
                    DropDownList2.Items.Add(item);
                    DropDownList1.Items.Add(item2);
                }
            }
            conn.Close();
        }
        DropDownList3.Items.Insert(0, new ListItem("--All--", "0"));

        string query = "select Ingredients from Ingred1";
        using (SqlCommand cmd1 = new SqlCommand(query))
        {
            cmd1.CommandType = CommandType.Text;
            cmd1.Connection = conn;
            conn.Open();
            using (SqlDataReader sdr = cmd1.ExecuteReader())
            {
                while (sdr.Read())
                {
                    ListItem item = new ListItem();
                    item.Text = sdr["Ingredients"].ToString();
                    item.Value = sdr["Ingredients"].ToString();
                    DropDownList3.Items.Add(item);
                }
            }
            conn.Close();
        }
        DropDownList1.Items.Insert(0, new ListItem("--All--", "0"));
        DropDownList2.Items.Insert(0, new ListItem("--All--", "0"));

        DropDownList3.Items.Insert(0, new ListItem("--All--", "0"));


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string Val1= Convert.ToString(DropDownList1.SelectedItem.Value); ;
        string Val2 = DropDownList2.SelectedItem.Value.ToString();
        string Val3 = DropDownList3.SelectedValue;
        string msg = "All";
        string v1 = "--All--";
        string v2 = "--All--";
        string v3 = "--All--";
        int idx1 = DropDownList1.SelectedIndex;
        int idx2 = DropDownList2.SelectedIndex;
        int idx3 = DropDownList3.SelectedIndex;
        if (idx1==1)            
        {
            Label1.Text = "ALL";

            SqlConnection conn;
            SqlCommand comm;
            string connectionString = ConfigurationManager.ConnectionStrings["Recipe"].ConnectionString;
            conn = new SqlConnection(connectionString);

            string query = "SELECT Recipe3.Name as Name,Recipe3.Category as Category,Recipe3.Prep_time as Prep_time,Recipe3.Servings as Servings,Recipe3.Description as Description,Ingred1.Ingredients as Ingredients FROM Recipe3 INNER JOIN Ingred1 ON Recipe3.Id = Ingred1.ID";
            conn.Open();

            comm = new SqlCommand(query, conn);
            comm.CommandType = CommandType.Text;

            SqlDataReader dr2;
            dr2 = comm.ExecuteReader();
            myrepeater.DataSource = dr2;
            myrepeater.DataBind();
            conn.Close();

        }
        else
        {
            Label1.Text = Val1;

            SqlConnection conn;
            SqlCommand comm;
            string connectionString = ConfigurationManager.ConnectionStrings["Recipe"].ConnectionString;
            conn = new SqlConnection(connectionString);
            
            string query = "SELECT Recipe3.Name as Name,Recipe3.Category as Category,Recipe3.Prep_time as Prep_time,Recipe3.Servings as Servings,Recipe3.Description as Description,Ingred1.Ingredients as Ingredients FROM Recipe3 INNER JOIN Ingred1 ON Recipe3.Id = Ingred1.ID WHERE Recipe3.Submit like '" + Val1.ToString() + "'  AND Recipe3.Category like '" + Val2.ToString() + "' AND Ingred1.Ingredients like '" + Val3.ToString() + "'";
            conn.Open();

            comm = new SqlCommand(query, conn);
            comm.CommandType = CommandType.Text;

            SqlDataReader dr2;
            dr2 = comm.ExecuteReader();
            myrepeater.DataSource = dr2;
            myrepeater.DataBind();
            conn.Close();
            //Label1.Text = msg;


        }

    }
}
 