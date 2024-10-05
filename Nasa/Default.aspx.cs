using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nasa
{
    public partial class _default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LearnMoreButton_Click(object sender, EventArgs e)
        {
            // Handle Learn More button click, for example, redirect to a detailed page
            Response.Redirect("details.aspx");
        }

        protected void DataSetLearnMoreButton_Click(object sender, EventArgs e)
        {
            // Handle PACE Data Set Learn More button click
            Response.Redirect("pace-dataset.aspx");
        }

        protected void ExploreButton_Click(object sender, EventArgs e)
        {
            // Handle Explore button click
            Response.Redirect("explorer.aspx");
        }

        protected void MoreNewsButton_Click(object sender, EventArgs e)
        {
            // Handle More News button click
            Response.Redirect("news.aspx");
        }

    }
}