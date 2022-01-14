<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPageClient.Master" CodeBehind="AdminLogin.aspx.vb" Inherits="DDB.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12">
        <div class="full">
            <div class="main_heading text_align_center" style="margin-bottom: 40px">
                <h2>Admin Login</h2>
                <p class="large">Use your credentials to login!</p>
            </div>
        </div>
    </div>
    <!--  The following code is for the login modal in the Master Page-->
        <div class="modal-content1" style="margin-top: 350px !important; width: 50% !important">
            <div class="imgcontainer">
                <asp:Image ID="ImgUser" CssClass="avatar" runat="server" ImageUrl="~/images/User.png" alt="User Icon" />
                <!-- image took from https://visualpharm.com/free-icons/male%20user-595b40b65ba036ed117d4d28 -->
            </div>

            <div class="container123">
                <asp:Label ID="lblAttempts" runat="server" ForeColor="Red"></asp:Label>
            </div>
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

            <div class="container1" style="background-color: #f1f1f1">
                <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
                <span class="psw">Forgot <a href="#">password?</a></span>
            </div>
        </div>
<!-- end login -->














    <!-- Script for the login modal -->
    <script>
        // Get the modal
        var modal = document.getElementById('id01');

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function (event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    </script>
</asp:Content>
