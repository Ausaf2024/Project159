using System;

namespace Project159
{
    public partial class factorial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             int factorial = 1;
            int n = 5;
            for(int i = 1; i <= n; i++)
            {
                factorial = factorial * i;
            }
            Response.Write("value of factorial"+" " + factorial);
        }
    }
}