using System;

namespace Project159
{
    public partial class array : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int[] array = { 1, 2, 3, 4, 5, 6, 7, 8, 9 };
            for(int i = array.Length-1;i>=0; i--)
            {
                Response.Write(array[i]);
            }
        }
    }
}