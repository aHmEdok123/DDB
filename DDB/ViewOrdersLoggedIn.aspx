<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPageClientLoggedIn.Master" CodeBehind="ViewOrdersLoggedIn.aspx.vb" Inherits="DDB.ViewOrdersLoggedIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="col-md-12">
        <div class="full">
            <div class="main_heading text_align_center" style="margin-bottom: 40px">
                <h2>View your Orders History</h2>
                <p class="large">Here you can view your orders history.</p>
            </div>
        </div>
    </div>
    <div style="margin-left:auto; margin-right:auto; width:650px;">
        <asp:GridView ID="gvOrders" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID,ProductName" DataSourceID="dsOrders" Width="650px" ForeColor="Black" Height="400px">
            <Columns>
                <asp:BoundField DataField="OrderID" HeaderText="Order ID" ReadOnly="True" SortExpression="OrderID" >
                <HeaderStyle Font-Size="Medium" BackColor="#84DCF4" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField='ImagePath' HeaderText="ImagePath" SortExpression="ImagePath" Visible="False">
                    <HeaderStyle Font-Size="Medium" />
                </asp:ImageField>
                <asp:BoundField DataField="ProductName" HeaderText="Product Name" ReadOnly="True" SortExpression="ProductName" >
                <HeaderStyle Font-Size="Medium" BackColor="#84DCF4" />
                </asp:BoundField>
                <asp:BoundField DataField="UnitPrice" HeaderText="Unit Price" SortExpression="UnitPrice" >
                <HeaderStyle Font-Size="Medium" BackColor="#84DCF4" />
                </asp:BoundField>
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" >
                <HeaderStyle Font-Size="Medium" BackColor="#84DCF4" />
                </asp:BoundField>
                <asp:BoundField DataField="OrderDate" HeaderText="Order Date" SortExpression="OrderDate" >
                <HeaderStyle Font-Size="Medium" BackColor="#84DCF4" />
                </asp:BoundField>
            </Columns>
            <EditRowStyle CssClass="Space" />
                <EmptyDataRowStyle BorderStyle="None" ForeColor="Black" BorderColor="White" Font-Bold="True" Font-Size="Larger" Font-Underline="False" />
                <HeaderStyle CssClass="Center" Font-Size="Medium" />
                <RowStyle HorizontalAlign="Center" />
        </asp:GridView>
        <asp:SqlDataSource ID="dsOrders" runat="server" ConnectionString="<%$ ConnectionStrings:QuizzarooDBConnectionString %>" SelectCommand="SELECT OrderDetails.OrderID, OrderDetails.ProductName, OrderDetails.UnitPrice, OrderDetails.Quantity, Orders.OrderDate, Products.ImagePath FROM Orders INNER JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID INNER JOIN BillingInfo ON Orders.BillingID = BillingInfo.BillingID INNER JOIN Login ON Customers.CustomerID = Login.CustomerID INNER JOIN Products ON OrderDetails.ProductName = Products.ProductName WHERE (Customers.CustomerID = @param1) ORDER BY Orders.OrderDate">
            <SelectParameters>
                <asp:SessionParameter Name="param1" SessionField="CustomerID" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Label ID="lblHelp" runat="server" CssClass="LoginCss" Font-Size="Medium" ForeColor="Black" Text="For any queries about your orders: "></asp:Label>
        &nbsp;
        <asp:Button ID="btnContactUs" runat="server" CssClass="btn sqaure_bt" Font-Size="Medium" ForeColor="White" Text="Contact Us!" />
    </div>
    
</asp:Content>
