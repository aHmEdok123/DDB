<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPageAdmin.Master" CodeBehind="HomepageAdmin.aspx.vb" Inherits="DDB.HomepageAdmin" %>
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
	border: 1px groove grey;
}
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
    <div class="col-md-12">
        <div class="full">
            <div class="main_heading text_align_center" style="margin-bottom: 40px">
                <h2>Welcome <asp:Label ID="lblName" runat="server" Text=""></asp:Label></h2>
                
                <p class="large">Check all the pages by hovering below.</p>
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
                                        <a href="CustomersAdmin.aspx">                                         
                                            <asp:Image ID="imgCustomers" runat="server"  ImageUrl="~/images/FlipImages/Customers.png"  />
                                            <!--Image from https://www.google.co.uk/search?q=customers+image+icon&tbm=isch&ved=2ahUKEwidqZO--YDuAhWBwIUKHQifByoQ2-cCegQIABAA&oq=customers+image+icon&gs_lcp=CgNpbWcQAzoCCAA6BAgAEB46BggAEAUQHjoGCAAQCBAeUNO0AVi_vgFgq8ABaABwAHgAgAFmiAGtA5IBAzQuMZgBAKABAaoBC2d3cy13aXotaW1nwAEB&sclient=img&ei=glfyX53gBYGBlwSIvp7QAg&bih=722&biw=1536&hl=en#imgrc=vcWaDkCIz_CpsM -->
                                        </a>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title12">Customers</h4>
                                    <p class="card-text1">Here you can manage all the customers of Quizzaroo</p>
                                    <p>Click on the Arrow to navigate to the page!</p>
                                    <a href="CustomersAdmin.aspx">
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
                                        <a href="Analytics.aspx">
                                            <asp:Image ID="imgAnalytics" runat="server"  ImageUrl="~/images/FlipImages/Analytics.jpg" />
                                            <!--Image from  https://www.google.co.uk/search?q=analytics&tbm=isch&ved=2ahUKEwizzrLK-YDuAhUTohoKHVUqA-cQ2-cCegQIABAA&oq=analytics&gs_lcp=CgNpbWcQAzIECAAQQzIECAAQQzIECAAQQzIECAAQQzICCAAyAggAMgIIADICCAAyAggAMgIIADoFCAAQsQM6CAgAELEDEIMBOgcIABCxAxBDUNKMB1jXpAdg9agHaABwAHgAgAHaAogB3QuSAQczLjMuMi4xmAEAoAEBqgELZ3dzLXdpei1pbWfAAQE&sclient=img&ei=m1fyX_OUL5PEatXUjLgO&bih=722&biw=1536&hl=en#imgrc=OkBZWemJ1bFeIM-->
                                        </a>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title12">Analytics</h4>
                                    <p class="card-text1">Here you can view all the analytics!</p>
                                    <p>Click on the Arrow to navigate to the page!</p>
                                    <a href="Analytics.aspx">
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
                                        <a href="ProductsAdmin.aspx">
                                            <asp:Image ID="imgProducts" runat="server"  ImageUrl="~/images/FlipImages/Products.jpeg" Width="360px" />
                                            <!--Image from https://www.google.co.uk/search?q=products+stock+image&tbm=isch&ved=2ahUKEwj7jsfY-oDuAhUOQBoKHfa1AM0Q2-cCegQIABAA&oq=products+sto&gs_lcp=CgNpbWcQARgBMgIIADICCAAyAggAMgIIADICCAAyAggAMgYIABAFEB4yBggAEAUQHjIGCAAQBRAeMgYIABAFEB46BAgAEENQhCxY-jpgrkJoAHAAeACAAZcCiAGbB5IBBTAuMS4zmAEAoAEBqgELZ3dzLXdpei1pbWfAAQE&sclient=img&ei=xVjyX7uYN46AafbrgugM&bih=722&biw=1536&hl=en#imgrc=epB5feE7utZZAM -->
                                        </a>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title12">Products</h4>
                                    <p class="card-text1">This is the Products page. Here you can view, add, update or delete all existing Products.</p>
                                    <p>Click on the Arrow to navigate to the page!</p>
                                    <a href="ProductsAdmin.aspx">
                                        <asp:Image ID="NextIcon2" runat="server" ImageUrl="~/Images/NextIcon.png" Height="20px" Width="20px" ImageAlign="Middle" />
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
