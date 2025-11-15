<%@ Page Title="" Language="C#" MasterPageFile="~/onetap-solutions.master" AutoEventWireup="true" CodeBehind="contact-us.aspx.cs" Inherits="contact_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <section id="inner-banner" class="content-down">
     <div class="container">
         <div class="row">
             <div class="banner-heading">
                 <h2 class="text-white text-center mb-0">Contact Us</h2>
             </div>
         </div>
     </div>
 </section>
 <div id="form">
     <div class="container py-5">
         <div class="row py-5">
             <h2 class="text-center pb-3">Get In  <span>Touch</span></h2>

             <div class="col-lg-6">
                 <div class="map-box">
                     <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d59062.81682292693!2d73.20678324863276!3d22.299721200000025!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395fc50820dda675%3A0x5d28c60713a8d6d7!2sAkshar%20Aashray!5e0!3m2!1sen!2sin!4v1739446910954!5m2!1sen!2sin"
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
                     <asp:Button ID="btnSubmit" runat="server" CssClass="btn-2 py-3 border-0" Text="Submit" OnClick="btnSubmit_Click" />
                 </div>

                 <asp:Label ID="lblERR" runat="server" CssClass="text-danger"></asp:Label>

             </div>

         </div>
     </div>
 </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="extrajs" Runat="Server">
    <script>
    function isNumber(evt) {
        var charCode = (evt.which) ? evt.which : event.keyCode;
        if (charCode < 48 || charCode > 57) {
            return false;
        }
        return true;
    }

    </script>
</asp:Content>

