using System;

 namespace Project159
  {
   public partial class swip2no : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //swip(20, 10);
            int temp,a=5,b=6;
               temp = a;
               a = b;
               b = temp;
               Response.Write("value of a="+ a);
               Response.Write("value of b=" + b);
        }
        //public void swip(int a,int b)
        //    {
        //    int temp;
        //    temp = a;
        //    a = b;
        //    b = temp;
        //    Response.Write("value of a"+  a);
        //    Response.Write("value of a" + b);
        //}
    }
  }