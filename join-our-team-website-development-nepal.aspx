<%@ Page Title="" Language="VB" MasterPageFile="~/onetap-solutions.master" AutoEventWireup="false" CodeBehind="join-our-team-website-development-nepal.aspx.vb" Inherits="join_our_team_website_development_nepal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <div class="inner-banner join-our-team">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 inner-tittle text-sm-start text-center">
                    <h1 class="banner-title text-white">Join our team</h1>
                    <%--<p class="text-white pb-sm-0 pb-5"> <a href="Default.aspx" class="text-white">Home</a>&nbsp;/&nbsp;Contact Us</p>--%>
                </div>
            </div>
        </div>
    </div>

    <div id="team">
        <div class="container py-5">
            <div class="row">
                <div class="col-lg-8">
                     <div class="form-floating mb-3 mt-5">
                                <input type="text" class="form-control" id="name" placeholder="Your Name" required="">
                                <label for="email">Name</label>
                            </div>

                    <div class="row  mb-3">
                        <div class="col-md-6">
                            <div class="form-floating">
                                <input type="email" class="form-control" id="email" placeholder="Your Email" required="">
                                <label for="email">Email</label>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-floating">
                                <input type="text" class="form-control" id="phone" placeholder="Phone No" required="">
                                <label for="phone">Phone No</label>
                            </div>
                        </div>
                        <div class="col-12 my-3">
                            <select class="form-select py-3">
                                <option>Select Position</option>
                                <option>Web Developer</option>
                                <option>UI/UX Designer</option>
                                <option>flutter Developer</option>
                                <option>Android Developer</option>
                                <option>Graphic Design/option>
                            </select>
                    </div>

                    <div class="row  mb-3 pe-0">
                     
                        <div class="col-12 pe-0">
                            <div class="form-floating ">
                        <textarea class="form-control" placeholder="Your Message" id="message" style="height: 120px;" required=""></textarea>
                        <label for="message">Let us know why you want to join us?</label>
                    </div>
                            
                        </div>
                        <div class="mt-3 pe-0">
                            <label for="message" class="mb-2">Upload Your CV</label>
                             <input  type="file" class="form-control py-3" placeholder="" required="">
                        </div>
                       
                         <div class="col-sm-8 mt-3">
                            <div class="form-floating ">
                            <input type="text" class="form-control" id="captcha" placeholder="Type captcha here" required="">
                            <label for="captcha">Type captch here</label>
                        </div>
                        </div>
                        <div class="col-sm-4  mt-3 pe-0">
                                <input type="text" class="form-control py-3" required="">
                        </div>
                    </div>

                    

                  
                    <div class="text-lg-start text-center">
                        <button type="submit" class="btn ">Send Message</button>
                    </div>
                </div>
            </div>
                <div class="col-lg-4">
                    <div class=" mt-5">
                         <div class="contact-box py-4 h-100">
                        <div class="contact-icon text-center">
                        <i class="fa fa-volume-control-phone contact-icon" aria-hidden="true"></i>
                    </div>
                        <div class="contact-text text-center">
                        <h3 class="py-2 mb-0">Call Us</h3>
                        <p class="mb-0">                     
							<a href="tel:+91 9122435529 ">+91 9122435529 (India)</a><br>
                            <a href="tel:+977 9816279800">+977 9816279800 (Nepal)</a>
                          
                        </p>
                    </div>
                    </div>

                         <div class="contact-box py-4 h-100 mt-4">
                        <div class="contact-icon text-center">
                            <i class="fa fa-envelope contact-icon" aria-hidden="true"></i>
                       
                    </div>
                        <div class="contact-text text-center">
                        <h3 class="py-2 mb-0">Email</h3>
                        <p class="mb-0">                     
							<a href="mailto:info@onetapsolutions.com">info@onetapsolutions.com</a><br>
                            <a href="mailto:hr@onetapsolutions.com">hr@onetapsolutions.com</a>
                          
                        </p>
                    </div>
                    </div>
                         <div class="contact-box py-4 h-100 mt-4">
                        <div class="contact-icon text-center">
                            <i class="fa fa-map-signs contact-icon" aria-hidden="true"></i>
                            
                       
                    </div>
                        <div class="contact-text text-center">
                        <h3 class="py-2 mb-0">Location</h3>
                        <p class="mb-0"> 
                            <b>Nepal</b><br />
							Vishuwa-44312, Near Vishuwa Hotel<br />Birgunj, Parsa, Nepal
                          
                        </p>
                          <%--  <p class="mb-0"> 
                            <b>India</b><br />
							Waghodiya, Near Parul University<br />Vadodara, Gujarat, India
                          
                        </p>--%>
                    </div>
                    </div>
                    </div>
                </div>

        </div>
    </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="extrajs" Runat="Server">
</asp:Content>

