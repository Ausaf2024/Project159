﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project159
{
    public partial class Homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnloged_Click(object sender, EventArgs e)
        {
            Response.Write("<script>window.location='login1.aspx';</script>");
        }
    }
}