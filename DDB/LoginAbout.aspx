<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPageClient.Master" CodeBehind="LoginAbout.aspx.vb" Inherits="DDB.PleaseLoginClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12">
        <div class="full">
            <div class="main_heading text_align_center" style="margin-bottom: 30px !important">
                <h2>How to Login</h2>
                <p class="large">Here you can view the instructions to login step by step.</p>
            </div>
        </div>
    </div>
    <div style="margin-left: auto; margin-right: auto; width: 950px;">
        <asp:Label ID="lblStep1" runat="server" Text="Step 1: " Font-Size="Medium" ForeColor="Red" CssClass="LoginCss" Font-Bold="True"></asp:Label>
        <br />
        <asp:Label ID="lblStep1Desc" runat="server" Text="You can Login by clicking on the 'Your Account' button as shown in the image below." ForeColor="Black" Font-Size="Medium" CssClass="LoginCss"></asp:Label>
        <br /> <br />
        <asp:Image ID="imgStep1" runat="server" ImageUrl="~/images/LoginAbout/LoginAccountImage.png" Width="895px" Height="389px" BorderStyle="Solid" BorderWidth="1px" CssClass="LoginCss" />
        <br /> <br /> <br />
        <asp:Label ID="lblStep2" runat="server" Text="Step 2: " Font-Size="Medium" ForeColor="Red" CssClass="LoginCss" Font-Bold="True"></asp:Label>
        <br />
        <asp:Label ID="lblStep2Desc" runat="server" Text="Click either on 'Login' or 'Signup', in order to Login." ForeColor="Black" Font-Size="Medium" CssClass="LoginCss"></asp:Label>
        <br /> <br />
        <asp:Image ID="ImgStep2" runat="server" ImageUrl="~/images/LoginAbout/LoginAccountImage2.png" Width="895px" CssClass="LoginCss" BorderStyle="Solid" BorderWidth="1px" />

        <br />
        <br />
        <br />
        <asp:Label ID="lblHelp" runat="server" Text="If you need more help: " ForeColor="Black" Font-Size="Medium" CssClass="LoginCss"></asp:Label>
        &nbsp;
        <asp:Button ID="btnContactUs" runat="server" Text="Contact Us!" CssClass="btn sqaure_bt"  Font-Size="Medium" ForeColor="White" />
    </div>
</asp:Content>
