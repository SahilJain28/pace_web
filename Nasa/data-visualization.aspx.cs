using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nasa
{
    public partial class data_visualization : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void FetchData_Click(object sender, EventArgs e)
        {
            string selectedDataset = dataSelect.SelectedValue;
            // Add logic to fetch and display data based on the selected dataset.
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            string email = emailInput.Text;
            string password = passwordInput.Text;
            // Add login validation logic here.
        }
    }
}