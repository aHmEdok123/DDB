<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPageClientLoggedIn.Master" CodeBehind="ContactUsLoggedIn.aspx.vb" Inherits="DDB.ContactUsLoggedIn" %>
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
</asp:Content>
