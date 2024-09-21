using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace WebApplication1
{
    public partial class Signup1 : System.Web.UI.Page
    {
     SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["xyz"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btnsave_Click(object sender, EventArgs e)
        {
          
            using (SqlConnection constr = new SqlConnection(ConfigurationManager.ConnectionStrings["xyz"].ConnectionString))
            {
           using (SqlCommand cmd = new SqlCommand("insert into newuser1 values(@sponserid, @Sponsername, @Emailid, @mobileno, @password, @entercity)", constr))
                {
                    cmd.Parameters.AddWithValue("@sponserid", Sponserid.Value);
                    cmd.Parameters.AddWithValue("@Sponsername", Sponsername.Value);
                    cmd.Parameters.AddWithValue("@Emailid", Email.Value);
                    cmd.Parameters.AddWithValue("@mobileno", MobileNo.Value);
                    cmd.Parameters.AddWithValue("@Entercity", City.Value);
                    cmd.Parameters.AddWithValue("@password", Password.Value);

                    constr.Open();
                    cmd.ExecuteNonQuery();
                    constr.Close();

                    Response.Write("<script>window.location='signup.aspx';alert('data save')</script>");
                }
            }
        }
      }
    }
