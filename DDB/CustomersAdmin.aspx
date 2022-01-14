<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPageAdmin.Master" CodeBehind="CustomersAdmin.aspx.vb" Inherits="DDB.CustomersAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style4 {
             width: 103px;
         }
        .auto-style10 {
             width: 220px;
         }
        .auto-style14 {
             width: 139px;
         }
        .auto-style16 {
            margin-top: 0;
            margin-bottom: 0;
        }
        .auto-style21 {
            height: 22px;
        }
         .auto-style25 {
             width: 103px;
             height: 19px;
         }
         .auto-style26 {
             height: 19px;
             width: 10px;
         }
         .auto-style27 {
             width: 220px;
             height: 19px;
         }
         .auto-style29 {
             width: 139px;
             height: 19px;
         }
         .auto-style45 {
             height: 19px;
             width: 6px;
         }
         .auto-style46 {
             width: 6px;
         }
         .auto-style48 {
             height: 22px;
             width: 6px;
         }
         .auto-style49 {
             height: 19px;
             width: 20px;
         }
         .auto-style50 {
             width: 20px;
         }
         .auto-style51 {
             height: 22px;
             width: 20px;
         }
         .auto-style52 {
             width: 118%;
         }
         .auto-style53 {
             width: 10px;
         }
         .auto-style56 {
             width: 112px;
             height: 19px;
         }
         .auto-style57 {
             width: 112px;
         }
         .auto-style72 {
             width: 20px;
             height: 42px;
         }
         .auto-style81 {
             height: 42px;
             width: 6px;
         }
         .auto-style82 {
             width: 103px;
             height: 42px;
         }
         .auto-style83 {
             height: 42px;
             width: 10px;
         }
         .auto-style84 {
             height: 42px;
             width: 220px;
         }
         .auto-style86 {
             width: 112px;
             height: 42px;
         }
         .auto-style87 {
             width: 139px;
             height: 42px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12">
        <div class="full">
            <div class="main_heading text_align_center" style="margin-bottom: 40px">
                <h2>Customers</h2>
                <p class="large">Here you can view, update or delete the customers.</p>
            </div>
        </div>
    </div>
    <div style="margin-left:auto; margin-right:auto; width:700px;">
    <table class="auto-style52">
    <tr>
        <td class="auto-style45"></td>
        <td class="auto-style25"></td>
        <td class="auto-style26"></td>
        <td class="auto-style27"></td>
        <td class="auto-style26"></td>
        <td class="auto-style56"></td>
        <td class="auto-style29"></td>
        <td class="auto-style49"></td>
    </tr>
    <tr>
        <td class="auto-style45"></td>
        <td class="auto-style25"></td>
        <td class="auto-style26"></td>
        <td class="auto-style27"></td>
        <td class="auto-style26"></td>
        <td class="auto-style56"></td>
        <td class="auto-style29"></td>
        <td class="auto-style49"></td>
    </tr>
    <tr>
        <td class="auto-style46">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style53">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td class="auto-style53">&nbsp;</td>
        <td class="auto-style57">&nbsp;</td>
        <td class="auto-style14">&nbsp;</td>
        <td class="auto-style50">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style46">&nbsp;</td>
        <td>
            <asp:Label ID="lblCustomerID" runat="server" Text="CustomerID: " ForeColor="Black"></asp:Label>
        </td>
        <td class="auto-style53">
            &nbsp;</td>
        <td class="auto-style10">
            <asp:DropDownList ID="ddlCustomerID" runat="server" DataTextField="CustomerID" DataValueField="CustomerID" DataSourceID="dsCustomerID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="dsCustomerID" runat="server" ConnectionString="<%$ ConnectionStrings:QuizzarooDBConnectionString %>" SelectCommand="SELECT CustomerID FROM Customers"></asp:SqlDataSource>
        </td>
        <td class="auto-style53">&nbsp;</td>
        <td class="auto-style57">
            <asp:Label ID="lblCity" runat="server" Text="City: " ForeColor="Black"></asp:Label>
        </td>
        <td class="auto-style14">
            <asp:TextBox ID="txtCity" runat="server" Width="202px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvCity" runat="server" ControlToValidate="txtCity" ErrorMessage="Please Enter the City" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
        <td rowspan="3" class="auto-style50">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style81"></td>
        <td class="auto-style82">
            <asp:Label ID="lblFirstName" runat="server" Text="First Name: " ForeColor="Black"></asp:Label>
        </td>
        <td class="auto-style83">
            </td>
        <td class="auto-style84">
            <asp:TextBox ID="txtFirstName" runat="server" Width="202px" ForeColor="Black"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvCompanyName" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Please Enter the Company Name" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
        <td class="auto-style83"></td>
        <td class="auto-style86">
            <asp:Label ID="lblCountry" runat="server" Text="Country: " ForeColor="Black"></asp:Label>
        </td>
        <td class="auto-style87">
            <asp:TextBox ID="txtCountry" runat="server" Width="202px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvRegion" runat="server" ControlToValidate="txtCountry" ErrorMessage="Please Enter the Country." ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style81"></td>
        <td class="auto-style82">
            <asp:Label ID="lblLastName" runat="server" Text="Last Name: " ForeColor="Black"></asp:Label>
        </td>
        <td class="auto-style83">
            </td>
        <td class="auto-style84">
            <asp:TextBox ID="txtLastName" runat="server" Width="202px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvContactName" runat="server" ControlToValidate="txtLastName" ErrorMessage="Please Enter the Contact Name" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
        <td class="auto-style83"></td>
        <td class="auto-style86">
            <asp:Label ID="lblPostalCode" runat="server" Text="Postal Code: " ForeColor="Black"></asp:Label>
        </td>
        <td class="auto-style87">
            <asp:TextBox ID="txtPostalCode" runat="server" Width="202px" CssClass="col-xs-offset-0"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPostalCode" runat="server" ControlToValidate="txtPostalCode" ErrorMessage="Please Enter the Postal Code" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style81"></td>
        <td class="auto-style82">
            <asp:Label ID="lblDateOfBirth" runat="server" Text="Date Of Birth: " ForeColor="Black"></asp:Label>
        </td>
        <td class="auto-style83">
            </td>
        <td class="auto-style84">
            <asp:TextBox ID="txtDoB" runat="server" Width="202px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvContactTitle" runat="server" ControlToValidate="txtDoB" ErrorMessage="Please Enter the Date Of Birth." ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
        <td class="auto-style83"></td>
        <td class="auto-style86">
            <asp:Label ID="lblContactNumber" runat="server" Text="Contact Number: " ForeColor="Black"></asp:Label>
        </td>
        <td class="auto-style87">
            <asp:TextBox ID="txtContactNumber" runat="server" Width="202px" TextMode="Number"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvContactNumber" runat="server" ControlToValidate="txtContactNumber" ErrorMessage="Please Enter the Contact Number " ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:RangeValidator ID="rvContatctNumber" runat="server" ControlToValidate="txtContactNumber" ErrorMessage="Please Enter only Numbers and do not leave spaces." ForeColor="Red" MaximumValue="9999999999999" MinimumValue="0" Type="Double">*</asp:RangeValidator>
        </td>
        <td class="auto-style72"></td>
    </tr>
    <tr>
        <td class="auto-style81"></td>
        <td class="auto-style82">
            <asp:Label ID="lblAddress" runat="server" Text="Address: " ForeColor="Black"></asp:Label>
        </td>
        <td class="auto-style83">
            </td>
        <td class="auto-style84">
            <asp:TextBox ID="txtAddress" runat="server" Width="202px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress" ErrorMessage="Please Enter the Address" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
        <td class="auto-style83"></td>
        <td class="auto-style86">
            <asp:Label ID="lblEmailAddress" runat="server" Text="Email Address: " ForeColor="Black"></asp:Label>
        </td>
        <td class="auto-style87">
            <asp:TextBox ID="txtEmailAddress" runat="server" Width="202px" TextMode="Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvCountry" runat="server" ControlToValidate="txtEmailAddress" ErrorMessage="Please Enter the Email Address." ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
        <td class="auto-style72">
            </td>
    </tr>
    <tr>
        <td class="auto-style46">&nbsp;</td>
        <td class="auto-style4">
            &nbsp;</td>
        <td class="auto-style53">
            &nbsp;</td>
        <td class="auto-style10">
            &nbsp;</td>
        <td class="auto-style53">&nbsp;</td>
        <td class="auto-style57">
            &nbsp;</td>
        <td class="auto-style14">
            &nbsp;</td>
        <td class="auto-style50">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style46">&nbsp;</td>
        <td class="auto-style4">
            <asp:Button ID="btnGetCustomer" runat="server" Text="Get Customer" CausesValidation="False" CssClass="btn sqaure_bt" ForeColor="White" />
        </td>
        <td class="auto-style53">
            &nbsp;</td>
        <td class="auto-style10">
            <asp:Button ID="btnAddCustomer" runat="server" Text="Add a New Customer" CssClass="btn sqaure_bt" Height="37px" Width="202px" ForeColor="White" />
        </td>
        <td class="auto-style53">
            &nbsp;</td>
        <td colspan="2">
            <asp:Button ID="btnUpdate" runat="server" Text="Update" Height="29px" Width="101px" BackColor="#33CC33" ForeColor="White" />
            &nbsp;
            <asp:Button ID="btnDelete" runat="server" Text="Delete" Height="33px" Width="101px" CausesValidation="False" BackColor="Red" ForeColor="White" />
            &nbsp;
            <asp:Button ID="btnClear" runat="server" Text="Clear" Height="29px" Width="101px" CausesValidation="False" />
        </td>
        <td class="auto-style50">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style48"></td>
        <td class="auto-style21" colspan="6">
            &nbsp;</td>
        <td class="auto-style51">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style46">&nbsp;</td>
        <td colspan="3">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="This is the list of errors:" DisplayMode="List" />
        </td>
        <td class="auto-style53">&nbsp;</td>
        <td class="auto-style57">&nbsp;</td>
        <td class="auto-style14">&nbsp;</td>
        <td class="auto-style50">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style46">
            &nbsp;</td>
        <td class="auto-style4">
            <asp:Label ID="lblMessage" runat="server" Font-Size="Medium" ForeColor="#33CC33"></asp:Label>
        </td>
        <td class="auto-style53">
            &nbsp;</td>
        <td class="auto-style10">
            &nbsp;</td>
        <td class="auto-style53">&nbsp;</td>
        <td class="auto-style57">&nbsp;</td>
        <td class="auto-style14">&nbsp;</td>
        <td class="auto-style50">&nbsp;</td>
    </tr>
</table>
    </div>
</asp:Content>
