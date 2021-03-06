<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPageClientLoggedIn.Master" CodeBehind="ProductsLoggedIn.aspx.vb" Inherits="DDB.ProductsLoggedIn" %>
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
                                        <a href="ArtsAndCultureLoggedIn.aspx">                                         
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
                                    <a href="ProductDetailsLoggedIn.aspx">
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
                                        <a href="ProductDetailsLoggedIn.aspx">
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
                                    <a href="GeographyLoggedIn.aspx">
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
                                        <a href="HistoryLoggedIn.aspx">
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
                                    <a href="HistoryLoggedIn.aspx">
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
                                        <a href="LiteratureLoggedIn.aspx">
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
                                    <a href="LiteratureLoggedIn.aspx">
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
                                       <a href="MathsLoggedIn.aspx">
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
                                    <a href="MathsLoggedIn.aspx">
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
                                        <a href="ScienceLoggedIn.aspx">
                                            
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
                                    <a href="ScienceLoggedIn.aspx">
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
</asp:Content>
