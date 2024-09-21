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
    public partial class Contact : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["xyz"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            string username = usrnm.Value;
            string eml = email.Value;
            string password = psw.Value;
            usrnm.Value = " ";
            email.Value = " ";
            psw.Value = "";

            string con = ConfigurationManager.ConnectionStrings["xyz"].ConnectionString;
            string query = "insert into Register values(@username,@email,@password)";
            using (SqlConnection conn = new SqlConnection(con))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@username", username);
                    cmd.Parameters.AddWithValue("@email", eml);
                    cmd.Parameters.AddWithValue("@password", password);
                    
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                  Response.Write("<script>window.location='contact.aspx';alert('Data Saved.')</script>");
                }
            }
        }
    }
}