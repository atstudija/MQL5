using System;
using Gtk;
using System.Net;
using System.Net.Mail;
public partial class MainWindow : Gtk.Window
{
    public MainWindow() : base(Gtk.WindowType.Toplevel)
    {
        Build();
    }

    protected void OnDeleteEvent(object sender, DeleteEventArgs a)
    {
        Application.Quit();
        a.RetVal = true;
    }

    protected void ButtonSend(object sender, EventArgs e)
    {

        try
        {
            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

            mail.From = new MailAddress("ydefinexlr2@gmail.com");
            mail.To.Add("andris.tapins@gmail.com");
            mail.Subject = "Test Mail";
            mail.Body = "Cau!";

            SmtpServer.Port = 587;
            SmtpServer.Credentials = new System.Net.NetworkCredential("definexlr2@gmail.com", "antaerta@");
            SmtpServer.EnableSsl = true;

            SmtpServer.Send(mail);
            MessageDialog md = new MessageDialog(null, DialogFlags.DestroyWithParent, MessageType.Info, ButtonsType.Ok, "Mail Sent!");
            md.Run();
            md.Destroy();
        }
        catch (Exception ex)
        {
            MessageDialog md = new MessageDialog(null, DialogFlags.DestroyWithParent, MessageType.Error, ButtonsType.Ok, ex.ToString());
            md.Run();
            md.Destroy();



        }
    }


    protected void OnEntry1Changed(object sender, EventArgs e)
    {
    }

    protected void OnButton2Clicked(object sender, EventArgs e)
    {
        try
        {
            var fromAddress = new MailAddress("definexlr2@gmail.com", "Definexlr2");
            var toAddress = new MailAddress("andris.tapins@gmail.com", "MeMe");
            const string fromPassword = "tanutasir@";
            const string subject = "test";
            const string body = "Hey now!!";

            var smtp = new SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                Credentials = new NetworkCredential(fromAddress.Address, fromPassword),
                Timeout = 20000
            };
            using (var message = new MailMessage(fromAddress, toAddress)
            {
                Subject = subject,
                Body = body
            })
            {
                smtp.Send(message);
            }
        }
        catch (Exception ex)
        {
            MessageDialog md = new MessageDialog(null, DialogFlags.DestroyWithParent, MessageType.Error, ButtonsType.Ok, ex.ToString());
            md.Run();
            md.Destroy();



        }

    }
}
