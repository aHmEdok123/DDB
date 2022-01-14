<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPageClient.Master" CodeBehind="Basket.aspx.vb" Inherits="DDB.Basket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12">
        <div class="full">
            <div class="main_heading text_align_center" style="margin-bottom: 30px !important">
                <h2>Shopping Basket</h2>
                <p class="large">View all the items in your shopping Basket.</p>
            </div>
        </div>
    </div>
    <asp:MultiView ID="mvMain" runat="server">
        <asp:View ID="vSummary" runat="server">
            <div style="margin-left:auto; margin-right:auto; width:650px;">
            <asp:GridView ID="gvSummary" runat="server" AutoGenerateColumns="False" Width="650px" EmptyDataText="Your Shopping Basket is Empty." Height="132px" ForeColor="Black">

                <Columns>
                    <asp:BoundField DataField="ProductID" HeaderText="Product ID" />
                    <asp:BoundField DataField="ProductName" HeaderText="Name" />
                    <asp:BoundField DataField="ProductType" HeaderText="Product Type" Visible="False" />
                    <asp:BoundField DataField="UnitPrice" HeaderText="Unit Price" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                    <asp:BoundField DataField="Amount" HeaderText="Amount" />
                    <asp:ButtonField CommandName="UpdateItem" HeaderText="Edit" Text="Update" >
                    <ItemStyle Font-Underline="True" ForeColor="#0000CC" />
                    </asp:ButtonField>
                    <asp:ButtonField CommandName="RemoveItem" HeaderText="Remove" Text="Remove" >
                    <ItemStyle Font-Underline="True" ForeColor="#0000CC" />
                    </asp:ButtonField>
                </Columns>
                <EditRowStyle CssClass="Space" />
                <EmptyDataRowStyle BorderStyle="None" ForeColor="Black" BorderColor="White" Font-Bold="True" Font-Size="Larger" Font-Underline="False" />
                <HeaderStyle CssClass="Center" Font-Size="Medium" />
                <RowStyle HorizontalAlign="Center" />
            </asp:GridView>
            </div>
            <br />
            <div style="margin-left: auto; margin-right: auto; width: 650px;">
                <asp:Label ID="lblItemText1" runat="server" Text="Number of Items:" ForeColor="Black"></asp:Label>
                &nbsp;
            <asp:Label ID="lblItemCount" runat="server" Text="0" CssClass="Font" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                &nbsp;
            <asp:Label ID="lblAmountText1" runat="server" Text="Total amount:" ForeColor="Black"></asp:Label>
                <asp:Label ID="lblSign1" runat="server" Text="£" ForeColor="Black" Font-Size="Large" Font-Bold="True"></asp:Label>
                <asp:Label ID="lblGrandTotal" runat="server" Text="0.00" CssClass="Font" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnPayNow" runat="server" Text="Pay Now" Width="144px" CausesValidation="False" />
            </div>
        </asp:View>
        <asp:View ID="vLogin" runat="server">
            <div style="margin-left:auto; margin-right:auto; width:950px;">
                <div class="payment-form">
                <table style="width: 100%;">
                    <tr >
                        <td style="border-bottom: 1px solid #ccc; height: 29px; width: 367px;">
                        </td>
                        <td style="border-bottom: 1px solid #ccc; width: 304px; height: 29px;">
                            <asp:Label ID="lblLoginFirst" runat="server" Font-Size="Large" Font-Bold="True" ForeColor="Red"></asp:Label>
                        </td>
                        <td style="border-bottom: 1px solid #ccc; height: 29px;">
                            
                            </td>
                    </tr>
                    <tr>
                        <td style="height: 19px; width: 367px;">
                            &nbsp;</td>
                        <td style="width: 304px; height: 19px;">&nbsp;</td>
                        <td style="height: 19px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="height: 19px; width: 367px;">
                            <asp:Label ID="lblHelpLogin" runat="server" Font-Size="Medium" ForeColor="Black" Text="Need Help? Click on the following button!"></asp:Label>
                        </td>
                        <td style="width: 304px; height: 19px;">
                            <button onclick="document.getElementById('id01').style.display='block'; return false;" class="btn sqaure_bt" style="width:auto; color: White" ><span class="glyphicon glyphicon-user"></span> Login</button>
                            &nbsp;</td>
                        <td style="height: 19px"></td>
                    </tr>
                </table>
            </div>
        </div>
        </asp:View>
        <asp:View ID="vUpdate" runat="server">
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
                                        <div class="product-detail-side">
                                            <asp:Label ID="lblPriceText" runat="server" Text="Price: " Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                                            <asp:Label ID="lblSign" runat="server" Text="£" ForeColor="Black" Font-Size="Larger" Font-Bold="True"></asp:Label><asp:Label ID="lblPrice" runat="server" Font-Bold="True" ForeColor="Black" Font-Size="Larger"></asp:Label>
                                            <%--<span class="rating"><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star-o" aria-hidden="true"></i></span><span class="review">(5 customer review)</span>--%>
                                            <br />
                                            <br />
                                            <div class="quantity">
                                                <asp:Label ID="lblQuantity" runat="server" Text="Quantity:" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                                                <asp:TextBox ID="txtQuantity" runat="server" TextMode="Number" Width="66px" CssClass="input-text qty text"></asp:TextBox>
                                                &nbsp;&nbsp;&nbsp;&nbsp;<asp:RangeValidator ID="rvQuantity" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Quantity can't be lower than 1." ForeColor="Red" MaximumValue="999" MinimumValue="1">*</asp:RangeValidator>
                                                &nbsp;<asp:Button ID="btnRecalculate" runat="server" Text="Recalculate" />
                                                <br />
                                                <br />
                                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="SingleParagraph" Font-Size="Medium" ForeColor="Red" />
                                                <br />
                                                <asp:Label ID="lblTotPriceText" runat="server" Text="Total Amount: " Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                                                <asp:Label ID="lblSign2" runat="server" Text="£" ForeColor="Black" Font-Size="X-Large" Font-Bold="True"></asp:Label><asp:Label ID="lblTotalAmount" runat="server" Font-Size="X-Large" Font-Bold="True" ForeColor="Black"></asp:Label>
                                                <asp:Button ID="btnUpdateBasket" runat="server" Text="Update Basket" CssClass="btn sqaure_bt" ForeColor="White" />
                                                <%--<button type="submit" class="btn sqaure_bt">Add to cart</button>--%>
                                                <asp:HiddenField ID="hfRowIndex" runat="server" />
                                                <br />
                                            </div>
                                        </div>
                                        <br />
                                        </div>
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
        <asp:View ID="vCardDetails" runat="server">
            <div style="margin-left:auto; margin-right:auto; width:950px;">
                <div class="payment-form">
                <table style="width: 100%;">
                    <tr >
                        <td style="border-bottom: 1px solid #ccc;" colspan="2">
                            <asp:Label ID="lblPaymentText0" runat="server" cssclass="panel-title display-td" Font-Size="Large" ForeColor="Black" Text="Payment Details" Font-Bold="True"></asp:Label>
                        </td>
                        <td style="border-bottom: 1px solid #ccc; width: 267px;">&nbsp;</td>
                        <td style="border-bottom: 1px solid #ccc;">
                            <asp:Image ID="imgCards0" runat="server" CssClass="img-responsive pull-right" ImageUrl="~/images/it_service/accepted.png" />
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 19px; width: 245px;">&nbsp;</td>
                        <td style="height: 19px; width: 129px;"></td>
                        <td style="width: 267px; height: 19px;"></td>
                        <td style="height: 19px"></td>
                    </tr>
                    <tr>
                        <td style="width: 245px">&nbsp;</td>
                        <td style="width: 129px">
                            <asp:Label ID="lblCardType" runat="server" Font-Size="Medium" ForeColor="Black" Text="Card Type:"></asp:Label>
                        </td>
                        <td style="width: 267px">
                            <asp:DropDownList ID="ddlCardType" runat="server" Font-Size="Medium">
                                <asp:ListItem>American Express</asp:ListItem>
                                <asp:ListItem>Discover</asp:ListItem>
                                <asp:ListItem>MasterCard</asp:ListItem>
                                <asp:ListItem>Visa</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvCardType" runat="server" ControlToValidate="ddlCardType" ErrorMessage="Card type is required." Font-Size="Medium" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 245px; height: 7px"></td>
                        <td style="width: 129px; height: 7px"></td>
                        <td style="width: 267px; height: 7px;"></td>
                        <td style="height: 7px"></td>
                    </tr>
                    <tr>
                        <td style="width: 245px">&nbsp;</td>
                        <td style="width: 129px">
                            <asp:Label ID="lblCardNumber" runat="server" Font-Size="Medium" Text="Card Number: " ForeColor="Black"></asp:Label>
                        </td>
                        <td style="width: 267px">
                            <asp:TextBox ID="txtCardNumber" runat="server" MaxLength="20" Font-Size="Medium"></asp:TextBox>
                            <span class="input-group-addon"><i class="fa fa-credit-card"></i></span>
                        </td>
                        <td>
                            <asp:CustomValidator ID="cvCardNumber" runat="server" ErrorMessage="Card number is not valid." Font-Size="Medium" ForeColor="Red">*</asp:CustomValidator>
                            <asp:RequiredFieldValidator ID="rfvCardNumber" runat="server" ControlToValidate="txtCardNumber" ErrorMessage="Please enter a Valid Card Number with 16 digits." Font-Size="Medium" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 245px; height: 7px;"></td>
                        <td style="width: 129px; height: 7px;"></td>
                        <td style="width: 267px; height: 7px;"></td>
                        <td style="height: 7px"></td>
                    </tr>
                    <tr>
                        <td style="width: 245px">&nbsp;</td>
                        <td style="width: 129px">
                            <asp:Label ID="lblExpiryDate" runat="server" Font-Size="Medium" ForeColor="Black" Text="Expiry Date: "></asp:Label>
                        </td>
                        <td style="width: 267px">
                            <asp:DropDownList ID="ddlExpiryMonth" runat="server" Font-Size="Medium" ForeColor="Black">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;<asp:DropDownList ID="ddlExpiryYear" runat="server" Font-Size="Medium" ForeColor="Black">
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:CustomValidator ID="cvExpiryDate" runat="server" ErrorMessage="Expiry date is not valid." Font-Size="Medium" ForeColor="Red">*</asp:CustomValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 245px; height: 7px;"></td>
                        <td style="width: 129px; height: 7px;"></td>
                        <td style="width: 267px; height: 7px;"></td>
                        <td style="height: 7px"></td>
                    </tr>
                    <tr>
                        <td style="width: 245px">&nbsp;</td>
                        <td style="width: 129px">
                            <asp:Label ID="lblCVC" runat="server" Font-Size="Medium" ForeColor="Black" Text="CVC: "></asp:Label>
                        </td>
                        <td style="width: 267px">
                            <asp:TextBox ID="txtCVC" runat="server" Font-Size="Medium" MaxLength="3"></asp:TextBox>
                        </td>
                        <td>
                            <asp:CustomValidator ID="cvCVC" runat="server" ErrorMessage="CVC is invalid." Font-Size="Medium" ForeColor="Red">*</asp:CustomValidator>
                            <asp:RequiredFieldValidator ID="rfvCVC" runat="server" ControlToValidate="txtCVC" ErrorMessage="Please Enter CVC." Font-Size="Medium" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 245px">&nbsp;</td>
                        <td style="width: 129px">&nbsp;</td>
                        <td style="width: 267px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 245px">&nbsp;</td>
                        <td style="width: 129px">&nbsp;</td>
                        <td style="width: 267px">
                            <asp:Button ID="btnSubmit" runat="server" CssClass="btn sqaure_bt" Font-Size="Medium" ForeColor="White" Text="Submit" />
                            &nbsp;
                            <asp:Button ID="btnCancel" runat="server" BackColor="Red" CssClass="btn sqaure_bt" Font-Size="Medium" ForeColor="White" Text="Cancel" CausesValidation="False" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 245px">&nbsp;</td>
                        <td style="width: 129px">&nbsp;</td>
                        <td style="width: 267px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 245px">&nbsp;</td>
                        <td style="width: 129px">&nbsp;</td>
                        <td style="width: 267px">
                            <asp:ValidationSummary ID="vSummaryBilling" runat="server" DisplayMode="List" Font-Size="Medium" ForeColor="Red" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </div>
        </div>
        </asp:View>
        <asp:View ID="vBillingDetails" runat="server">
<div style="margin-left:auto; margin-right:auto; width:950px;">
                <div class="payment-form">
                <table style="width: 100%;">
                    <tr >
                        <td style="border-bottom: 1px solid #ccc;" colspan="2">
                            <asp:Label ID="lblBillingInfo" runat="server" cssclass="panel-title display-td" Font-Size="Large" ForeColor="Black" Text="Billing Information" Font-Bold="True"></asp:Label>
                        </td>
                        <td style="border-bottom: 1px solid #ccc; width: 267px;">&nbsp;</td>
                        <td style="border-bottom: 1px solid #ccc;">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="height: 19px; width: 245px;">&nbsp;</td>
                        <td style="height: 19px; width: 129px;"></td>
                        <td style="width: 267px; height: 19px;"></td>
                        <td style="height: 19px"></td>
                    </tr>
                    <tr>
                        <td style="width: 245px">&nbsp;</td>
                        <td colspan="2">
                            <asp:Label ID="lblCardInfo" runat="server" Font-Size="Medium" ForeColor="Black" Text="Card Info "></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 245px; height: 7px"></td>
                        <td style="width: 129px; height: 7px"></td>
                        <td style="width: 267px; height: 7px;"></td>
                        <td style="height: 7px"></td>
                    </tr>
                    <tr>
                        <td style="width: 245px">&nbsp;</td>
                        <td style="width: 129px">
                            <asp:Label ID="lblBFirstName" runat="server" Font-Size="Medium" Text="First Name: " ForeColor="Black"></asp:Label>
                        </td>
                        <td style="width: 267px">
                            <asp:TextBox ID="txtBFirstName" runat="server" Font-Size="Medium"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvBFirstName" runat="server" ControlToValidate="txtBFirstName" ErrorMessage="Please enter your First Name." Font-Size="Medium" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 245px; height: 7px;"></td>
                        <td style="width: 129px; height: 7px;"></td>
                        <td style="width: 267px; height: 7px;"></td>
                        <td style="height: 7px"></td>
                    </tr>
                    <tr>
                        <td style="width: 245px">&nbsp;</td>
                        <td style="width: 129px">
                            <asp:Label ID="lblBLastName" runat="server" Font-Size="Medium" ForeColor="Black" Text="Last Name: "></asp:Label>
                        </td>
                        <td style="width: 267px">
                            <asp:TextBox ID="txtBLastName" runat="server" Font-Size="Medium"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvBLastName" runat="server" ControlToValidate="txtBLastName" ErrorMessage="Please enter your Last Name." Font-Size="Medium" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 245px; height: 7px;"></td>
                        <td style="width: 129px; height: 7px;"></td>
                        <td style="width: 267px; height: 7px;"></td>
                        <td style="height: 7px"></td>
                    </tr>
                    <tr>
                        <td style="width: 245px">&nbsp;</td>
                        <td style="width: 129px">
                            <asp:Label ID="lblBAddress1" runat="server" Font-Size="Medium" ForeColor="Black" Text="Address 1: "></asp:Label>
                        </td>
                        <td style="width: 267px">
                            <asp:TextBox ID="txtBAddress1" runat="server" Font-Size="Medium"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvBAddress" runat="server" ControlToValidate="txtBAddress1" ErrorMessage="Please enter your Address." Font-Size="Medium" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 245px; height: 7px;"></td>
                        <td style="width: 129px; height: 7px;"></td>
                        <td style="width: 267px; height: 7px;"></td>
                        <td style="height: 7px"></td>
                    </tr>
                    <tr>
                        <td style="width: 245px">&nbsp;</td>
                        <td style="width: 129px">
                            <asp:Label ID="lblBAddress2" runat="server" Font-Size="Medium" ForeColor="Black" Text="Address 2: "></asp:Label>
                        </td>
                        <td style="width: 267px">
                            <asp:TextBox ID="txtBAddress2" runat="server" Font-Size="Medium"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 245px; height: 7px;"></td>
                        <td style="width: 129px; height: 7px;"></td>
                        <td style="width: 267px; height: 7px;"></td>
                        <td style="height: 7px"></td>
                    </tr>
                    <tr>
                        <td style="width: 245px">&nbsp;</td>
                        <td style="width: 129px">
                            <asp:Label ID="lblBCity" runat="server" Font-Size="Medium" ForeColor="Black" Text="City: "></asp:Label>
                        </td>
                        <td style="width: 267px">
                            <asp:TextBox ID="txtBCity" runat="server" Font-Size="Medium"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvBCIty" runat="server" ControlToValidate="txtBCity" ErrorMessage="Please enter the City." Font-Size="Medium" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 245px; height: 7px;"></td>
                        <td style="width: 129px; height: 7px;"></td>
                        <td style="width: 267px; height: 7px;"></td>
                        <td style="height: 7px"></td>
                    </tr>
                    <tr>
                        <td style="width: 245px">&nbsp;</td>
                        <td style="width: 129px">
                            <asp:Label ID="lblBCountry" runat="server" Font-Size="Medium" ForeColor="Black" Text="Country: "></asp:Label>
                        </td>
                        <td style="width: 267px">
                            <asp:DropDownList ID="ddlCountry" runat="server" DataSourceID="dsCountry" DataTextField="CountryName" DataValueField="CountryID" Font-Size="Medium">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="dsCountry" runat="server" ConnectionString="<%$ ConnectionStrings:QuizzarooDBConnectionString %>" SelectCommand="SELECT [CountryID], [CountryName] FROM [CountryList]"></asp:SqlDataSource>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 245px; height: 7px;"></td>
                        <td style="width: 129px; height: 7px;"></td>
                        <td style="width: 267px; height: 7px;"></td>
                        <td style="height: 7px"></td>
                    </tr>
                    <tr>
                        <td style="width: 245px">&nbsp;</td>
                        <td style="width: 129px">
                            <asp:Label ID="lblBPostCode" runat="server" Font-Size="Medium" ForeColor="Black" Text="Post Code: "></asp:Label>
                        </td>
                        <td style="width: 267px">
                            <asp:TextBox ID="txtBPostcode" runat="server" Font-Size="Medium"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvBPostCode" runat="server" ControlToValidate="txtBPostcode" ErrorMessage="Please enter your Post Code." Font-Size="Medium" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 245px; height: 7px;"></td>
                        <td style="width: 129px; height: 7px;"></td>
                        <td style="width: 267px; height: 7px;"></td>
                        <td style="height: 7px"></td>
                    </tr>
                    <tr>
                        <td style="width: 245px">&nbsp;</td>
                        <td style="width: 129px">&nbsp;</td>
                        <td style="width: 267px">
                            <asp:ValidationSummary ID="vSummaryBilling0" runat="server" DisplayMode="List" Font-Size="Medium" ForeColor="Red" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 245px; height: 7px;"></td>
                        <td style="width: 129px; height: 7px;"></td>
                        <td style="width: 267px; height: 7px;"></td>
                        <td style="height: 7px"></td>
                    </tr>
                    <tr>
                        <td style="width: 245px">&nbsp;</td>
                        <td style="width: 129px">&nbsp;</td>
                        <td style="width: 267px">
                            <asp:Button ID="btnComplete" runat="server" CssClass="btn sqaure_bt" Font-Size="Medium" ForeColor="White" Text="Complete Purchase" />
                        </td>
                        <td>
                            <asp:Button ID="btnCancelBilling" runat="server" BackColor="Red" CssClass="btn sqaure_bt" Font-Size="Medium" ForeColor="White" Text="Cancel" CausesValidation="False" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 245px">&nbsp;</td>
                        <td style="width: 129px">&nbsp;</td>
                        <td style="width: 267px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </div>
        </div>

        </asp:View>
        <asp:View ID="vConfirmation" runat="server">
            <div style="margin-left:auto; margin-right:auto; width:950px;">
                <div class="payment-form">
                <table style="width: 100%;">
                    <tr >
                        <td style="border-bottom: 1px solid #ccc; height: 29px;" colspan="2">
                        </td>
                        <td style="border-bottom: 1px solid #ccc; width: 304px; height: 29px;">
                            <asp:Label ID="lblMessage" runat="server" Font-Size="Large"></asp:Label>
                        </td>
                        <td style="border-bottom: 1px solid #ccc; height: 29px;">
                            <asp:Button ID="btnEmailConfirmation" runat="server" Text="Email Confirmation"  CssClass="btn sqaure_bt" ForeColor="White" Font-Size="Small" />
                            </td>
                    </tr>
                    <tr>
                        <td style="height: 19px; width: 166px;">
                            <asp:LinkButton ID="lbtnYourAccount" runat="server" CausesValidation="False" CssClass="Under" Font-Underline="True" ForeColor="#0000CC" Text="&lt;-- Your Account."></asp:LinkButton>
                        </td>
                        <td style="height: 19px; width: 129px;"></td>
                        <td style="width: 304px; height: 19px;"></td>
                        <td style="height: 19px"></td>
                    </tr>
                </table>
            </div>
        </div>

        </asp:View>
    </asp:MultiView>

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

     <!-- This is the JavaScript for the login Modal -->
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
