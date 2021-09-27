using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MailKit.Net.Smtp;
using MailKit;
using MimeKit;
using System.Data.SqlClient;

namespace hospital1.Scripts
{
    public partial class patientsignup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-8848HFL7\SQLEXPRESS;Initial Catalog=Hospital;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("insert into pat_signup(Name,Dob,email,Gender,Mobile,Blood,pwd)values('"+TextBox1.Text+ "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList2.Text + "','" + TextBox5.Text + "','" + DropDownList1.Text + "','" + TextBox2.Text + "')", con);
            con.Open();
            MimeMessage message = new MimeMessage();
            string sentto = TextBox3.Text;
            message.From.Add(new MailboxAddress("NISHA HOSPITALS", "shar08042701@gmail.com"));
            message.To.Add(MailboxAddress.Parse(sentto));
            message.Subject = "User Registration successful";
            message.Body = new TextPart("plain")
            {
                Text = @"Welcome to Nisha hospitals
                        NAME:"+TextBox1.Text+"" 
                        
            };
            String gmail = "shar08042701@gmail.com";
            string pwd = "Harshitha";
            SmtpClient client = new SmtpClient();
            try
            {
                
                client.Connect("smtp.gmail.com", 465, true);
                client.Authenticate(gmail, pwd);
                client.Send(message);
                cmd.ExecuteNonQuery();
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('USER Registration successful')", true);
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Error occured please Reregister')", true);
            }
            finally
            {
                client.Disconnect(true);
                client.Dispose();
            }
            con.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox5.Text = "";
        }
    }
}