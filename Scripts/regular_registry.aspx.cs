using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
namespace hospital1.Scripts
{
    public partial class regular_registry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-8848HFL7\SQLEXPRESS;Initial Catalog=Hospital;Integrated Security=True");
            string query = "select Name,email,Gender,Blood  from pat_signup  where Name like +'"+TextBox1.Text+"'+ '%'";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            GridView1.Visible = true;
            if(e.Row.RowType==DataControlRowType.DataRow)
            {
                e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridView1, "Select$" + e.Row.RowIndex);
                e.Row.ToolTip = "Click to select this row";
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach(GridViewRow row in GridView1.Rows)
            {
                if(row.RowIndex==GridView1.SelectedIndex)
                {
                    row.BackColor = ColorTranslator.FromHtml("#A1DCF2");
                    row.ToolTip = string.Empty;
                    string pname, pmail, pgen, pbl;
                    pname = row.Cells[0].Text;
                    pmail = row.Cells[1].Text;
                    pgen = row.Cells[2].Text;
                    pbl = row.Cells[3].Text;
                    TextBox4.Text=pname;
                    TextBox5.Text = pmail;
                    TextBox6.Text = pgen;
                    TextBox7.Text = pbl;
                }
                else
                {
                    row.BackColor = ColorTranslator.FromHtml("#FFFFFF");
                    row.ToolTip = "Click to select this row";
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-8848HFL7\SQLEXPRESS;Initial Catalog=Hospital;Integrated Security=True");
            string query = "insert into regular_registry(Name,Patientid,Blood, Gender,fees,date_of_visit,doctor)values('" + TextBox4.Text + "', '" + TextBox5.Text + "', '" + TextBox7.Text + "','" + TextBox6.Text + "', '" + TextBox3.Text + "',getdate(), '" + TextBox2.Text + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('ENTRY REGISTERED SUCCESSFULLY')", true);
                con.Close();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
                GridView1.Visible = false;
            }
            catch
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('ERROR IN ENTRIES.RE REGISTER')", true);
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
            }
        }
    }
}