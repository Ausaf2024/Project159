using System;

namespace Project159
{
    public partial class StringRevers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         Revers("Ausaf");
         Revers("Shahin");
         Revers("Saba");
        }
       public void Revers( string str1)
        {
            string str2=" ";
            for (int i = str1.Length - 1; i >= 0; i--)
            {
                str2 = str2 + str1[i];
            }
            Response.Write("value of str2 revers"+"" + str2);
          }
         }
       }