using System;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace WebApplication1
{
    public partial class Employee : System.Web.UI.Page
    {
      SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["xyz"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
              this.BindGrid();
            }
        }

        private void BindGrid()
        {
           // string con = ConfigurationManager.ConnectionStrings["abc"].ConnectionString;
           // string query = "SELECT * FROM Employeetable";
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["xyz"].ConnectionString))
            {
             using (SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Employeetable", con))
                {
                  using (DataTable dt = new DataTable())
                    {
                       
                      da.Fill(dt);
                      grd.DataSource = dt;
                      grd.DataBind();
                    }
                }
            }
        }
        protected void btnsave_Click(object sender, EventArgs e)
        {
          //String name = txtname.Text;
          //String city = txtcity.Text;
          //String state = txtstate.Text;
          //String phone = txtphoneno.Text;
          //String salary = txtsalary.Text;
          //String age = txtage.Text;
          //String gende = gender.SelectedItem.Value.ToString();

          //  txtname.Text = "";
          //  txtcity.Text = "";
          //  txtstate.Text = "";
          //  txtphoneno.Text = "";
          //  txtsalary.Text = "";
          //  txtage.Text = "";
          //  gender.SelectedIndex = 0;

           // string con = (ConfigurationManager.ConnectionStrings["abc"].ConnectionString);
            //string query = "Insert into employeetable values(@Name,@City,@State,@Phone,@Salary,@Age,@Gender)";
            using (SqlConnection constr = new SqlConnection(ConfigurationManager.ConnectionStrings["xyz"].ConnectionString))
              {
                using (SqlCommand cmd = new SqlCommand("Insert into employeetable values(@Name,@City,@State,@Phone,@Salary,@Age,@Gender)", constr))
                  { 
                    cmd.Parameters.AddWithValue("@Name", txtname.Text);
                    cmd.Parameters.AddWithValue("@City", txtcity.Text);
                    cmd.Parameters.AddWithValue("@State", txtstate.Text);
                    cmd.Parameters.AddWithValue("@Phone", txtphoneno.Text);
                    cmd.Parameters.AddWithValue("@Salary", txtsalary.Text);
                    cmd.Parameters.AddWithValue("@Age", txtage.Text);
                    cmd.Parameters.AddWithValue("@Gender", gender.SelectedItem.Value.ToString());

                    constr.Open();
                    cmd.ExecuteNonQuery();
                    constr.Close();
                    Response.Write("<script>window.location='Employee.aspx';alert('Data Saved.')</script>");
                }
              }
            this.BindGrid();
           }
        protected void grd_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
          int employeeid = Convert.ToInt32(grd.DataKeys[e.RowIndex].Values[0]);
           // String constr = (ConfigurationManager.ConnectionStrings["abc"].ConnectionString);
           // String query = "Delete  from Employeetable where id=@employeeid";
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["xyz"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Delete  from Employeetable where id=@employeeid" , con))
                {
                  cmd.Parameters.AddWithValue("@employeeid", employeeid);
                    //cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>window.location='Employee.aspx';alert('Successfully Delete.')</script>");
                }
            }
            this.BindGrid();
           }
        protected void grd_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grd.EditIndex = e.NewEditIndex;
            this.BindGrid();
        }
        protected void grd_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grd.EditIndex = -1;
            this.BindGrid();
        }
        protected void grd_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = grd.Rows[e.RowIndex];
            int Employeeid = Convert.ToInt32(grd.DataKeys[e.RowIndex].Values[0]);
            string name = (row.FindControl("txtName") as TextBox).Text;
            string city = (row.FindControl("txtcity") as TextBox).Text;
            string state = (row.FindControl("txtstate") as TextBox).Text;
            string phone = (row.FindControl("txtphone") as TextBox).Text;
            string salary = (row.FindControl("txtsalary") as TextBox).Text;
            string age = (row.FindControl("txtage") as TextBox).Text;
            string gende = (row.FindControl("txtgender") as TextBox).Text;
            String constr= (ConfigurationManager.ConnectionStrings["xyz"].ConnectionString);
    String query = "update employeetable set name=@name,city=@city,state=@state,phone=@phone,salary=@salary,age=@age,gender=@gender where id=@employeeid";
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    cmd.Parameters.AddWithValue("@employeeid", Employeeid);
                    cmd.Parameters.AddWithValue("@name", name);
                    cmd.Parameters.AddWithValue("@city", city);
                    cmd.Parameters.AddWithValue("@state", state);
                    cmd.Parameters.AddWithValue("@phone", phone);
                    cmd.Parameters.AddWithValue("@salary", salary);
                    cmd.Parameters.AddWithValue("@age", age);
                    cmd.Parameters.AddWithValue("@gender", gender.SelectedItem.Value.ToString());
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            grd.EditIndex = -1;
            this.BindGrid();
        }
    }
}