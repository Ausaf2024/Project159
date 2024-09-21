using System;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Text;

//namespace Project159
//{
//    public partial class Add_pab : System.Web.UI.Page
//    {
//      SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["xyz"].ConnectionString);
//        protected void Page_Load(object sender, EventArgs e)
//        {
//            if (!IsPostBack)
//            {
//              this.BindGrid();
            
//                String conn = (ConfigurationManager.ConnectionStrings["xyz"].ConnectionString);
//                String Query = "Select * from fin_year  ";
//                SqlConnection con = new SqlConnection(conn);
//                SqlDataAdapter adpt = new SqlDataAdapter(Query, con);
//                DataTable dt = new DataTable();
//                adpt.Fill(dt);
//                ddlyear.DataSource = dt;
//                ddlyear.DataTextField = "fin_year";
//                ddlyear.DataValueField = "id";
//                ddlyear.DataBind();
//                ddlyear.Items.Insert(0, new System.Web.UI.WebControls.ListItem("----- Select Year-----", "-1"));

//                String conn1 = (ConfigurationManager.ConnectionStrings["xyz"].ConnectionString);
//                String Query1 = "Select * from pab_data_type  ";
//                SqlConnection con1 = new SqlConnection(conn1);
//                SqlDataAdapter adpt1 = new SqlDataAdapter(Query1, con1);
//                DataTable dt1 = new DataTable();
//                adpt1.Fill(dt1);
//                ddldata.DataSource = dt1;
//                ddldata.DataTextField = "data_type_name";
//                ddldata.DataValueField = "data_tpye_id";
//                ddldata.DataBind();
//                ddldata.Items.Insert(0, new System.Web.UI.WebControls.ListItem("----- Select Data-----", "-1"));

//                String str2 = (ConfigurationManager.ConnectionStrings["xyz"].ConnectionString);
//                String Query2 = "Select * from pab_topic";
//                SqlConnection con2 = new SqlConnection(str2);
//                SqlDataAdapter da2 = new SqlDataAdapter(Query2, con2);
//                DataTable dt2 = new DataTable();
//                da2.Fill(dt2);
//                ddltopic.DataSource = dt2;
//                ddltopic.DataTextField = "topic_name";
//                ddltopic.DataValueField = "topic_id";
//                ddltopic.DataBind();
//                ddltopic.Items.Insert(0, new System.Web.UI.WebControls.ListItem("----- Select Topic-----", "-1"));

//                String str3 = (ConfigurationManager.ConnectionStrings["xyz"].ConnectionString);
//                String Query3 = "Select * from state";
//                SqlConnection con3 = new SqlConnection(str3);
//                SqlDataAdapter da3 = new SqlDataAdapter(Query3, con3);
//                DataTable dt3 = new DataTable();
//                da3.Fill(dt3);
//                ddlstate.DataSource = dt3;
//                ddlstate.DataTextField = "state_name";
//                ddlstate.DataValueField = "statecode_id";
//                ddlstate.DataBind();
//                ddlstate.Items.Insert(0, new System.Web.UI.WebControls.ListItem("----- Select State-----", "-1"));
//               }
//              }
//        protected void ddldata_SelectedIndexChanged(object sender, EventArgs e)
//        {
//            if (ddldata.SelectedItem.Value.ToString() == "1")
//            {
//                divrtf.Visible = false;

//                divstate.Visible = false;
//                divtopic.Visible = true;
//                divud.Visible = true;
//            }

//            else if (ddldata.SelectedItem.Value.ToString() == "2")
//            {
//                divrtf.Visible = false;

//                divstate.Visible = false;
//                divtopic.Visible = true;
//                divud.Visible = true;
//            }
//            else if (ddldata.SelectedItem.Value.ToString() == "3")
//            {
//                StringBuilder str = new StringBuilder();
//                divstate.Visible = true;

//                divtopic.Visible = true;
//                divrtf.Visible = false;
//                divud.Visible = true;
//            }

//            else if (ddldata.SelectedItem.Value.ToString() == "4")
//            {
//                divrtf.Visible = true;

//                divstate.Visible = false;
//                divtopic.Visible = false;
//                divud.Visible = false;
//            }

//            else
//            {
//                divtopic.Visible = true;

//                divstate.Visible = false;
//                divrtf.Visible = false;
//                divud.Visible = false;
//            }
//        }
//      private void BindGrid()
//        {
//            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["xyz"].ConnectionString))
//            {
//                using (SqlDataAdapter da = new SqlDataAdapter("select AllQuery.id,fin_year Year,data_type_name,state_name,topic_name,AllQuery.Upload_File,AllQuery.Details  from AllQuery  inner join fin_year on fin_year.id=AllQuery.Year left join pab_data_type on pab_data_type.data_tpye_id = AllQuery.Data left join state on  state.statecode_id = CONVERT(int, AllQuery.State)left join pab_topic on pab_topic.topic_id = AllQuery.Topic", conn))
//                {
//                    using (DataTable dt = new DataTable())
//                    { 
//                        da.Fill(dt);
//                        GridView.DataSource = dt;
//                        GridView.DataBind();
//                    }
//                }
//            }
//        }
//        protected void btnsave_Click(object sender, EventArgs e)
//        {
//            String mdm = ddldata.SelectedItem.ToString();
//            switch (mdm)
//            {
//                case "NIC":
//                    using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["xyz"].ConnectionString))
//                    {
//                        using (SqlCommand cmd = new SqlCommand("insert into AllQuery(Year,Data,Topic,Upload_File)values(@Year,@Data,@Topic,@Upload_File)", con))
//                        {
//                            cmd.Parameters.AddWithValue("@Year", ddlyear.Text);
//                            cmd.Parameters.AddWithValue("@Data", ddldata.Text);
//                            cmd.Parameters.AddWithValue("@Topic", ddltopic.Text);
//                            cmd.Parameters.AddWithValue("@Upload_File",FileUpload.FileName);

//                            con.Open();
//                            cmd.ExecuteNonQuery();
//                            con.Close();
//                            Response.Write("<script>window.location='Add_pab.aspx';alert('Data Saved.')</script>");
//                        }
//                    }
//                    break;
//                case "TSG":
//                    using (SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["xyz"].ConnectionString))
//                    {
//                        using (SqlCommand cmd1 = new SqlCommand("insert into AllQuery(Year,Data,Topic,Upload_File)values(@Year,@Data,@Topic,@Upload_File)", con1))
//                        {
//                            cmd1.Parameters.AddWithValue("@Year", ddlyear.Text);
//                            cmd1.Parameters.AddWithValue("@Data", ddldata.Text);
//                            cmd1.Parameters.AddWithValue("@Topic", ddltopic.Text);
//                            cmd1.Parameters.AddWithValue("@Upload_File", FileUpload.FileName);
                               
//                            con1.Open();
//                            cmd1.ExecuteNonQuery();
//                            con1.Close();
//                            Response.Write("<script>window.location='Add_pab.aspx';alert('Data Saved.')</script>");
//                        }
//                      }
//                    break;
//                case "state":
//                    using (SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["xyz"].ConnectionString))
//                    {
//                        using (SqlCommand cmd2 = new SqlCommand("insert into AllQuery(Year,Data,Topic,Upload_File,State)values(@Year,@Data,@Topic,@Upload_File,@State)", con2))
//                        {
//                            cmd2.Parameters.AddWithValue("@Year", ddlyear.Text);
//                            cmd2.Parameters.AddWithValue("@Data", ddldata.Text);
//                            cmd2.Parameters.AddWithValue("@Topic", ddltopic.Text);
//                            cmd2.Parameters.AddWithValue("@Upload_File", FileUpload.FileName);
//                            cmd2.Parameters.AddWithValue("@State", ddlstate.SelectedItem.Value);
//                            con2.Open();
//                            cmd2.ExecuteNonQuery();
//                            con2.Close();
//                            Response.Write("<script>window.location='Add_pab.aspx';alert('Data Saved.')</script>");
//                        }
//                    }
//                    break;
//                case "Other":
//                    using (SqlConnection con3 = new SqlConnection(ConfigurationManager.ConnectionStrings["xyz"].ConnectionString))
//                    {
//                        using (SqlCommand cmd3 = new SqlCommand("insert into AllQuery(Year,Data,Details)values(@Year,@Data,@Details)", con3))
//                        {
//                            cmd3.Parameters.AddWithValue("@Year", ddlyear.Text);
//                            cmd3.Parameters.AddWithValue("@Data", ddldata.Text);
//                            cmd3.Parameters.AddWithValue("@Details", editor1.Value);
                           
//                            con3.Open();
//                            cmd3.ExecuteNonQuery();
//                            con3.Close();
//                            Response.Write("<script>window.location='Add_pab.aspx';alert('Data Saved.')</script>");
//                        }
//                    }
//                    break;
//            }
//            this.BindGrid();
//        }
//        protected void grd_RowDeleting(object sender, GridViewDeleteEventArgs e)
//        {
//           int Empid = Convert.ToInt32(GridView.DataKeys[e.RowIndex].Values[0]);
            
//            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["xyz"].ConnectionString))
//            {
//                using (SqlCommand cmd = new SqlCommand("Delete  from AllQuery where id=@Empid", con))
//                {
//                    cmd.Parameters.AddWithValue("@Empid", Empid);
                    
//                    con.Open();
//                    cmd.ExecuteNonQuery();
//                    con.Close();
//                }
//            }
//            this.BindGrid();
//        }

//        protected void grd_RowEditing(object sender, GridViewEditEventArgs e)
//        {
//            //grd.EditIndex = e.NewEditIndex;
//            //this.BindGrid();

//            StringBuilder str = new StringBuilder();
//            int Empid = Convert.ToInt32(grd.DataKeys[e.].Values[0]);
//            String Query = "Select * from AllQuery where States='Active'";
//            SqlCommand cmd = new SqlCommand(Query);

//        }
//        protected void grd_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
//        {
//            GridView.EditIndex = -1;
//            this.BindGrid();
//        }
//        protected void grd_RowUpdating(object sender, GridViewUpdateEventArgs e)
//        {
//            GridViewRow row = grd.Rows[e.RowIndex];
//            int Empid = Convert.ToInt32(grd.DataKeys[e.RowIndex].Values[0]);
//            string Year =  (row.FindControl("txtyear") as TextBox).Text;
//            string Data =  (row.FindControl("txtdata") as TextBox).Text;
//            string Topic = (row.FindControl("txttopic") as TextBox).Text;
//            string File =  (row.FindControl("txtfile") as TextBox).Text;
//            string State = (row.FindControl("txtstate") as TextBox).Text;
//            string RTf =   (row.FindControl("txtrtf") as TextBox).Text;

//            String constr = (ConfigurationManager.ConnectionStrings["xyz"].ConnectionString);
//            String query = "update AllQuery set Year=@Year,Data=@Data,Topic=@Topic,Upload_File=@Upload_File,State=@State,Details=@Details where id=@empid";
//            using (SqlConnection con = new SqlConnection(constr))
//            {
//                using (SqlCommand cmd = new SqlCommand(query))
//                {
//                    cmd.Parameters.AddWithValue("@empid", Empid);
//                    cmd.Parameters.AddWithValue("@Year", Year);
//                    cmd.Parameters.AddWithValue("@Data", Data);
//                    cmd.Parameters.AddWithValue("@Topic", Topic);
//                    cmd.Parameters.AddWithValue("@Upload_File", File);
//                    cmd.Parameters.AddWithValue("@State", State);
//                    cmd.Parameters.AddWithValue("@Details", RTf);

//                    cmd.Connection = con;
//                    con.Open();
//                    cmd.ExecuteNonQuery();
//                    con.Close();
//              }
//            }
//            grd.EditIndex = -1;
//            this.BindGrid();
//        }
//      }
//    }

