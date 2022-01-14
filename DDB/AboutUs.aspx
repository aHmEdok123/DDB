<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPageClient.Master" CodeBehind="AboutUs.aspx.vb" Inherits="DDB.AboutUs" %>
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


    <!--  The following code is for the login modal in the Master Page-->
    <div id="id01" class="modal">
        <div class="modal-content1 animate">
            <div class="imgcontainer">
                <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
                <asp:Image ID="ImgUser" CssClass="avatar" runat="server" ImageUrl="~/images/User.png" alt="User Icon" />
                <!-- image took from https://visualpharm.com/free-icons/male%20user-595b40b65ba036ed117d4d28 -->
            </div>
            <div class="container1">
                <asp:LinkButton ID="LbLogin" runat="server" CausesValidation="False" Font-Size="Medium">Login</asp:LinkButton>
                &nbsp;|
                    <asp:LinkButton ID="lbSignup" runat="server" CausesValidation="False" Font-Size="Medium">Signup</asp:LinkButton>
            </div>

            <div class="container123">
                <asp:Label ID="lblAttempts" runat="server" ForeColor="Red"></asp:Label>
            </div>
            <asp:PlaceHolder ID="phLogin" Visible="true" runat="server">
            <div class="container1">
                <asp:Label ID="lblUsername" runat="server" Text="Username" ForeColor="Black"></asp:Label><br>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="responsive"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="Please enter your username." ControlToValidate="txtUsername" ForeColor="Red">*</asp:RequiredFieldValidator><br>
                <asp:Label ID="lblPassword" runat="server" Text="Password" ForeColor="Black"></asp:Label><br>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="responsive"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Please enter your password." ControlToValidate="txtPassword" ForeColor="Red">*</asp:RequiredFieldValidator><br>
                <asp:Button ID="btnLogin" runat="server" Text="Login" /><br><br>
                <asp:ValidationSummary ID="ValidationSummaryLogin" runat="server" HeaderText="This is the list of errors: " ForeColor="Red" Font-Size="Large" DisplayMode="List" /> <br>
                <asp:CheckBox ID="CheckBoxRememberMe" runat="server" />
                <asp:Label ID="lblRememberMe" runat="server" Text="Remember Me" ForeColor="Black"></asp:Label>
            </div>
            </asp:PlaceHolder>
                <asp:PlaceHolder ID="phSignup" Visible="false" runat="server">
                    <div class="container1">
                    <table style="width: 80%">
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style2">
                                <asp:Label ID="lblSignup" runat="server" Text="Signup" ForeColor="Black"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">
                                <asp:Label ID="lblFirstname" runat="server" Text="First name" ForeColor="Black"></asp:Label>       
                            </td>
                            <td class="auto-style1">
                                <asp:TextBox ID="txtFirstname" runat="server" CssClass="responsive"></asp:TextBox>

                            </td>
                            <td class="auto-style1">
                                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ErrorMessage="Please Enter your First name." ControlToValidate="txtFirstname" ForeColor="Red" Font-Size="Medium">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">
                                <asp:Label ID="lblLastname" runat="server" Text="Lastname" ForeColor="Black"></asp:Label>
                                
                            </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtLastname" runat="server" CssClass="responsive"></asp:TextBox>     
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ErrorMessage="Please Enter your Last Name." ControlToValidate="txtLastname" ForeColor="Red" Font-Size="Medium">*</asp:RequiredFieldValidator>

                            </td>
                        </tr>
                         <tr>
                            <td class="auto-style6">
                                <asp:Label ID="lblEmailAddress" runat="server" Text="Email Address" ForeColor="Black"></asp:Label>
                                
                            </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtEmailAddress" runat="server" CssClass="responsive" TextMode="Email"></asp:TextBox>     
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="rfvEmailAddress" runat="server" ControlToValidate="txtEmailAddress" ErrorMessage="Please Enter your Email Address" ForeColor="Red" Font-Size="Medium">*</asp:RequiredFieldValidator>
                                <asp:CustomValidator ID="cvEmailAddress" runat="server" ErrorMessage="Email Address is already in use. Please Login." Text="*" ForeColor="Red" Font-Size="Medium"></asp:CustomValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="lblSignupUsername" runat="server" Text="Username" ForeColor="Black"></asp:Label>                            
                            </td>
                            <td class="auto-style4">
                                <asp:TextBox ID="txtSignupUsername" runat="server" CssClass="responsive"></asp:TextBox>
                            </td>
                            <td class="auto-style5">
                                <asp:RequiredFieldValidator ID="rfvSignupUsername" runat="server" ErrorMessage="Please Enter your Username." ControlToValidate="txtSignupUsername" ForeColor="Red" Font-Size="Medium">*</asp:RequiredFieldValidator>

                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="lblSignupPassword" runat="server" Text="Password" ForeColor="Black"></asp:Label>
                            </td>
                            <td class="auto-style4">
                                <asp:TextBox ID="txtSignupPassword" runat="server" CssClass="responsive" TextMode="Password"></asp:TextBox>
                            </td>
                            <td class="auto-style5">
                                <asp:RequiredFieldValidator ID="rfvSignupPassword" runat="server" ErrorMessage="Please Enter your Password." ControlToValidate="txtSignupPassword" ForeColor="Red" Font-Size="Medium">*</asp:RequiredFieldValidator>

                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="lblConfirmPwd" runat="server" Text="Confirm Password" ForeColor="Black"></asp:Label>

                            </td>
                            <td class="auto-style4">
                                <asp:TextBox ID="txtConfirmPwd" runat="server" CssClass="responsive" TextMode="Password"></asp:TextBox>
                            </td>
                            <td class="auto-style5">
                                <asp:RequiredFieldValidator ID="rfvConfirmPwd" runat="server" ErrorMessage="Please confirm your Password." ControlToValidate="txtConfirmPwd" ForeColor="Red" Font-Size="Medium">*</asp:RequiredFieldValidator>

                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style7">&nbsp;</td>
                            <td class="auto-style4">

                                <asp:Button ID="btnSignup" runat="server" Text="Signup" />
                            </td>
                            <td class="auto-style5">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style7">&nbsp;</td>
                            <td class="auto-style4">
                                <asp:ValidationSummary ID="ValidationSummarySignup" runat="server" HeaderText="This is the list of errors: " ForeColor="Red" Font-Size="Large" DisplayMode="List" />
                                
                            </td>
                            <td class="auto-style5">&nbsp;</td>
                        </tr>
                    </table>
                    </div>                    
                </asp:PlaceHolder>

            <div class="container1" style="background-color: #f1f1f1">
                <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
                <span class="psw">Forgot <a href="#">password?</a></span>
            </div>
        </div>
    </div>
<!-- end login -->
</asp:Content>
