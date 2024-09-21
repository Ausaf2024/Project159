using System;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Project822
{
    public partial class firstpage : System.Web.UI.Page
    {
     SqlConnection constr = new SqlConnection(ConfigurationManager.ConnectionStrings["xyz"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
          {
            if (!this.IsPostBack)
            {
                this.BindGrid();
            }
           }
        private void BindGrid()
        {
       // string constr = ConfigurationManager.ConnectionStrings["abc"].ConnectionString;
       // string query = "SELECT * FROM student";
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["xyz"].ConnectionString))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM student", con))
                {
                  using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
                
            }
          }
        protected void Insert(object sender, EventArgs e)
        {
          string name = txtName.Text;
          string age = txtage.Text;
          String address = txtaddress.Text;
          txtName.Text = "";
          txtage.Text = "";
          txtaddress.Text = "";

            string query = "INSERT INTO student VALUES(@Name, @age,@address)";
            string constr = ConfigurationManager.ConnectionStrings["xyz"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                 cmd.Parameters.AddWithValue("@Name", name);
                 cmd.Parameters.AddWithValue("@age", age);
                 cmd.Parameters.AddWithValue("@address", address);
                 cmd.Connection = con;
                 con.Open();
                 cmd.ExecuteNonQuery();
                 con.Close();
                 Response.Write("<script>window.location='firstpage.aspx';alert('Data Saved.')</script>");
               }
             }
        this.BindGrid();
        }
        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            this.BindGrid();
        }
        protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int studentId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string name = (row.FindControl("txtName") as TextBox).Text;
            String age = (row.FindControl("txtAge") as TextBox).Text;
            string address = (row.FindControl("txtAddress") as TextBox).Text;
            string query = "UPDATE student SET Name=@Name, Age=@Age,Address=@Address WHERE Id=@studentId";
            string constr = ConfigurationManager.ConnectionStrings["xyz"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query)) 
                {
                    cmd.Parameters.AddWithValue("@studentId",studentId);
                    cmd.Parameters.AddWithValue("@Name",name);
                    cmd.Parameters.AddWithValue("@Age",age);
                    cmd.Parameters.AddWithValue("@address",address);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            GridView1.EditIndex = -1;
            this.BindGrid();
        }
        protected void OnRowCancelingEdit(object sender, EventArgs e)
        {
          GridView1.EditIndex = -1;
          this.BindGrid();
        }
        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int studentid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string query = "DELETE FROM student WHERE id=@studentid";
            string constr = ConfigurationManager.ConnectionStrings["xyz"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    cmd.Parameters.AddWithValue("@studentid", studentid);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            this.BindGrid();
          }
        //this code pages index for example 1,2,3...
        //protected void OnPaging(object sender, GridViewPageEventArgs e)
        //{
        //    GridView1.PageIndex = e.NewPageIndex;
        //    this.BindGrid();
        //}
    }
}

    