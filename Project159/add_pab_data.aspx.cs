using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Project159
  {
    public partial class add_pab_data : System.Web.UI.Page
    {
      SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["xyz"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                String conn = (ConfigurationManager.ConnectionStrings["xyz"].ConnectionString);
                String com = "Select * from fin_year";
                SqlConnection con = new SqlConnection(conn);
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                ddlyear.DataSource = dt;
                ddlyear.DataBind();
                ddlyear.DataTextField = "fin_year";
                ddlyear.DataValueField = "id";
                ddlyear.DataBind();
                ddlyear.Items.Insert(0, new System.Web.UI.WebControls.ListItem("----- Select Year-----", "-1"));

                String str1 = (ConfigurationManager.ConnectionStrings["xyz"].ConnectionString);
                String Query1 = "Select * from pab_data_type";
                SqlConnection con1 = new SqlConnection(str1);
                SqlDataAdapter da1 = new SqlDataAdapter(Query1, con1);
                DataTable dt1 = new DataTable();
                da1.Fill(dt1);
                ddltod.DataSource = dt1;
                ddltod.DataBind(); 
                ddltod.DataTextField = "data_type_name";
                ddltod.DataValueField = "data_tpye_id";
                ddltod.DataBind();
                ddltod.Items.Insert(0, new System.Web.UI.WebControls.ListItem("----- Select Data-----","-1"));

                String str2 = (ConfigurationManager.ConnectionStrings["xyz"].ConnectionString);
                String Query2 = "Select * from state";
                SqlConnection con2 = new SqlConnection(str2);
                SqlDataAdapter da2 = new SqlDataAdapter(Query2, con2);
                DataTable dt2 = new DataTable();
                da2.Fill(dt2);
                ddlstate.DataSource = dt2;
                ddlstate.DataBind();
                ddlstate.DataTextField = "state_name";
                ddlstate.DataValueField = "statecode_id";
                ddlstate.DataBind();
                ddlstate.Items.Insert(0, new System.Web.UI.WebControls.ListItem("----- Select State-----", "-1"));

                String str3 = (ConfigurationManager.ConnectionStrings["xyz"].ConnectionString);
                String Query3 = "Select * from pab_topic";
                SqlConnection con3 = new SqlConnection(str3);
                SqlDataAdapter da3 = new SqlDataAdapter(Query3, con3);
                DataTable dt3 = new DataTable();
                da3.Fill(dt3);
                ddltopic.DataSource = dt3;
                ddltopic.DataBind();
                ddltopic.DataTextField = "topic_name";
                ddltopic.DataValueField = "topic_id";
                ddltopic.DataBind();
                ddltopic.Items.Insert(0, new System.Web.UI.WebControls.ListItem("----- Select Topic-----", "-1"));
            }
        }
        protected void btnsave_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["xyz"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Insert into pab_data values(@select_year,@Select_Type_ofData,@Select_State,@Select_Pab_Topic,@pdf_upload)"))
                {
                    cmd.Parameters.AddWithValue("@select_year", ddlyear.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@Select_Type_ofData", ddltod.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@Select_State", ddlstate.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@Select_Pab_Topic", ddltopic.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@pdf_upload", FileUploadTopic.FileName.ToString());
                    cmd.Connection = conn;
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Response.Write("<script>window.location='add_pab_data.aspx';alert('Data Saved.')</script>");
                }
            }
        }
    }
}