using System;
namespace Project159
{
   public partial class primeno : System.Web.UI.Page
   {
      protected void Page_Load(object sender, EventArgs e)
        {
            Primeno(6);
        }
        public void Primeno(int n) 
        {
            if (n % 2 == 0)
                {
                    Response.Write("this is a primeno=" + " " + n);
                }
                else
                {
                    Response.Write("this is not primeno=" + " " + n);
                }
            }
        }
    }
