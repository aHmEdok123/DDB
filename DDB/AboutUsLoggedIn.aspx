<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPageClientLoggedIn.Master" CodeBehind="AboutUsLoggedIn.aspx.vb" Inherits="DDB.AboutUsLoggedIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12">
        <div class="full">
            <div class="main_heading text_align_center" style="margin-bottom: 40px">
                <h2>About Us</h2>
                <p class="large">Learn more about what we do!</p>
            </div>
        </div>
    </div>
    <div class="section padding_layout_1" style="padding-top: 0px !important; padding-bottom: 50px !important;">
    <div class="container">
    <div class="row about_blog">
                <div class="col-lg-6 col-md-6 col-sm-12 about_cont_blog">
                    <div class="full text_align_left">
                        <h3>What we do</h3>
                        <p>
                            At Quizzaroo, we believe there is always a new innovative and creative way for people to learn! 
                            We're dedicated to giving you the very best of learning, with a focus on: </p>
                        <ul>
                            <li><i class="fa fa-check-circle"></i>Creativity: letting our developers show off their creative skills for you to enjoy! </li><br />
                            <li><i class="fa fa-check-circle"></i>Uniqueness: Our products will not be available anywhere else!</li><br />
                            <li><i class="fa fa-check-circle"></i>Customer Satisfaction: your enjoyment of our products is at the core of our business.</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 about_feature_img padding_right_0">
                    <div class="full text_align_center"> 
                        <asp:Image ID="imgClassroom" runat="server" CssClass="img-responsive" ImageUrl="~/images/Classroom.jpg" />
                        

                    </div>
                </div>
            </div>
        </div> 
        </div> 
    <!-- section -->
    <div class="section padding_layout_1 light_silver gross_layout">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="full">
                       <div class="main_heading1 text_align_left">
                            <h2>About our Products</h2>
                            <p class="large">Our products all meet the following requirements.</p>
                        </div> 
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="full">
                                <div class="service_blog_inner2">
                                    <div class="icon text_align_left"><i class="fa fa-book"></i></div>
                                    <h4 class="service-heading">Verified Sources</h4>
                                    <p>Our products are all in line with the UK Curricula</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="full">
                                <div class="service_blog_inner2">
                                    <div class="icon text_align_left"><i class="fa fa-cog"></i></div>
                                    <h4 class="service-heading">Secure payments</h4>
                                    <p>Payments done in our website are all 100% secure!</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="full">
                                <div class="service_blog_inner2">
                                    <div class="icon text_align_left"><i class="fa fa-history"></i></div>
                                    <h4 class="service-heading">Quick responses from our team</h4>
                                    <p>Our team is always ready to answer any queries regarding ur business and products!</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="full">
                                <div class="service_blog_inner2">
                                    <div class="icon text_align_left"><i class="fa fa-heart-o"></i></div>
                                    <h4 class="service-heading">Affordable products</h4>
                                    <p>All our products are affordable for both businesses and individual users.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row" style="padding-bottom: 20px">
            <asp:Label ID="lblHelp" runat="server" Text="For any queries, feel free to: " ForeColor="Black" Font-Size="Medium" CssClass="LoginCss"></asp:Label>
            &nbsp;
            <asp:Button ID="btnContactUs" runat="server" Text="Contact Us!" CssClass="btn sqaure_bt" Font-Size="Medium" ForeColor="White" />
        </div>
    </div>
</asp:Content>
