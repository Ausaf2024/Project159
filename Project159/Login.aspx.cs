using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

  namespace WebApplication1
 {
  public partial class login1 : System.Web.UI.Page
    {
      SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["xyz"].ConnectionString);
       protected void Page_Load(object sender, EventArgs e)
        {
        }
            protected void btnsave_Click(object sender, EventArgs e)
           {
            con.Open();
            String query = "select * from login where username='" + txtname.Text + "'and password='" + txtpass.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.Text;

            using (SqlDataReader dr=cmd.ExecuteReader())
            {
                if (txtname.Text.ToString() !="saba")
                {
                    Response.Write("<script>alert('incorrect username');</script>");
                    return;
                }
                else if (txtpass.Text !="Ausaf@1993")
                {
                 Response.Write("<script>alert('incorrect pass');</script>");
                 return ;
                 }
                if (dr.HasRows)
                {
                 Response.Write("<script>window.location='Home.aspx';</script>");
                }
                else 
                {
                 Response.Write("<script>window.location='login.aspx';alert('incorrect username & passwor');</script>");
                }
              }
           con.Close();
        }
      }
    }