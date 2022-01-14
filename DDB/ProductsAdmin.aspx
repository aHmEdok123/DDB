<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPageAdmin.Master" CodeBehind="ProductsAdmin.aspx.vb" Inherits="DDB.ProductsAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12">
        <div class="full">
            <div class="main_heading text_align_center" style="margin-bottom: 40px">
                <h2>Products</h2>
                <p class="large">Here you can view, update or delete the Products.</p>
            </div>
        </div>
    </div>
    <div style="margin-left:auto; margin-right:auto; width:714px;">
        <table style="width: 115%;">
    <tr>
        <td class="auto-style17" style="height: 19px"></td>
        <td class="auto-style4" style="height: 19px"></td>
        <td style="height: 19px"></td>
        <td class="auto-style10" style="height: 19px; width: 95px"></td>
        <td class="auto-style12" style="height: 19px; width: 39px"></td>
        <td class="auto-style14" style="height: 19px"></td>
        <td style="height: 19px"></td>
        <td style="height: 19px"></td>
    </tr>
    <tr>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style10" style="width: 95px">&nbsp;</td>
        <td class="auto-style12" style="width: 39px">&nbsp;</td>
        <td class="auto-style14">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style10" style="width: 95px">&nbsp;</td>
        <td class="auto-style12" style="width: 39px">&nbsp;</td>
        <td class="auto-style14">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style4">
            <asp:Label ID="lblProductID" runat="server" Text="ProductID" ForeColor="Black"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
        <td class="auto-style10" style="width: 95px">
            <asp:DropDownList ID="ddlProductID" runat="server" DataTextField="ProductID" DataValueField="ProductID" DataSourceID="dsProductID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="dsProductID" runat="server" ConnectionString="<%$ ConnectionStrings:QuizzarooDBConnectionString %>" SelectCommand="SELECT [ProductID] FROM [Products]"></asp:SqlDataSource>
        </td>
        <td class="auto-style12" style="width: 39px">&nbsp;</td>
        <td class="auto-style14">&nbsp;</td>
        <td rowspan="5">
            <asp:Image ID="ImgProd" runat="server" Height="169px" Width="202px" />
        </td>
        <td rowspan="5">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style18" rowspan="2"></td>
        <td class="auto-style8" rowspan="2">
            <asp:Label ID="lblProductName" runat="server" Text="Product Name" ForeColor="Black"></asp:Label>
        </td>
        <td class="auto-style23" rowspan="2">
            &nbsp;</td>
        <td class="auto-style11" rowspan="2" style="width: 95px">
            <asp:TextBox ID="txtProdName" runat="server" Width="202px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvProdName" runat="server" ControlToValidate="txtProdName" ErrorMessage="Please Enter the Product Name." ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
        <td class="auto-style13" rowspan="2" style="width: 39px"></td>
        <td class="auto-style14">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style14" style="height: 42px">
            <asp:Label ID="lblImage" runat="server" Text="Image" ForeColor="Black"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style17" rowspan="2">&nbsp;</td>
        <td class="auto-style4" rowspan="2">
            <asp:Label ID="lblProdDesc" runat="server" Text="Description" ForeColor="Black"></asp:Label>
        </td>
        <td rowspan="2">
            &nbsp;</td>
        <td class="auto-style10" rowspan="2" style="width: 95px">
            <asp:TextBox ID="txtProdDesc" runat="server" Width="202px" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvProdDesc" runat="server" ControlToValidate="txtProdCategory" ErrorMessage="Please Enter the Product Description." ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
        <td class="auto-style12" rowspan="2" style="width: 39px">&nbsp;</td>
        <td class="auto-style14">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style14" style="height: 42px">
            </td>
    </tr>
    <tr>
        <td class="auto-style17" style="height: 42px"></td>
        <td class="auto-style4" style="height: 42px">
            <asp:Label ID="lblProdCategory" runat="server" Text="Category" ForeColor="Black"></asp:Label>
        </td>
        <td style="height: 42px">
            </td>
        <td class="auto-style10" style="height: 42px; width: 95px">
            <asp:TextBox ID="txtProdCategory" runat="server" Width="202px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvContactTitle" runat="server" ControlToValidate="txtProdCategory" ErrorMessage="Please Enter the Product Category." ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
        <td class="auto-style12" style="height: 42px; width: 39px"></td>
        <td class="auto-style14" style="height: 42px">
            <asp:Label ID="lblImagePath" runat="server" ForeColor="Black" Text="Image Path"></asp:Label>
        </td>
        <td style="height: 42px">
            <asp:TextBox ID="txtImagePath" runat="server" Width="202px" CssClass="col-xs-offset-0"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvImagePath" runat="server" ControlToValidate="txtImagePath" ErrorMessage="Please Enter the Image Path." ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
        <td style="height: 42px"></td>
    </tr>
    <tr>
        <td class="auto-style17" style="height: 42px"></td>
        <td class="auto-style4" style="height: 42px">
            <asp:Label ID="lblPrice" runat="server" Text="Price" ForeColor="Black"></asp:Label>
        </td>
        <td style="height: 42px">
            </td>
        <td class="auto-style10" style="height: 42px; width: 95px">
            <asp:TextBox ID="txtPrice" runat="server" Width="202px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPrice" runat="server" ControlToValidate="txtPrice" ErrorMessage="Please Enter the Product Price" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
        <td class="auto-style12" style="height: 42px; width: 39px"></td>
        <td class="auto-style14" style="height: 42px">
            <asp:Label ID="lblAllAge" runat="server" Text="All Age" ForeColor="Black"></asp:Label>
        </td>
        <td style="height: 42px">
            <asp:DropDownList ID="ddlAllAge" runat="server" AutoPostBack="True" Width="202px">
                <asp:ListItem Value="True">True</asp:ListItem>
                <asp:ListItem Value="False">False</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td style="height: 42px">
            </td>
    </tr>
    <tr>
        <td class="auto-style17" style="height: 42px"></td>
        <td class="auto-style4" style="height: 42px">
            <asp:Label ID="lblEduLevel" runat="server" Text="Educational Level" ForeColor="Black"></asp:Label>
        </td>
        <td style="height: 42px">
            </td>
        <td class="auto-style10" style="height: 42px; width: 95px">
            <asp:TextBox ID="txtEduLevel" runat="server" Width="202px" CssClass="col-xs-offset-0"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEduLevel" runat="server" ControlToValidate="txtEduLevel" ErrorMessage="Please Enter the Educational Level." ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
        <td class="auto-style12" style="height: 42px; width: 39px"></td>
        <td class="auto-style14" style="height: 42px">
        </td>
        <td style="height: 42px">
        </td>
        <td style="height: 42px">
            </td>
    </tr>
    <tr>
        <td class="auto-style17" style="height: 19px"></td>
        <td colspan="6" style="height: 19px"></td>
        <td style="height: 19px"></td>
    </tr>
    <tr>
        <td class="auto-style17">&nbsp;</td>
        <td colspan="6">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style4">
            <asp:Button ID="btnGetProduct" runat="server" Text="Get Product" CausesValidation="False" CssClass="btn sqaure_bt" ForeColor="White" />
        </td>
        <td>
            &nbsp;</td>
        <td class="auto-style10" style="width: 95px">
            <asp:Button ID="btnAddProduct" runat="server" Text="Add a New Product" CssClass="btn sqaure_bt" Height="37px" Width="222px" ForeColor="White" />
        </td>
        <td class="auto-style12" style="width: 39px">
            &nbsp;</td>
        <td colspan="2">
            <asp:Button ID="btnUpdate" runat="server" Text="Update" Height="29px" Width="101px" BackColor="#33CC33" ForeColor="White" />
            &nbsp;
            <asp:Button ID="btnDelete" runat="server" Text="Delete" Height="33px" Width="101px" CausesValidation="False" BackColor="Red" ForeColor="White" />
            &nbsp;
            <asp:Button ID="btnClear" runat="server" Text="Clear" Height="29px" Width="101px" CausesValidation="False" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style20"></td>
        <td class="auto-style21" colspan="6">
            &nbsp;</td>
        <td class="auto-style21">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style17">&nbsp;</td>
        <td colspan="3">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="This is the list of errors:" DisplayMode="List" />
        </td>
        <td class="auto-style12" style="width: 39px">&nbsp;</td>
        <td class="auto-style14">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style17">
            &nbsp;</td>
        <td class="auto-style4">
            <asp:Label ID="lblMessage" runat="server" Font-Size="Medium" ForeColor="#33CC33"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
        <td class="auto-style10" style="width: 95px">
            &nbsp;</td>
        <td class="auto-style12" style="width: 39px">&nbsp;</td>
        <td class="auto-style14">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
    </div> 
</asp:Content>
