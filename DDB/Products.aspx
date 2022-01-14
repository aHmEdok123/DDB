<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPageClient.Master" CodeBehind="Products.aspx.vb" Inherits="DDB.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

    /* Here is the Css code for hovering the team members. */
.image-flip:hover .backside,
.image-flip.hover .backside {
    -webkit-transform: rotateY(0deg);
    -moz-transform: rotateY(0deg);
    -o-transform: rotateY(0deg);
    -ms-transform: rotateY(0deg);
    transform: rotateY(0deg);
    border-radius: .25rem;
}

.image-flip:hover .frontside,
.image-flip.hover .frontside {
    -webkit-transform: rotateY(180deg);
    -moz-transform: rotateY(180deg);
    -o-transform: rotateY(180deg);
    transform: rotateY(180deg);
}

.mainflip {
    -webkit-transition: 1s;
    -webkit-transform-style: preserve-3d;
    -ms-transition: 1s;
    -moz-transition: 1s;
    -moz-transform: perspective(1000px);
    -moz-transform-style: preserve-3d;
    -ms-transform-style: preserve-3d;
    transition: 1s;
    transform-style: preserve-3d;
    position: relative;
	
}

.frontside {
    position: relative;
    -webkit-transform: rotateY(0deg);
    -ms-transform: rotateY(0deg);
    z-index: 2;
    margin-bottom: 30px;
}


.frontside1 {
    position: relative;
    z-index: 2;
    margin-bottom: 30px;
    min-height: 312px;
}

.backside {
    position: absolute;
    top: 0;
    left: 0;
    background: white;
    -webkit-transform: rotateY(-180deg);
    -moz-transform: rotateY(-180deg);
    -o-transform: rotateY(-180deg);
    -ms-transform: rotateY(-180deg);
    transform: rotateY(-180deg);
    -webkit-box-shadow: 5px 7px 9px -4px rgb(158, 158, 158);
    -moz-box-shadow: 5px 7px 9px -4px rgb(158, 158, 158);
    box-shadow: 5px 7px 9px -4px rgb(158, 158, 158);
}

.frontside,
.backside {
    -webkit-backface-visibility: hidden;
    -moz-backface-visibility: hidden;
    -ms-backface-visibility: hidden;
    backface-visibility: hidden;
    -webkit-transition: 1s;
    -webkit-transform-style: preserve-3d;
    -moz-transition: 1s;
    -moz-transform-style: preserve-3d;
    -o-transition: 1s;
    -o-transform-style: preserve-3d;
    -ms-transition: 1s;
    -ms-transform-style: preserve-3d;
    transition: 1s;
    transform-style: preserve-3d;
}

.frontside .card,
.backside .card {
    min-height: 312px;
    border: none !important;
}

.backside .card a {
    font-size: 18px;
    color: #007b5e !important;
}
.card-title{
	padding-top:10px;
	font-size:16pt;
}
.card-title1{
	color: #ed8907 !important;
	padding-top:70px;
	font-size:18pt;
}
.card-title12{
	color: #394e87f2 !important;
	padding-top:50px;
	font-size:18pt;
}

.card-text1{
	font-size:14pt;
}
.frontside .card .card-title,
.backside .card .card-title {
    color: #007b5e !important;
}
/* Here is the code to modify the image inside the card */
.frontside .card .card-body img {
    width: 330px;
    height: 280px;
	/*border: 2px groove grey; */
}
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
         <div class="col-md-12">
                    <div class="full">
                        <div class="main_heading text_align_center">
                            <h2>Quizzes Categories</h2>
                            <p class="large">Feel free to browse all the different categories of our Quizzes.</p>
                        </div>
                    </div>
                </div>

        <div class="row">

            <!-- Team member -->
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                    <div class="mainflip">
                        <div class="frontside">
                            <div class="card">
                                <div class="card-body text-center">
                                    <p>
                                        <a href="ArtsAndCulture.aspx">                                         
                                            <asp:Image ID="imgArtsCulture" runat="server"  ImageUrl="~/images/FlipImages/ArtsCulture.png"  />
                                        </a>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title12">Arts and Culture</h4>
                                    <p class="card-text1">Here you can find many interactive quizzes and games in order to learn all about geography topics such as Flora, Fauna, all the states and many more!</p>
                                    <p>Click on the Arrow to explore all the content available!</p>
                                    <a href="ProductDetails.aspx">
                                        <asp:Image ID="NextIcon" runat="server" ImageUrl="~/Images/NextIcon.png" Height="20px" Width="20px" ImageAlign="Middle" />
                                    </a>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ./Team member -->
            <!-- Team member -->
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                    <div class="mainflip">
                        <div class="frontside">
                            <div class="card">
                                <div class="card-body text-center">
                                    <p>
                                        <a href="ProductDetails.aspx">
                                            <asp:Image ID="imgGeography" runat="server"  ImageUrl="~/images/FlipImages/Geography1.jpg" />
                                        </a>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title12">Geography</h4>
                                    <p class="card-text1">Here you can find many interactive quizzes and games in order to learn all about geography topics such as Flora, Fauna, all the states and many more!</p>
                                    <p>Click on the Arrow to explore all the content available!</p>
                                    <a href="Geography.aspx">
                                        <asp:Image ID="NextIcon1" runat="server" ImageUrl="~/Images/NextIcon.png" Height="20px" Width="20px" ImageAlign="Middle" />
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ./Team member -->
            <!-- Team member -->
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                    <div class="mainflip">
                        <div class="frontside">
                            <div class="card">
                                <div class="card-body text-center">
                                    <p>
                                        <a href="History.aspx">
                                            <asp:Image ID="imgHistory" runat="server"  ImageUrl="~/images/FlipImages/History1.jpg" Width="360px" />
                                        </a>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title12">History</h4>
                                    <p class="card-text1">This is the Housekeeping page. Here you can view, add, update or delete all existing housekeping tasks in the Hotel.</p>
                                    <p>Click on the Arrow to navigate to the page</p>
                                    <a href="History.aspx">
                                        <asp:Image ID="NextIcon2" runat="server" ImageUrl="~/Images/NextIcon.png" Height="20px" Width="20px" ImageAlign="Middle" />
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ./Team member -->
            <!-- Team member -->
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                    <div class="mainflip">
                        <div class="frontside">
                            <div class="card">
                                <div class="card-body text-center">
                                    <p>
                                        <a href="Literature.aspx">
                                            <asp:Image ID="imgLiterature" runat="server"  ImageUrl="~/images/FlipImages/Literature.jpg" />
                                        </a>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title12">Literature</h4>
                                    <p class="card-text1">This is the Extras page. Here you can view, add, update or delete any extras of customers Bookings.</p>
                                    <p>Click on the Arrow to navigate to the page</p>
                                    <a href="Literature.aspx">
                                        <asp:Image ID="NextIcon3" runat="server" ImageUrl="~/Images/NextIcon.png" Height="20px" Width="20px" ImageAlign="Middle" />
                                    </a> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ./Team member -->
            <!-- Team member -->
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                    <div class="mainflip">
                        <div class="frontside">
                            <div class="card">
                                <div class="card-body text-center">
                                    <p>
                                       <a href="Maths.aspx">
                                            <asp:Image ID="imgMaths" runat="server"  ImageUrl="~/images/FlipImages/Maths1.jpg" />
                                        </a>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title12">Maths</h4>
                                    <p class="card-text1">This is the Customers page. Here you can view, add, update or delete all customer details.</p>
                                    <p>Click on the Arrow to navigate to the page</p>
                                    <a href="Maths.aspx">
                                        <asp:Image ID="NextIcon5" runat="server" ImageUrl="~/Images/NextIcon.png" Height="20px" Width="20px" ImageAlign="Middle" />
                                    </a> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
           <!-- Team member -->
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                    <div class="mainflip">
                        <div class="frontside">
                            <div class="card">
                                <div class="card-body text-center">
                                    <p>
                                        <a href="Science.aspx">
                                            
                                            <asp:Image ID="Image1" runat="server"  ImageUrl="~/images/FlipImages/Science.jpg" Width="360px"  />
                                        </a>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title12">Science</h4>
                                    <p class="card-text1">Here you can find many interactive quizzes and games in order to learn all about geography topics such as Flora, Fauna, all the states and many more!</p>
                                    <p>Click on the Arrow to explore all the content available!</p>
                                    <a href="Science.aspx">
                                        <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/NextIcon.png" Height="20px" Width="20px" ImageAlign="Middle" />
                                    </a>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ./Team member -->
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
                <asp:LinkButton ID="LbLogin" runat="server" CausesValidation="False">Login</asp:LinkButton>
                &nbsp;|
                    <asp:LinkButton ID="lbSignup" runat="server" CausesValidation="False">Signup</asp:LinkButton>
            </div>

            <div class="container123">
                <asp:Label ID="lblAttempts" runat="server" ForeColor="Red"></asp:Label>
            </div>
            <asp:PlaceHolder ID="phLogin" Visible="true" runat="server">
            <div class="container1">
                <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label><br>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="responsive"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="Please enter your username." ControlToValidate="txtUsername" ForeColor="Red">*</asp:RequiredFieldValidator><br>
                <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label><br>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="responsive"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Please enter your password." ControlToValidate="txtPassword" ForeColor="Red">*</asp:RequiredFieldValidator><br>
                <asp:Button ID="btnLogin" runat="server" Text="Login" /><br><br>
                <asp:ValidationSummary ID="ValidationSummary2" runat="server" HeaderText="This is the list of errors: " ForeColor="Red" Font-Size="Large" /> <br>
                <asp:CheckBox ID="CheckBoxRememberMe" runat="server" />
                <asp:Label ID="lblRememberMe" runat="server" Text="Remember Me"></asp:Label>
            </div>
            </asp:PlaceHolder>
                <asp:PlaceHolder ID="phSignup" Visible="false" runat="server">
                    <div class="container1">
                    <table style="width: 80%">
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style2">
                                <asp:Label ID="lblSignup" runat="server" Text="Signup"></asp:Label>
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
                                <asp:Label ID="lblFirstname" runat="server" Text="First name"></asp:Label>       
                            </td>
                            <td class="auto-style1">
                                <asp:TextBox ID="txtFirstname" runat="server" CssClass="responsive"></asp:TextBox>

                            </td>
                            <td class="auto-style1">
                                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ErrorMessage="Please Enter your First name." ControlToValidate="txtFirstname" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">
                                <asp:Label ID="lblLastname" runat="server" Text="Lastname"></asp:Label>
                                
                            </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtLastname" runat="server" CssClass="responsive"></asp:TextBox>     
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ErrorMessage="Please Enter your Last Name." ControlToValidate="txtLastname" ForeColor="Red">*</asp:RequiredFieldValidator>

                            </td>
                        </tr>
                         <tr>
                            <td class="auto-style6">
                                <asp:Label ID="lblEmailAddress" runat="server" Text="Email Address"></asp:Label>
                                
                            </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtEmailAddress" runat="server" CssClass="responsive" TextMode="Email"></asp:TextBox>     
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="rfvEmailAddress" runat="server" ControlToValidate="txtEmailAddress" ErrorMessage="Please Enter your Email Address" ForeColor="Red">*</asp:RequiredFieldValidator>
                                
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="lblSignupUsername" runat="server" Text="Username"></asp:Label>                            
                            </td>
                            <td class="auto-style4">
                                <asp:TextBox ID="txtSignupUsername" runat="server" CssClass="responsive"></asp:TextBox>
                            </td>
                            <td class="auto-style5">
                                <asp:RequiredFieldValidator ID="rfvSignupUsername" runat="server" ErrorMessage="Please Enter your Username." ControlToValidate="txtSignupUsername" ForeColor="Red">*</asp:RequiredFieldValidator>

                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="lblSignupPassword" runat="server" Text="Password"></asp:Label>
                            </td>
                            <td class="auto-style4">
                                <asp:TextBox ID="txtSignupPassword" runat="server" CssClass="responsive" TextMode="Password"></asp:TextBox>
                            </td>
                            <td class="auto-style5">
                                <asp:RequiredFieldValidator ID="rfvSignupPassword" runat="server" ErrorMessage="Please Enter your Password." ControlToValidate="txtSignupPassword" ForeColor="Red">*</asp:RequiredFieldValidator>

                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="lblConfirmPwd" runat="server" Text="Confirm Password"></asp:Label>

                            </td>
                            <td class="auto-style4">
                                <asp:TextBox ID="txtConfirmPwd" runat="server" CssClass="responsive" TextMode="Password"></asp:TextBox>
                            </td>
                            <td class="auto-style5">
                                <asp:RequiredFieldValidator ID="rfvConfirmPwd" runat="server" ErrorMessage="Please confirm your Password." ControlToValidate="txtConfirmPwd" ForeColor="Red">*</asp:RequiredFieldValidator>

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
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="This is the list of errors: " ForeColor="Red" Font-Size="Large" />
                                
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
