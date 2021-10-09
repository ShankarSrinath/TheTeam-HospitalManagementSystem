using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace hospital1.Scripts
{
    public partial class docsched : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-8848HFL7\SQLEXPRESS;Initial Catalog=Hospital;Integrated Security=True");
            con.Open();
            string query = "select *from doc_signup where Name='" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            if(count>0)
            {
                Response.Write("Doctor is there");
            }
            else
            {
                Response.Write("no doctor");
            }
        }
    }
}