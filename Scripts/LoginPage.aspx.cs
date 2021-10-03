using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace hospital1.Scripts
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            label3.Visible = false;
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlcon = new SqlConnection(@"Data Source=DUDE\SQLEXPRESS;Initial Catalog=LoginHMS;Integrated Security=True;"))
            {
                sqlcon.Open();
                string query = "SELECT COUNT(1) FROM LoginPageForMe WHERE username=@username AND password=@password";
                SqlCommand sqlcmd = new SqlCommand(query, sqlcon);
                sqlcmd.Parameters.AddWithValue("@username", txtusername.Text.Trim());
                sqlcmd.Parameters.AddWithValue("@password", txtpassword.Text.Trim());
                int count = Convert.ToInt32(sqlcmd.ExecuteScalar());
                if (count == 1)
                {
                    Session["username"] = txtusername.Text.Trim();
                    Response.Redirect("Index.aspx");
                }
                else
                {
                    label3.Visible = true;
                }
            }
        }
    }
}