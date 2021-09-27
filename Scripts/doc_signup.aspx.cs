using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MailKit;
using System.IO;
using MailKit.Net.Smtp;
using System.Data.SqlClient;
using MimeKit;
namespace hospital1.Scripts
{
    public partial class WebForm1 : System.Web.UI.Page
    {
    
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-8848HFL7\SQLEXPRESS;Initial Catalog=Hospital;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("insert into doc_signup(Name,email,contact,license,dob,licensefile,password)values('"+TextBox1.Text+"','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + TextBox2.Text + "','" + TextBox7.Text + "','" + TextBox2.Text + "')", con);
            
            con.Open();
            String gmail = "shar08042701@gmail.com";
            string pwd = "Harshitha";
            SmtpClient client = new SmtpClient();
            try
            {
                MimeMessage message = new MimeMessage();
                string sentto = TextBox3.Text;
                message.From.Add(new MailboxAddress("Shankar", "shar08042701@gmail.com"));
                message.To.Add(MailboxAddress.Parse(sentto));
                message.Subject = "Testing mail";
                message.Body = new TextPart("plain")
                {
                    Text = @"Welcome to Nisha Hospitals
                         Dr.'" + TextBox1.Text + "'"


                };
                client.Connect("smtp.gmail.com", 465, true);
                client.Authenticate(gmail, pwd);
                cmd.ExecuteNonQuery();
                FileUpload1.SaveAs("e:/license/"+FileUpload1.FileName.ToString());

                client.Send(message);
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Doctor Registration successful')", true);
            }
            catch 
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Error occured re register')", true);
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
            TextBox4.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
        }
    }
}