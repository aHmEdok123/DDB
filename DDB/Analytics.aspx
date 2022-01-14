<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPageAdmin.Master" CodeBehind="Analytics.aspx.vb" Inherits="DDB.Analytics" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12">
        <div class="full">
            <div class="main_heading text_align_center" style="margin-bottom: 40px">
                <h2>Analytics</h2>
                <p class="large">Here you can view analytics about customers or our products!</p>
            </div>
        </div>        
    </div>
    <div style="margin-left: auto; margin-right: auto; width: 950px;">
<table style="width: 100%;">
            <tr>
                <td style="height: 19px; width: 278px;">&nbsp;</td>
                <td style="height: 19px; width: 380px;"></td>
                <td style="height: 19px; width: 167px;"></td>
                <td style="height: 19px; width: 576px;"></td>
                <td style="height: 19px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 278px">&nbsp;</td>
                <td style="width: 380px">





        <asp:Chart runat="server" ID="ctl00" DataSourceID="dsCustomerCountry">
            <Series>
                <asp:Series Name="Series1" XValueMember="Country" YValueMembers="Residence" ChartType="Doughnut"></asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
        <asp:SqlDataSource ID="dsCustomerCountry" runat="server" ConnectionString="<%$ ConnectionStrings:QuizzarooDBConnectionString %>" SelectCommand="SELECT COUNT(CustomerID) AS Residence, Country FROM Customers GROUP BY Country"></asp:SqlDataSource>
                </td>
                <td class="preview_commt" style="width: 167px">&nbsp;</td>
                <td style="width: 576px">
        <asp:Chart ID="chProdCategories" runat="server" DataSourceID="dsProductsCategories">
            <Series>
                <asp:Series Name="Series1" XValueMember="ProductCategory" YValueMembers="NumberOfProducts" ChartType="Bar">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
        <asp:SqlDataSource ID="dsProductsCategories" runat="server" ConnectionString="<%$ ConnectionStrings:QuizzarooDBConnectionString %>" SelectCommand="SELECT COUNT(ProductID) AS NumberOfProducts, ProductCategory FROM Products GROUP BY ProductCategory"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 278px">&nbsp;</td>
                <td style="width: 380px">
        <asp:Label ID="lblResidence" runat="server" Font-Size="Large" ForeColor="Black" Text="% of Customers in different countries."></asp:Label>
                </td>
                <td class="preview_commt" style="width: 167px">&nbsp;</td>
                <td style="width: 576px">
        <asp:Label ID="lblProdCategory" runat="server" Font-Size="Large" ForeColor="Black" Text="Number of Products per category."></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 278px">&nbsp;</td>
                <td style="width: 380px">&nbsp;</td>
                <td class="preview_commt" style="width: 167px">&nbsp;</td>
                <td style="width: 576px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 278px">&nbsp;</td>
                <td style="width: 380px">&nbsp;</td>
                <td class="preview_commt" style="width: 167px">&nbsp;</td>
                <td style="width: 576px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 278px">&nbsp;</td>
                <td style="width: 380px">&nbsp;</td>
                <td class="preview_commt" style="width: 167px">&nbsp;</td>
                <td style="width: 576px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 278px">&nbsp;</td>
                <td style="width: 380px">
                    <asp:Chart ID="Chart1" runat="server" DataSourceID="dsProductsN">
                        <Series>
                            <asp:Series Name="Series1" XValueMember="ProductName" YValueMembers="MostPurchasedProducts">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                    <asp:SqlDataSource ID="dsProductsN" runat="server" ConnectionString="<%$ ConnectionStrings:QuizzarooDBConnectionString %>" SelectCommand="SELECT COUNT(Quantity) AS MostPurchasedProducts, ProductName FROM OrderDetails GROUP BY ProductName"></asp:SqlDataSource>
                </td>
                <td class="preview_commt" style="width: 167px">&nbsp;</td>
                <td style="width: 576px">
                    <asp:Chart ID="Chart2" runat="server" DataSourceID="dsLoginActive">
                        <Series>
                            <asp:Series ChartType="Pie" Legend="Active Accounts" Name="Series1" XValueMember="IsActive" YValueMembers="ActiveAccounts">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </ChartAreas>
                        <Legends>
                            <asp:Legend Name="Active Accounts">
                            </asp:Legend>
                            <asp:Legend Name="Inactive Accounts">
                            </asp:Legend>
                        </Legends>
                    </asp:Chart>
                    <asp:SqlDataSource ID="dsLoginActive" runat="server" ConnectionString="<%$ ConnectionStrings:QuizzarooDBConnectionString %>" SelectCommand="SELECT COUNT(LoginID) AS ActiveAccounts, IsActive FROM Login GROUP BY IsActive"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 278px; height: 34px"></td>
                <td style="width: 380px; height: 34px">
        <asp:Label ID="lblMostPurchProd" runat="server" Font-Size="Large" ForeColor="Black" Text="Most purchased Products."></asp:Label>
                </td>
                <td class="preview_commt" style="width: 167px; height: 34px"></td>
                <td style="width: 576px; height: 34px">
        <asp:Label ID="lblActive" runat="server" Font-Size="Large" ForeColor="Black" Text="% Of Active Accounts (1)"></asp:Label>
                    <br />
                </td>
                <td style="height: 34px"></td>
            </tr>
            <tr>
                <td style="width: 278px">&nbsp;</td>
                <td style="width: 380px">&nbsp;</td>
                <td class="preview_commt" style="width: 167px">&nbsp;</td>
                <td style="width: 576px">
        <asp:Label ID="lblInactive" runat="server" Font-Size="Large" ForeColor="Black" Text="% Of Inactive Accounts (0)"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 278px">&nbsp;</td>
                <td style="width: 380px">&nbsp;</td>
                <td class="preview_commt" style="width: 167px">&nbsp;</td>
                <td style="width: 576px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>





        <br />
        <br />
    </div> 
</asp:Content>
