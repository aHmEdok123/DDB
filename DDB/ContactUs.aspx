<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPageClient.Master" CodeBehind="ContactUs.aspx.vb" Inherits="DDB.ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-xl-2 col-lg-2 col-md-12 col-sm-12 col-xs-12"></div>
                <div class="col-xl-8 col-lg-8 col-md-12 col-sm-12 col-xs-12">
                    <div class="row">
                        <div class="full">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="main_heading text_align_center">
                                    <h2>GET IN TOUCH</h2>
                                </div>
                            </div>
                            <div class="contact_information">
                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 adress_cont">
                                    <div class="information_bottom text_align_center">
                                        <div class="icon_bottom"><i class="fa fa-road" aria-hidden="true"></i></div>
                                        <div class="info_cont">
                                            <h4>Our Headquarters are based in: </h4>
                                            <p>Manchester (United Kingdom)</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 adress_cont">
                                    <div class="information_bottom text_align_center">
                                        <div class="icon_bottom"><i class="fa fa-user" aria-hidden="true"></i></div>
                                        <div class="info_cont">
                                            <h4>0876 234 56789</h4>
                                            <p>Mon-Fri 8:30am-6:30pm</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 adress_cont">
                                    <div class="information_bottom text_align_center">
                                        <div class="icon_bottom"><i class="fa fa-envelope" aria-hidden="true"></i></div>
                                        <div class="info_cont">
                                            <h4>info@quizzaroo.com</h4>
                                            <p>24/7 online support</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 contant_form">
                                <h2 class="text_align_center">Get in Touch!</h2>
                                <div class="form_section">
                                    <form class="form_contant" action="index.html">                            
                                        <fieldset>          
                                            <div class="row">
                                                <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                                    <asp:TextBox ID="txtCompanyName" runat="server" CssClass="field_custom" placeholder="Company Name (If applicable)"></asp:TextBox>
                                                </div> 
                                                <br />
                                                <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                                    <asp:TextBox ID="txtName1" runat="server" CssClass="field_custom" placeholder="Your name*"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfvName1" runat="server" ErrorMessage="Please Enter your Name." ControlToValidate="txtName1" Font-Size="Medium" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </div>
                                                <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                                    <asp:TextBox ID="txtEmail1" runat="server" CssClass="field_custom" placeholder="Email address*" TextMode="Email"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfvEmail1" runat="server" ErrorMessage="Please Enter your Email Address." Font-Size="Medium" Text="*" ControlToValidate="txtEmail1" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </div>
                                                <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                                    <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="field_custom" placeholder="Phone Number" TextMode="Number"></asp:TextBox>
                                                </div>
                                                <div class="field col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <asp:TextBox ID="txtMessage" runat="server" CssClass="field_custom" placeholder="Your Message*" TextMode="MultiLine"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ErrorMessage="Please Enter your query." ControlToValidate="txtMessage" Text="*" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </div>
                                                <div class="center">
                                                    <asp:Button ID="btnSubmitNow" runat="server" cssClass="btn main_bt" Text="Submit Now" BackColor="#17A5E9" />
                                                </div>
                                                <div>
                                                    <asp:ValidationSummary ID="vSummaryContact" runat="server" DisplayMode="List" Font-Size="Medium" ForeColor="Red" />
                                                    <br />
                                                    <br />
                                                    <br />
                                                </div>
                                                
                                            </div>
                                        </fieldset>
                                    </form>
                                    
                                </div>
                                <br />
                                <br />
                                <div>
                                    <asp:LinkButton ID="lbtnYourAccount" runat="server" CausesValidation="False" CssClass="Under" Font-Underline="True" ForeColor="#0000CC" Text="&lt;-- Return to Homepage"></asp:LinkButton>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="lblReceived" runat="server" Visible="false" Text="Your Message has been received, we will contact you back soon!" Font-Size="Large" ForeColor="#33CC33"></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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
            <asp:PlaceHolder ID="phLogin" Visible="False" runat="server">
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
