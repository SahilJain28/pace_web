﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nasa
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnNext_Click(object sender, EventArgs e)
        {
            // Add your logic here
            string emailOrPhone = txtEmailPhone.Text;
            if(emailOrPhone == "admin@123" || emailOrPhone == "123456789")
            {
                Response.Redirect("default.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid email or phone number');", true);
            }
            // Handle login logic
        }
    }
}