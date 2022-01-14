<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPageAdmin.Master" CodeBehind="StaffLogAdmin.aspx.vb" Inherits="DDB.StaffLogAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12">
        <div class="full">
            <div class="main_heading text_align_center" style="margin-bottom: 40px">
                <h2>Log</h2>
                <p class="large">Here you can record any changes made in the website</p>
            </div>
        </div>
    </div>
    <div class="container">
            <div class="row">
                <div class="col-xl-2 col-lg-2 col-md-12 col-sm-12 col-xs-12"></div>
                <div class="col-xl-8 col-lg-8 col-md-12 col-sm-12 col-xs-12">
                    <div class="row">
                        <div class="full">
    <div class="payment-form">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 contant_form">
                                <h2 class="text_align_center">Get in Touch!</h2>
                                <div class="form_section">
                                    <form class="form_contant" action="index.html">                            
                                        <fieldset>          
                                            <div class="row">
                                                <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                                    <asp:TextBox ID="txtCategory" runat="server" CssClass="field_custom" placeholder="Category*"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfvCategory" runat="server" ErrorMessage="Please Enter Category of changes made." ControlToValidate="txtCategory" Font-Size="Medium" ForeColor="Red">*</asp:RequiredFieldValidator>
                                                </div> 
                                                <br />
                                                <div class="field col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <asp:TextBox ID="txtDescription" runat="server" CssClass="field_custom" placeholder="Description of changes made.*" TextMode="MultiLine"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfvDescription" runat="server" ErrorMessage="Please Enter the description of the changes made." ControlToValidate="txtDescription" Text="*" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </div>
                                                <div class="center">
                                                    <asp:Button ID="btnSubmitNow" runat="server" cssClass="btn main_bt" Text="Register in database" BackColor="#17A5E9" ForeColor="White" />
                                                    <br />
                                                </div>
                                                <div>
                                                    <br />
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
                                    <asp:LinkButton ID="lbtnYourAccountAdmin" runat="server" CausesValidation="False" CssClass="Under" Font-Underline="True" ForeColor="#0000CC" Text="&lt;-- Return to your Account"></asp:LinkButton>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="lblReceived" runat="server" Visible="false" Text="The description of changes has been added to the database." Font-Size="Large" ForeColor="#33CC33"></asp:Label>
                                </div>
                            </div>
        </div>
                            </div> 
                        </div> 
                    </div> 
                </div> 
        </div> 
    
</asp:Content>
