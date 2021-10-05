using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace hospital1.Scripts
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string user = txtdoctorid.Text;
            string pwd = txtpassword.Text;
            if (user == "doc" && pwd == "1234")
            {
                Response.Write("SUCCESS");
            }
            else
            {
                Response.Write("Reenterrr");
            }
        }
    }
}
