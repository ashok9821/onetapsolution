<%@ Page Title="Our Work | Web & App Development Portfolio | One Tap Solution" Language="VB" MasterPageFile="~/onetap-solutions.master" AutoEventWireup="false" CodeFile="website-app-development-company-portfolio-consultancy-birgunj.aspx.vb" Inherits="website_app_development_company_portfolio_consultancy_birgunj" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta name="description" content="Explore our portfolio at One Tap Solution. Discover creative website designs, mobile apps, and digital marketing projects we’ve successfully delivered for businesses across India and beyond." />
    <meta name="keywords" content="One Tap Solution projects, web design portfolio, app development portfolio, client work, software development India, digital marketing case studies, website design samples" />
    <meta name="author" content="One Tap Solution" />
    <meta name="robots" content="index, follow" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <div class="inner-banner about-us">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 inner-tittle text-sm-start text-center">
                    <h1 class="banner-title text-white">Our Work</h1>

   <%--<p class="text-white pb-sm-0 pb-5"> <a href="Default.aspx" class="text-white">Home</a>&nbsp;/&nbsp;Contact Us</p>--%>
                </div>
            </div>
        </div>
    </div>
    <div id="our-work">
        <div class="container ">
            <div class="row py-5">
                <div class="col-12">
                    <p class="justify">
                    At <b>Onetap Solution</b>, We specialize in crafting high-quality web solutions that
                        help businesses establish a strong and lasting digital presence. Our work spans a variety of industries, 
                        where we’ve delivered fast, secure, and visually engaging websites tailored to meet each client’s goals. 
                        From dynamic business websites to custom web applications and eCommerce platforms, 
                        we bring ideas to life with precision and creativity. We’ve built responsive websites 
                        for retailers aiming to boost online sales, developed intuitive platforms for service-based businesses 
                        to connect with their customers, and delivered custom web portals to streamline business operations. 
                        With expertise in technologies like HtML, React, Bootstrap, c#, etc. our team ensures
                        every project is optimized for performance, scalability, and user experience. Backed by positive feedback and proven results, OnetapSolution is your trusted partner for building websites that make an impact. Let’s create something exceptional together.
                        </p>

                </div>
            </div>
        </div>
    </div>

    <div id="our-work-showcase">
        <div class="container py-5">
            <div class="row py-5">
                <div class="col-12">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item" role="presentation">
    <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home-tab-pane" type="button" role="tab" aria-controls="home-tab-pane" aria-selected="true">All</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile-tab-pane" type="button" role="tab" aria-controls="profile-tab-pane" aria-selected="false">Website</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact-tab-pane" type="button" role="tab" aria-controls="contact-tab-pane" aria-selected="false">Mobile Apps</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="disabled-tab" data-bs-toggle="tab" data-bs-target="#disabled-tab-pane" type="button" role="tab" aria-controls="disabled-tab-pane" aria-selected="false">Portfolio</button>
  </li>
</ul>
<div class="tab-content" id="myTabContent">
  <div class="tab-pane fade show active" id="home-tab-pane" role="tabpanel" aria-labelledby="home-tab" tabindex="0">
      <div class="row ">
          
          <div class="col-lg-4 pt-5">
              <div class="work-box">
                   <picture>
                        <source srcset="assets/images/bright-academy-waghodiya.webp" type="image/webp">
                        <source srcset="assets/images/bright-academy-waghodiya.webp" type="image/png">
                        <img class="img-fluid work-img" src="assets/images/bright-academy-waghodiya.webp" alt="Bright Academy" >
                    </picture>
                  <div class="middle">
                      <h5 class="mb-0">Bright Academy</h5>
                      <p>Vadodara, Gujarat</p>
                  </div>
              </div>
          </div>
          <div class="col-lg-4 pt-5">
              <div class="work-box">
                   <picture>
                        <source srcset="assets/images/ajay-teli-portofilo.webp" type="image/webp">
                        <source srcset="assets/images/ajay-teli-portofilo.webp" type="image/png">
                        <img class="img-fluid work-img" src="assets/images/ajay-teli-portofilo.webp" alt="Portfolio" >
                    </picture>
                   <div class="middle">
                      <h5 class="mb-0">Ajay Teli</h5>
                      <p>Bengaluru, Karnatka</p>
                  </div>
              </div>
          </div>
           <div class="col-lg-4 pt-5">
              <div class="work-box">
                   <picture>
                        <source srcset="assets/images/empaticall-website.webp" type="image/webp">
                        <source srcset="assets/images/empaticall-website.webp" type="image/png">
                        <img class="img-fluid work-img" src="assets/images/empaticall-website.webp" alt="Empathical " >
                    </picture>
                   <div class="middle">
                      <h5 class="mb-0">Empathic Call</h5>
                      <p>Bengaluru, Karnatka</p>
                  </div>
              </div>
          </div>
           <div class="col-lg-4 pt-5">
              <div class="work-box">
                   <picture>
                        <source srcset="assets/images/deep-mobile-application-img.webp" type="image/webp">
                        <source srcset="assets/images/deep-mobile-application-img.webp" type="image/png">
                        <img class="img-fluid work-img mobile-img" src="assets/images/deep-mobile-application-img.webp" alt="Empathical " >
                    </picture>
                   <div class="middle">
                      <h5 class="mb-0">DEEP</h5>
                      <p>Kathmandu, Nepal </p>
                  </div>
              </div>
          </div>
          <div class="col-lg-4 pt-5">
              <div class="work-box">
                   <picture>
                        <source srcset="assets/images/fule-mate-application-img.webp" type="image/webp">
                        <source srcset="assets/images/fule-mate-application-img.webp" type="image/png">
                        <img class="img-fluid work-img mobile-img" src="assets/images/fule-mate-application-img.webp" alt="Empathical " >
                    </picture>
                   <div class="middle">
                      <h5 class="mb-0">Fuel Mate</h5>
                      <p>Chitwan, Nepal</p>
                  </div>
              </div>
          </div>
          
      </div>
  </div>
  <div class="tab-pane fade" id="profile-tab-pane" role="tabpanel" aria-labelledby="profile-tab" tabindex="0">
      <div class="row ">
          
          <div class="col-lg-4 pt-5">
              <div class="work-box">
                   <picture>
                        <source srcset="assets/images/bright-academy-waghodiya.webp" type="image/webp">
                        <source srcset="assets/images/bright-academy-waghodiya.webp" type="image/png">
                        <img class="img-fluid work-img" src="assets/images/bright-academy-waghodiya.webp" alt="Bright Academy" >
                    </picture>
                  <div class="middle">
                      <h5 class="mb-0">Bright Academy</h5>
                      <p>Vadodara, Gujarat</p>
                  </div>
              </div>
          </div>
          <div class="col-lg-4 pt-5">
              <div class="work-box">
                   <picture>
                        <source srcset="assets/images/ajay-teli-portofilo.webp" type="image/webp">
                        <source srcset="assets/images/ajay-teli-portofilo.webp" type="image/png">
                        <img class="img-fluid work-img" src="assets/images/ajay-teli-portofilo.webp" alt="Portfolio" >
                    </picture>
                   <div class="middle">
                      <h5 class="mb-0">Ajay Teli</h5>
                      <p>Bengaluru, Karnatka</p>
                  </div>
              </div>
          </div>
           <div class="col-lg-4 pt-5">
              <div class="work-box">
                   <picture>
                        <source srcset="assets/images/empaticall-website.webp" type="image/webp">
                        <source srcset="assets/images/empaticall-website.webp" type="image/png">
                        <img class="img-fluid work-img" src="assets/images/empaticall-website.webp" alt="Empathical " >
                    </picture>
                   <div class="middle">
                      <h5 class="mb-0">Empathic Call</h5>
                      <p>Bengaluru, Karnatka</p>
                  </div>
              </div>
          </div>
      </div>
  </div>
  <div class="tab-pane fade" id="contact-tab-pane" role="tabpanel" aria-labelledby="contact-tab" tabindex="0">
      <div class="row">
          <div class="col-lg-4 pt-5">
              <div class="work-box">
                   <picture>
                        <source srcset="assets/images/deep-mobile-application-img.webp" type="image/webp">
                        <source srcset="assets/images/deep-mobile-application-img.webp" type="image/png">
                        <img class="img-fluid work-img mobile-img" src="assets/images/deep-mobile-application-img.webp" alt="Empathical " >
                    </picture>
                   <div class="middle">
                      <h5 class="mb-0">DEEP</h5>
                      <p>Kathmandu, Nepal </p>
                  </div>
              </div>
          </div>
          <div class="col-lg-4 pt-5">
              <div class="work-box">
                   <picture>
                        <source srcset="assets/images/fule-mate-application-img.webp" type="image/webp">
                        <source srcset="assets/images/fule-mate-application-img.webp" type="image/png">
                        <img class="img-fluid work-img mobile-img" src="assets/images/fule-mate-application-img.webp" alt="Empathical " >
                    </picture>
                   <div class="middle">
                      <h5 class="mb-0">Fuel Mate</h5>
                      <p>Chitwan, Nepal</p>
                  </div>
              </div>
          </div>
      </div>
  </div>
  <div class="tab-pane fade" id="disabled-tab-pane" role="tabpanel" aria-labelledby="disabled-tab" tabindex="0">
      <div class="row ">
          
          
          <div class="col-lg-4 pt-5">
              <div class="work-box">
                   <picture>
                        <source srcset="assets/images/ajay-teli-portofilo.webp" type="image/webp">
                        <source srcset="assets/images/ajay-teli-portofilo.webp" type="image/png">
                        <img class="img-fluid work-img" src="assets/images/ajay-teli-portofilo.webp" alt="Portfolio" >
                    </picture>
                   <div class="middle">
                      <h5 class="mb-0">Ajay Teli</h5>
                      <p>Bengaluru, Karnatka</p>
                  </div>
              </div>
          </div>
           
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

