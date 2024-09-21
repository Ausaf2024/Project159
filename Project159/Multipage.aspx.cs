using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace WebApplication1
{
    public partial class userlogin : System.Web.UI.Page
    {
      SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["xyz"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btn_Click(object sender, EventArgs e)
        {
          //string username = usrnm.Value;
          //string eml = email.Value;
          //string password = psw.Value;
          //  usrnm.Value = " ";
          //  email.Value = " ";
          //  psw.Value  =" ";

           // string con = ConfigurationManager.ConnectionStrings["abc"].ConnectionString;
          //  string query = "insert into Register values(@username,@email,@password)";
            using (SqlConnection constr = new SqlConnection(ConfigurationManager.ConnectionStrings["xyz"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("insert into Register values(@username,@email,@password)", constr))
                {
                    cmd.Parameters.AddWithValue("@username", usrnm.Value);
                    cmd.Parameters.AddWithValue("@email", email.Value);
                    cmd.Parameters.AddWithValue("@password", psw.Value);
                    //cmd.Connection = conn;       
                    constr.Open();
                    cmd.ExecuteNonQuery();
                    constr.Close();
                    Response.Write("<script>window.location='Multipage.aspx';alert('Data Saved.')</script>");

                }
            }
        }
    }
}
       
    