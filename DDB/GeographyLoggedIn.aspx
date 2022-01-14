<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPageClientLoggedIn.Master" CodeBehind="GeographyLoggedIn.aspx.vb" Inherits="DDB.GeographyLoggedIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12">
        <div class="full">
            <div class="main_heading text_align_center" style="margin-bottom: 40px">
                <h2>Quizzes Categories: Geography</h2>
                <p class="large">Feel free to browse all the different Geography Quizzes.</p>
            </div>
        </div>
    </div>
    <div style="width:73%; margin: 0 auto;">
        <asp:LinkButton ID="lbtnBack" runat="server" Text="<-- Back to all categories" Font-Underline="True" ForeColor="#0000CC" CssClass="Under" CausesValidation="False"></asp:LinkButton>
    </div>
    <br />
    <br />
    <br />
    <div style="width:80%; margin: 0 auto;">
    <asp:MultiView ID="mvMain" runat="server" ActiveViewIndex="0">
        <asp:View ID="vProducts" runat="server">
             <asp:Panel ID="pnlSearch" runat="server" Height="38px">
                <div class="Center">
                <table style="width: 100%;">
                    <tr>
                        <td style="width: 174px"></td>
                        <td style="width: 401px">
                            <asp:Label ID="lblSearch" runat="server" Text="Search" Font-Size="Medium" ForeColor="Black"></asp:Label>
                            &nbsp;
                            <asp:TextBox ID="txtSearch" runat="server" Font-Size="Medium"></asp:TextBox>
                            &nbsp;
                            <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn sqaure_bt" Font-Size="Medium" ForeColor="White" />
                        </td>
                        <td style="width: 263px">
                            <asp:RadioButtonList ID="rblSearchType" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" Font-Size="Medium" ForeColor="Black">

                                <asp:ListItem Selected="True">Name</asp:ListItem> 
                                <asp:ListItem>Price</asp:ListItem>

                            </asp:RadioButtonList>
                        </td>
                        <td>
                            <asp:RadioButtonList ID="rblSortOrder" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" Font-Size="Medium" ForeColor="Black">
                                <asp:ListItem Selected="True">ASC</asp:ListItem> 
                                <asp:ListItem>DESC</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 174px">&nbsp;</td>
                        <td style="width: 401px">&nbsp;</td>
                        <td style="width: 263px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 174px">&nbsp;</td>
                        <td style="width: 401px">&nbsp;</td>
                        <td style="width: 263px">&nbsp;</td>
                    </tr>
                </table>
                </div>

            </asp:Panel>
            <div class="Center">
            <asp:DataList ID="dlProducts" runat="server" DataKeyField="ProductID" DataSourceID="dsGeography" ForeColor="Black" RepeatDirection="Horizontal" RepeatColumns="3" CellSpacing="25" CellPadding="10" Width="100%"  class="text-center">
                <ItemTemplate>
                    <asp:Label ID="ProductNameLabel" runat="server" Font-Size="Large" Text='<%# Eval("ProductName") %>' Font-Bold="True" ForeColor="Black" />
                    <br />
                    <asp:Image ID="imgProduct" runat="server" Height="280px" ImageUrl='<%# Eval("ImagePath", "images/ProductsImages/{0}") %>' Width="330px" cssClass="products"/>
                    <br />
                    Price:
                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                    £<br />
                    <br />
                    <asp:Button ID="btnViewDetails" runat="server" Text="View Details" CommandName="ProductID" CommandArgument='<%# Eval("ProductID") %>' CausesValidation="False" />
                    <br />
                </ItemTemplate>
            </asp:DataList>
            </div> 
            <asp:SqlDataSource ID="dsGeography" runat="server" ConnectionString="<%$ ConnectionStrings:QuizzarooDBConnectionString %>" SelectCommand="SELECT * FROM [Products] WHERE ([ProductCategory] = @ProductCategory) ORDER BY ProductName">
                <SelectParameters>
                    <asp:Parameter DefaultValue="Geography" Name="ProductCategory" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:View>
        <asp:View ID="vDescription" runat="server">
           <div style="margin-left:auto; margin-right:auto; width:950px;">
            <!-- section -->
            <div class="section product_detail">
                <div class="container">
                    <div class="row">
                        <div class="col-md-9">
                            <div class="row">
                                <div class="col-xl-6 col-lg-12 col-md-12">
                                    <div class="product_detail_feature_img hizoom hi2">
                                        <div class='hizoom hi2'>
                                            <asp:Image ID="imgProductDescription" runat="server" Width="330px" Height="280px" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-12 col-md-12 product_detail_side detail_style1">
                                    <div class="product-heading">
                                        <asp:Label ID="lblProdName" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Black"></asp:Label>
                                    </div>
                                    <div class="detail-contant">
                                        <asp:Label ID="lblProdDesc" runat="server" Font-Size="Medium" Font-Bold="False"></asp:Label>
                                        <div class="product-detail-side">
                                            <asp:Label ID="lblPriceText" runat="server" Text="Price: " Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                                            <asp:Label ID="lblSign" runat="server" Text="£" ForeColor="Black" Font-Size="Larger" Font-Bold="True"></asp:Label><asp:Label ID="lblPrice" runat="server" Font-Bold="True" ForeColor="Black" Font-Size="Larger"></asp:Label>
                                            <%--<span class="rating"><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star-o" aria-hidden="true"></i></span><span class="review">(5 customer review)</span>--%>
                                            <br />
                                            <br />
                                            <div class="quantity">
                                                <asp:Label ID="lblQuantity" runat="server" Text="Quantity:" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                                                <asp:TextBox ID="txtQuantity" runat="server" TextMode="Number" Width="66px" CssClass="input-text qty text" min="1"></asp:TextBox>
                                                &nbsp;&nbsp;&nbsp;&nbsp;<asp:RangeValidator ID="rvQuantity" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Quantity can't be lower than 1." ForeColor="Red" MaximumValue="999" MinimumValue="1">*</asp:RangeValidator>
                                                &nbsp;<asp:Button ID="btnRecalculate" runat="server" Text="Recalculate" />
                                                <br />
                                                <br />
                                                <asp:ValidationSummary ID="vSummary" runat="server" DisplayMode="SingleParagraph" Font-Size="Medium" ForeColor="Red" />
                                                <br />
                                                <asp:Label ID="lblTotPriceText" runat="server" Text="Total Amount: " Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                                                <asp:Label ID="lblSign1" runat="server" Text="£" ForeColor="Black" Font-Size="X-Large" Font-Bold="True"></asp:Label><asp:Label ID="lblTotalAmount" runat="server" Font-Size="X-Large" Font-Bold="True" ForeColor="Black"></asp:Label>
                                                <asp:Button ID="btnAddToBasket" runat="server" Text="Add to Basket" CssClass="btn sqaure_bt" ForeColor="White" />
                                                <%--<button type="submit" class="btn sqaure_bt">Add to cart</button>--%>
                                                <br />
                                                <asp:HiddenField ID="hfProductID" runat="server" />
                                            </div>
                                        </div>
                                        <br />
                                        <asp:LinkButton ID="lbtnPrevious" runat="server" Text="<-- Back to all Quizzes" ForeColor="Blue" CssClass="Under" CausesValidation="False" Font-Underline="True"></asp:LinkButton>
                                    </div>
                                    <div class="share-post">
                                        <a href="#" class="share-text">Share</a>
                                        <ul class="social_icons">
                                            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </div>
                                    <br />
                                    <br />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
               </div>
            <br />
            <br />
        
        </asp:View>
        

    </asp:MultiView>
    </div>

</asp:Content>
