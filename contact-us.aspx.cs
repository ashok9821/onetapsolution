using System;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;

public partial class contact_us : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        // Validate CAPTCHA
        if (this.Session["CaptchaImageText"] != null && txtCaptcha.Text.Trim().ToLower() == this.Session["CaptchaImageText"].ToString().ToLower())
        {
            lblERR.Text = "";
            string currentDateTime = DateTime.Now.ToString("dd-MMM-yyyy");

            // Get user's IP address
            string userIPAddress = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
            if (string.IsNullOrEmpty(userIPAddress))
            {
                userIPAddress = Request.ServerVariables["REMOTE_ADDR"];
            }

            // Load email template and replace placeholders with actual values
            string mbody = System.IO.File.ReadAllText(HttpContext.Current.Server.MapPath(HttpContext.Current.Request.ApplicationPath).Replace("/", "\\") + "\\mailtemplates\\contactmailtemplate.html");
            mbody = mbody.Replace("_LOGOURL_", ConfigurationManager.AppSettings["LOGOURL"]);
            mbody = mbody.Replace("_DATE_", currentDateTime);
            mbody = mbody.Replace("_NAME_", txtFullName.Text);
            mbody = mbody.Replace("_EMAIL_", txtEmail.Text);
            mbody = mbody.Replace("_PHONE_", txtContact.Text);
            mbody = mbody.Replace("_Message_", txtMessage.Text);
            mbody = mbody.Replace("_IPADDRESS_", userIPAddress);

            // Send email
            int emailSent = MailToSendSite(
                ConfigurationManager.AppSettings["AdminEmail"].ToString(),
                "academy - Contact Us",
                ConfigurationManager.AppSettings["Username"].ToString(),
                mbody,
                null,
                null,
                ConfigurationManager.AppSettings["Host"].ToString(),
                ConfigurationManager.AppSettings["Username"].ToString(),
                ConfigurationManager.AppSettings["Password"].ToString(),
                Convert.ToInt32(ConfigurationManager.AppSettings["Port"]),
                Convert.ToBoolean(ConfigurationManager.AppSettings["EnableSSL"]),
                txtEmail.Text
            );

            if (emailSent == 1)
            {
                // Redirect on successful submission
                Response.Redirect("thank-you.html");
            }
            else
            {
                lblERR.Text = "There was a problem sending your inquiry. Please try again later.";
            }
        }
        else
        {
            // If CAPTCHA validation fails, display an error message
            lblERR.Text = "Invalid Captcha Code Entered.";
            string script = @"<script> window.location.href = '#targetSection'; </script>";
            ClientScript.RegisterStartupScript(GetType(), "ScrollToSection", script);
        }
    }

    public int MailToSendSite(string tomail, string mailsubject, string frommail, string bodymail, string ccmail, string bccmail, string hostname, string musername, string mpass, int port, bool enableSSL, string replyTo)
    {
        try
        {
            ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls | SecurityProtocolType.Tls11 | SecurityProtocolType.Tls12;

            // Setup the SMTP client and email message
            SmtpClient smtpClientC = new SmtpClient();
            MailMessage objMailC = new MailMessage();
            MailAddress objMailC_fromaddress = new MailAddress(frommail);
            MailAddress objMailC_toaddress = new MailAddress(tomail);

            objMailC.From = objMailC_fromaddress;
            objMailC.To.Add(objMailC_toaddress);

            if (!string.IsNullOrEmpty(replyTo))
            {
                objMailC.ReplyToList.Add(new MailAddress(replyTo));
            }

            objMailC.IsBodyHtml = true;
            objMailC.Subject = mailsubject;
            objMailC.Body = bodymail;

            if (!string.IsNullOrEmpty(ccmail))
            {
                objMailC.CC.Add(ccmail);
            }

            if (!string.IsNullOrEmpty(bccmail))
            {
                objMailC.Bcc.Add(bccmail);
            }

            // Configure SMTP client
            smtpClientC.Host = hostname;
            smtpClientC.Port = port;
            smtpClientC.EnableSsl = enableSSL;
            smtpClientC.UseDefaultCredentials = false;
            smtpClientC.Credentials = new NetworkCredential(musername, mpass);

            smtpClientC.Send(objMailC); // Send the email

            return 1; // Email sent successfully
        }
        catch (Exception ex)
        {
            HttpContext.Current.Response.Write(ex.StackTrace + "<BR>" + ex.Message + "<BR>" + ex.InnerException);
            return 0; // Email sending failed
        }
    }
}
