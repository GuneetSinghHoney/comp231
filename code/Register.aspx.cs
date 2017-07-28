using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    string flag;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) {

           

        flag = Request.Params["flag"];
            if(flag == null)
            {
                flag = "honey";
            }
        if (flag.Equals("update"))
        {
                User.Visible = false;
                pass.Visible = false;
                u.Visible = false;
                p.Visible = false;
                Button1.Text = "Update";
            updateForm();


        }
    }
    }

    private void updateForm()
    {

        SqlConnection conn;
        SqlCommand comm;
        string connectionString = ConfigurationManager.ConnectionStrings["Dorm"].ConnectionString;
        conn = new SqlConnection(connectionString);
        int roll = int.Parse(Session["userID"].ToString());
        string query = "select fname,lname,house,street,city,province,code,country,contact,email from SignUp where id="+roll;
        conn.Open();
        comm = new SqlCommand(query, conn);
        comm.CommandType = CommandType.Text;
        SqlDataReader dr2;
        dr2 = comm.ExecuteReader();
        
        if (dr2.Read())
        {
            fname.Text = dr2.GetString(0);
            lname.Text = dr2.GetString(1);
            house.Text = dr2.GetString(2);
            st.Text = dr2.GetString(3);
            ct.Text = dr2.GetString(4);
            prov.Text = dr2.GetString(5);
            code.Text = dr2.GetString(6);
            count.Text = dr2.GetString(7);
            cont.Text = dr2.GetString(8);
            email.Text = dr2.GetString(9);
        }
    }

    protected void RegisterClick(object sender, EventArgs e)
    {
        int id = -1;
        try
        {
          id = int.Parse(Session["userID"].ToString());
        }
        catch(Exception exp)
        {

        }
       

        SqlConnection conn;
        SqlCommand comm;
        string connectionString = ConfigurationManager.ConnectionStrings["Dorm"].ConnectionString;
        conn = new SqlConnection(connectionString);
        string query1;
        if (Button1.Text.Equals("Update"))
        {
            // update query 
            query1 = "update signup set fname='"+fname.Text+"',lname='"+lname.Text+"',contact='"+cont.Text+"',country='"+count.Text+"',email='"+email.Text+"',house='"+house.Text+"',city='"+ct.Text+"',street='"+st.Text+"',province='"+prov.Text+"',code='"+code.Text+"' where id="+id;
        }
        else
        {
            //insert query 
            query1 = "insert into SignUp(fname,lname,Username,password,House,Street,City,Province,Country,code,email,contact,role,status) values('" + fname.Text + "','" + lname.Text + "','" + User.Text + "','" + pass.Text + "','" + house.Text + "','" + st.Text + "','" + ct.Text + "','" + prov.Text + "','" + count.Text + "','" + code.Text + "','" + email.Text + "','" + cont.Text + "','Student',0)";
        }
        comm = new SqlCommand(query1, conn);
        conn.Open();
        comm.ExecuteNonQuery();
        conn.Close();
        if(Button1.Text.Equals("Update"))
        {
            Response.Redirect("/first.aspx?id="+id);
        }
        Response.Redirect("Login.aspx");
    }
}