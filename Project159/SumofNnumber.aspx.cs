using System;

namespace Project159
  {
    public partial class SumofNnumber : System.Web.UI.Page
      {
        protected void Page_Load(object sender, EventArgs e)
        {
          sumofNnumber(5);
        }
        public void sumofNnumber( int n)
           {
            int sum = 0;
            for(int i = 0; i < n; i++)
            {
             sum = sum + i;
            }
            Response.Write("value of N"+ " "+sum);
        }
    }
}