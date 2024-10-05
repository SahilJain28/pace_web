using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nasa
{
    public partial class stimulation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSimulation1_Click(object sender, EventArgs e)
        {
            // Logic for starting the ocean temperature monitoring simulation
            Response.Write("<script>alert('Starting Ocean Temperature Monitoring Simulation!');</script>");
        }
    }
}