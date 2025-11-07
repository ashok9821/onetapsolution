<%@ Page Title="Contact One Tap Solution | Get in Touch for Website & App Development" Language="C#" MasterPageFile="~/onetap-solutions.master" AutoEventWireup="true" CodeFile="contact-website-design-mobileapp-birgunj-vadodara.aspx.cs" Inherits="contact_website_design_mobileapp_birgunj_vadodara" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta name="description" content="Contact One Tap Solution — India’s trusted website design and mobile app development company. Reach out for web development, app creation, or digital marketing support today." />
    <meta name="keywords" content="contact One Tap Solution, contact website design company India, contact app developer, get quote One Tap Solution, tech company contact India" />
    <meta name="author" content="One Tap Solution" />
    <meta name="robots" content="index, follow" />

    <!-- Open Graph -->
    <meta property="og:title" content="Contact One Tap Solution | Get in Touch for Website & App Development" />
    <meta property="og:description" content="Have a project in mind? Contact One Tap Solution for expert web design, app development, and digital marketing services in India." />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <div class="inner-banner contact-us">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 inner-tittle text-sm-start text-center">
                    <h1 class="banner-title text-white">Contact Us</h1>
                </div>
            </div>
        </div>
    </div>

    <div id="contact-us">
        <div class="container py-5">
            <div class="row">
                <div class="col-lg-4 col-sm-6 pt-4">
                    <div class="contact-box py-4 h-100 text-center">
                        <i class="fa fa-volume-control-phone contact-icon"></i>
                        <h3 class="py-2 mb-0">Call Us</h3>
                        <p class="mb-0">
                            <a href="tel:+91 9122435529">+91 9122435529 (India)</a><br>
                            <a href="tel:+977 9816279800">+977 9816279800 (Nepal)</a>
                        </p>
                    </div>
                </div>

                <div class="col-lg-4 col-sm-6 pt-4">
                    <div class="contact-box py-4 h-100 text-center">
                        <i class="fa fa-envelope contact-icon"></i>
                        <h3 class="py-2 mb-0">Email</h3>
                        <p class="mb-0">
                            <a href="mailto:info.onetapsolution@gmail.com">info.onetapsolution@gmail.com</a>
                            
                        </p>
                    </div>
                </div>

                <div class="col-lg-4 col-sm-6 pt-4">
                    <div class="contact-box py-4 h-100 text-center">
                        <i class="fa fa-map-signs contact-icon"></i>
                        <h3 class="py-2 mb-0">Location</h3>
                        <p class="mb-0">
                           <%-- <b>Nepal</b><br />--%>
                            155, Akshar Township, Waghodia 391760 <br /> Vadodara, Gujarat, India 
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- ✅ Converted to standard HTML form -->
    <div id="contactform">
        <div class="container py-5">
            <div class="row pb-4">
                <h2 class="text-center">Reach Out <span>Today!</span></h2>

                 <div class="col-lg-6">
     <div class="map-box">
         <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3691.3331327927!2d73.40406567511856!3d22.303237479684515!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395fd9c1582eee09%3A0xd7a25f08685b2e8f!2s8C34%2B7MR%2C%20Waghodia%2C%20Gujarat%20391760!5e0!3m2!1sen!2sin!4v1762499573648!5m2!1sen!2sin"
             height="450" style="border: 0; border-radius: 10px; width: 100%"
             allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
       
     </div>

 </div>

 

 <div class="col-lg-6 pt-lg-0 pt-5">

     <div class="form-floating mb-3">
         <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" placeholder="Enter name"></asp:TextBox>
         <label for="txtName">Name</label>
         <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtFullName" CssClass="text-danger" ErrorMessage="Name is required." Display="Dynamic" />
     </div>

     <div class="form-floating mt-3 mb-3">
         <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter email"></asp:TextBox>
         <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" CssClass="text-danger" ErrorMessage="Email is required." Display="Dynamic" />
         <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" CssClass="text-danger" ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" ErrorMessage="Enter a valid Email." Display="Dynamic" />
         <label for="txtEmail">Email</label>
     </div>

     <div class="form-floating mt-3 mb-3">
         <asp:TextBox ID="txtContact" runat="server" CssClass="form-control" placeholder="Enter phone no."></asp:TextBox>
         <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtContact" CssClass="text-danger" ErrorMessage="Phone number is required." Display="Dynamic" />
         <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtContact" CssClass="text-danger" ValidationExpression="^\d{10}$" ErrorMessage="Enter a valid 10-digit phone number." Display="Dynamic" />
         <label for="txtPhone">Phone No.</label>
     </div>

     <div class="form-floating">
         <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine" placeholder="Enter your message" Height="100px"></asp:TextBox>
         <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ControlToValidate="txtMessage" CssClass="text-danger" ErrorMessage="Message is required." Display="Dynamic" />
         <label for="txtMessage">Message</label>
     </div>

     <div class="row">
         <div class="col-lg-6">
             <div class="form-floating mt-3 mb-3">
                 <asp:TextBox ID="txtCaptcha" runat="server" CssClass="form-control" placeholder="Enter Captcha"></asp:TextBox>
                 <label for="txtCaptcha">Enter Captcha</label>
                 <asp:RequiredFieldValidator ID="rfvCaptcha" runat="server" ControlToValidate="txtCaptcha" CssClass="text-danger" ErrorMessage="Captcha is required." Display="Dynamic" />
             </div>
         </div>
         <div class="col-lg-6">
             <div class="mt-3 mb-3">
                 <img src="CImage.aspx" id="capimg" alt="captcha" style="border-radius: 10px; width: 200px;" />
             </div>
         </div>
     </div>


     <div class="text-lg-start text-center mt-4">
         <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary" Text="Submit" OnClick="btnSubmit_Click" />
     </div>

     <asp:Label ID="lblERR" runat="server" CssClass="text-danger"></asp:Label>

 </div>
            </div>
        </div>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="extrajs" Runat="Server">
</asp:Content>
