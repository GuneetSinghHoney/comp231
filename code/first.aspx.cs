using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;

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

            fillBookedRoomLabel(int.Parse(id));
        }
    }

    private void fillBookedRoomLabel(int id)
    {
        SqlConnection conn;
        SqlCommand comm;
        string connectionString = ConfigurationManager.ConnectionStrings["Dorm"].ConnectionString;
        conn = new SqlConnection(connectionString);

        string query = "select roomnumber from rooms where id=" + id;
        conn.Open();
        comm = new SqlCommand(query, conn);
        comm.CommandType = CommandType.Text;
        SqlDataReader dr2;
        dr2 = comm.ExecuteReader();

        if (dr2.Read())
        {
            bookedRoom.Text = dr2.GetInt32(0).ToString();

        }
        else
        {
            bookedRoom.Text = "  NOT BOOKED";

        }
        conn.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Document pdfDoc = new Document(PageSize.A4, 25, 10, 25, 10);
            PdfWriter pdfWriter = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();

            Paragraph Text = new Paragraph("DORM MANAGEMENT SYSTEM");
            string x1 = getPrintData();
            Paragraph Txt = new Paragraph(x1);
            Paragraph Txt2 = new Paragraph("$650   PAID");
            Paragraph txt3 = new Paragraph("Singh");
            pdfDoc.Add(Text);
            pdfDoc.Add(Txt);
            if (!x1.Equals(""))
            {
                pdfDoc.Add(Txt2);
                pdfDoc.Add(txt3);
            }
            else
            {
                pdfDoc.Add(new Paragraph("UNPAID"));
            }
            pdfWriter.CloseStream = false;
            pdfDoc.Close();
            Response.Buffer = true;
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=Bill.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Write(pdfDoc);
            Response.End();
        }
        catch (Exception ex)
        { Response.Write(ex.Message); }
    }

    private string getPrintData()
    {
        SqlConnection conn;
        SqlCommand comm;
        string connectionString = ConfigurationManager.ConnectionStrings["Dorm"].ConnectionString;
        conn = new SqlConnection(connectionString);

        string query = "select id,Username from SignUp where status=1";
        conn.Open();
        comm = new SqlCommand(query, conn);
        comm.CommandType = CommandType.Text;
        SqlDataReader dr2;
        dr2 = comm.ExecuteReader();
        string u;
        if (dr2.Read())
        {
            u = dr2.GetInt32(0).ToString() + "    " + dr2.GetString(1).ToUpper();

        }
        else
        {
            u = "";
        }
        conn.Close();
        return u;


    }
}