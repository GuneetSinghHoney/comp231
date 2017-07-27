using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Second : System.Web.UI.Page
{
    List<Int32> list;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bool status = roomstatus(int.Parse(Session["userID"].ToString()));
            if (status == false)
            {
                message.Text = "You are already Registered !";
                mytable.Visible = false;
            }
            else
            {

                mytable.Visible = true;
                bookingGui();
            }
        }

    }

    private void bookingGui()
    {
        SqlConnection conn;
        SqlCommand comm;
        string connectionString = ConfigurationManager.ConnectionStrings["Dorm"].ConnectionString;
        conn = new SqlConnection(connectionString);

        string query1 = "select id from rooms";


        conn.Open();
        comm = new SqlCommand(query1, conn);
        comm.CommandType = CommandType.Text;
        SqlDataReader dr = comm.ExecuteReader();

        list = new List<int>();
        list.Add(0);
        while (dr.Read())
        {
            list.Add(dr.GetInt32(0));
        }

        for (int i = 0; i < 19; i++)
        {
            if (!list.Contains(i))
            {
                roomList.Items.Add("Room No." + i);
            }
        }
    }

    public bool roomstatus(int x)
    {
        SqlConnection conn;
        SqlCommand comm;
        string connectionString = ConfigurationManager.ConnectionStrings["Dorm"].ConnectionString;
        conn = new SqlConnection(connectionString);

        string query1 = "select * from rooms where id=" + x + "";

        conn.Open();
        comm = new SqlCommand(query1, conn);
        comm.CommandType = CommandType.Text;
        SqlDataReader dr = comm.ExecuteReader();


        if (!dr.Read())
        {
            conn.Close();
            return true;
        }
        conn.Close();
        return false;



    }

    protected void roomatebt_Click(object sender, EventArgs e)
    {
        bool flag = false;
        SqlConnection conn;
        SqlCommand comm;
        string connectionString = ConfigurationManager.ConnectionStrings["Dorm"].ConnectionString;
        conn = new SqlConnection(connectionString);
        string rooom = roomList.SelectedValue.ToString();
        int eight = int.Parse(rooom[8] + "");
        if (rooom.Length == 10)
        {
            eight = int.Parse(rooom[8] + "" + rooom[9] + "");

        }
        int nine = eight - 1;
        eight++;
        string query1 = "select id,Username from SignUp where id in (select id from rooms where roomnumber=" + eight + " union (select id from rooms where roomnumber=" + nine + "))";


        conn.Open();
        comm = new SqlCommand(query1, conn);
        comm.CommandType = CommandType.Text;
        SqlDataReader dr = comm.ExecuteReader();
        while (dr.Read())
        {
            message.Text = dr.GetString(1);
            flag = true;
        }
        if (flag == false)
        {
            message.Text = "You are alone !";
        }
        conn.Close();
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        //

        SqlConnection conn;
        SqlCommand comm;
        string connectionString = ConfigurationManager.ConnectionStrings["Dorm"].ConnectionString;
        conn = new SqlConnection(connectionString);

        int id = int.Parse(Session["userID"].ToString());
        string rooom = roomList.SelectedValue.ToString();
        int eight = int.Parse(rooom[8] + "");
        if (rooom.Length == 10)
        {
            eight = int.Parse(rooom[8] + "" + rooom[9] + "");

        }
        int roomt = RoomTypes.SelectedIndex + 1;

        string query1 = "insert into rooms values (" + id + "," + eight + "," + roomt + ")";


        conn.Open();
        comm = new SqlCommand(query1, conn);
        comm.ExecuteNonQuery();

        conn.Close();

        Response.Redirect("/first.aspx?id=" + id);
    }
}