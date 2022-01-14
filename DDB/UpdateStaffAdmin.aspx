<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPageAdmin.Master" CodeBehind="UpdateStaffAdmin.aspx.vb" Inherits="DDB.UpdateStaffAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12">
        <div class="full">
            <div class="main_heading text_align_center" style="margin-bottom: 40px">
                <h2>View your details</h2>
                <p class="large">Here you can view and update your details.</p>
            </div>
        </div>
    </div>
    <div style="margin-left:auto; margin-right:auto; width:950px;">
        <asp:MultiView ID="mvMain" runat="server" ActiveViewIndex="0">
            <asp:View ID="vViewDetails" runat="server">
                <div class="payment-form">
                    <table style="width: 100%;">
                        <tr>
                            <td style="border-bottom: 1px solid #ccc;" colspan="2">
                                <asp:Label ID="lblUpdateDetails" runat="server" CssClass="panel-title display-td" Font-Size="Large" ForeColor="Black" Text="View your Details" Font-Bold="True"></asp:Label>
                            </td>
                            <td style="border-bottom: 1px solid #ccc; width: 274px;">&nbsp;</td>
                            <td style="border-bottom: 1px solid #ccc;">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 19px; width: 225px;">&nbsp;</td>
                            <td style="height: 19px; width: 161px;"></td>
                            <td style="width: 274px; height: 19px;"></td>
                            <td style="height: 19px"></td>
                        </tr>
                        <tr>
                            <td style="width: 225px">&nbsp;</td>
                            <td style="width: 161px">
                                <asp:Label ID="lblFirstNameText" runat="server" Font-Size="Medium" Text="First Name: " ForeColor="Black"></asp:Label>
                            </td>
                            <td style="width: 274px">
                                <asp:Label ID="lblFirstName" runat="server" Font-Size="Medium" ForeColor="Black"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 225px; height: 7px;"></td>
                            <td style="width: 161px; height: 7px;"></td>
                            <td style="width: 274px; height: 7px;"></td>
                            <td style="height: 7px"></td>
                        </tr>
                        <tr>
                            <td style="width: 225px">&nbsp;</td>
                            <td style="width: 161px">
                                <asp:Label ID="lblLastNameText" runat="server" Font-Size="Medium" ForeColor="Black" Text="Last Name: "></asp:Label>
                            </td>
                            <td style="width: 274px">
                                <asp:Label ID="lblLastName" runat="server" Font-Size="Medium" ForeColor="Black"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 225px; height: 7px;"></td>
                            <td style="width: 161px; height: 7px;"></td>
                            <td style="width: 274px; height: 7px;"></td>
                            <td style="height: 7px"></td>
                        </tr>
                        <tr>
                            <td style="width: 225px">&nbsp;</td>
                            <td style="width: 161px">
                                <asp:Label ID="lblDoBText" runat="server" Font-Size="Medium" ForeColor="Black" Text="Date of Birth: "></asp:Label>
                            </td>
                            <td style="width: 274px">
                                <asp:Label ID="lblDoB" runat="server" Font-Size="Medium" ForeColor="Black"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 225px; height: 7px;"></td>
                            <td style="width: 161px; height: 7px;"></td>
                            <td style="width: 274px; height: 7px;"></td>
                            <td style="height: 7px"></td>
                        </tr>
                        <tr>
                            <td style="width: 225px; height: 25px;"></td>
                            <td style="width: 161px; height: 25px;">
                                <asp:Label ID="lblHireDateText" runat="server" Font-Size="Medium" ForeColor="Black" Text="Hire Date: "></asp:Label>
                            </td>
                            <td style="width: 274px; height: 25px;">
                                <asp:Label ID="lblHireDate" runat="server" Font-Size="Medium" ForeColor="Black"></asp:Label>
                            </td>
                            <td style="height: 25px"></td>
                        </tr>
                        <tr>
                            <td style="width: 225px; height: 7px;">&nbsp;</td>
                            <td style="width: 161px; height: 7px;">&nbsp;</td>
                            <td style="width: 274px; height: 7px;">&nbsp;</td>
                            <td style="height: 7px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 225px">&nbsp;</td>
                            <td style="width: 161px">
                                <asp:Label ID="lblAddressText" runat="server" Font-Size="Medium" ForeColor="Black" Text="Address: "></asp:Label>
                            </td>
                            <td style="width: 274px">
                                <asp:Label ID="lblAddress" runat="server" Font-Size="Medium" ForeColor="Black"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 225px; height: 7px;"></td>
                            <td style="width: 161px; height: 7px;"></td>
                            <td style="width: 274px; height: 7px;"></td>
                            <td style="height: 7px"></td>
                        </tr>
                        <tr>
                            <td style="width: 225px">&nbsp;</td>
                            <td style="width: 161px">
                                <asp:Label ID="lblCityText" runat="server" Font-Size="Medium" ForeColor="Black" Text="City: "></asp:Label>
                            </td>
                            <td style="width: 274px">
                                <asp:Label ID="lblCity" runat="server" Font-Size="Medium" ForeColor="Black"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 225px; height: 7px;"></td>
                            <td style="width: 161px; height: 7px;"></td>
                            <td style="width: 274px; height: 7px;"></td>
                            <td style="height: 7px"></td>
                        </tr>
                        <tr>
                            <td style="width: 225px">&nbsp;</td>
                            <td style="width: 161px">
                                <asp:Label ID="lblPostCodeText" runat="server" Font-Size="Medium" ForeColor="Black" Text="Post Code: "></asp:Label>
                            </td>
                            <td style="width: 274px">
                                <asp:Label ID="lblPostCode" runat="server" Font-Size="Medium" ForeColor="Black"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 225px; height: 7px;"></td>
                            <td style="width: 161px; height: 7px;"></td>
                            <td style="width: 274px; height: 7px;"></td>
                            <td style="height: 7px"></td>
                        </tr>
                        <tr>
                            <td style="width: 225px">&nbsp;</td>
                            <td style="width: 161px">
                                <asp:Label ID="lblCountryText" runat="server" Font-Size="Medium" ForeColor="Black" Text="Country:  "></asp:Label>
                            </td>
                            <td style="width: 274px">
                                <asp:Label ID="lblCountry" runat="server" Font-Size="Medium" ForeColor="Black"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 225px; height: 7px;"></td>
                            <td style="width: 161px; height: 7px;"></td>
                            <td style="width: 274px; height: 7px;"></td>
                            <td style="height: 7px"></td>
                        </tr>
                        <tr>
                            <td style="width: 225px; height: 31px;"></td>
                            <td style="width: 161px; height: 31px;">
                                <asp:Label ID="lblContactNumberText" runat="server" Font-Size="Medium" ForeColor="Black" Text="Contact Number: "></asp:Label>
                            </td>
                            <td style="width: 274px; height: 31px;">
                                <asp:Label ID="lblContactNumber" runat="server" Font-Size="Medium" ForeColor="Black"></asp:Label>
                            </td>
                            <td style="height: 31px"></td>
                        </tr>
                        <tr>
                            <td style="width: 225px; height: 7px;"></td>
                            <td style="width: 161px; height: 7px;"></td>
                            <td style="width: 274px; height: 7px;"></td>
                            <td style="height: 7px"></td>
                        </tr>
                        <tr>
                            <td style="width: 225px; height: 31px;"></td>
                            <td style="width: 161px; height: 31px;">
                                <asp:Label ID="lblEmailAddressText" runat="server" Font-Size="Medium" ForeColor="Black" Text="Email Address: "></asp:Label>
                            </td>
                            <td style="width: 274px; height: 31px;">
                                <asp:Label ID="lblEmailAddress" runat="server" Font-Size="Medium" ForeColor="Black"></asp:Label>
                            </td>
                            <td style="height: 31px"></td>
                        </tr>
                        <tr>
                            <td style="width: 225px; height: 6px;"></td>
                            <td style="width: 161px; height: 6px;"></td>
                            <td style="width: 274px; height: 6px;"></td>
                            <td style="height: 6px"></td>
                        </tr>
                        <tr>
                            <td style="width: 225px; height: 31px;">&nbsp;</td>
                            <td style="width: 161px; height: 31px;">
                                <asp:Label ID="lblTitleText" runat="server" Font-Size="Medium" ForeColor="Black" Text="Title: "></asp:Label>
                            </td>
                            <td style="width: 274px; height: 31px;">
                                <asp:Label ID="lblTitle" runat="server" Font-Size="Medium" ForeColor="Black"></asp:Label>
                            </td>
                            <td style="height: 31px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 225px">&nbsp;</td>
                            <td style="width: 161px">&nbsp;</td>
                            <td style="width: 274px">
                                &nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 225px; height: 7px;"></td>
                            <td style="width: 161px; height: 7px;"></td>
                            <td style="width: 274px; height: 7px;"></td>
                            <td style="height: 7px"></td>
                        </tr>
                        <tr>
                            <td style="width: 225px">&nbsp;</td>
                            <td style="width: 161px">&nbsp;</td>
                            <td style="width: 274px">
                                <asp:Button ID="btnUpdateDetails" runat="server" CssClass="btn sqaure_bt" Font-Size="Medium" ForeColor="White" Text="Update your details" />
                            </td>
                            <td>
                                <asp:Button ID="btnBack" runat="server" BackColor="Red" CssClass="btn sqaure_bt" Font-Size="Medium" ForeColor="White" Text="Back" CausesValidation="False" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 225px">&nbsp;</td>
                            <td style="width: 161px">&nbsp;</td>
                            <td style="width: 274px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </div>
            </asp:View>
            <asp:View ID="vUpdate" runat="server">
                 <div class="payment-form">
                    <table style="width: 100%;">
                        <tr>
                            <td style="border-bottom: 1px solid #ccc;" colspan="2">
                                <asp:Label ID="lblUpdateYourDetails" runat="server" CssClass="panel-title display-td" Font-Size="Large" ForeColor="Black" Text="Update your Details" Font-Bold="True"></asp:Label>
                            </td>
                            <td style="border-bottom: 1px solid #ccc; width: 274px;">&nbsp;</td>
                            <td style="border-bottom: 1px solid #ccc;">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 19px; width: 225px;">&nbsp;</td>
                            <td style="height: 19px; width: 161px;"></td>
                            <td style="width: 274px; height: 19px;"></td>
                            <td style="height: 19px"></td>
                        </tr>
                        <tr>
                            <td style="width: 225px">&nbsp;</td>
                            <td style="width: 161px">
                                <asp:Label ID="lblUFirstNameText" runat="server" Font-Size="Medium" Text="First Name: " ForeColor="Black"></asp:Label>
                            </td>
                            <td style="width: 274px">
                                <asp:TextBox ID="txtUFirstName" runat="server" Font-Size="Medium"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtUFirstName" ErrorMessage="Please Enter your First Name." Font-Size="Medium" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 225px; height: 7px;"></td>
                            <td style="width: 161px; height: 7px;"></td>
                            <td style="width: 274px; height: 7px;"></td>
                            <td style="height: 7px"></td>
                        </tr>
                        <tr>
                            <td style="width: 225px">&nbsp;</td>
                            <td style="width: 161px">
                                <asp:Label ID="lblULastNameText" runat="server" Font-Size="Medium" ForeColor="Black" Text="Last Name: "></asp:Label>
                            </td>
                            <td style="width: 274px">
                                <asp:TextBox ID="txtULastName" runat="server" Font-Size="Medium"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtULastName" ErrorMessage="Please Enter your Last Name." Font-Size="Medium" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 225px; height: 7px;"></td>
                            <td style="width: 161px; height: 7px;"></td>
                            <td style="width: 274px; height: 7px;"></td>
                            <td style="height: 7px"></td>
                        </tr>
                        <tr>
                            <td style="width: 225px">&nbsp;</td>
                            <td style="width: 161px">
                                <asp:Label ID="lblUDoB" runat="server" Font-Size="Medium" ForeColor="Black" Text="Date of Birth: "></asp:Label>
                            </td>
                            <td style="width: 274px">
                                <asp:TextBox ID="txtUDoB" runat="server" Font-Size="Medium" TextMode="Date"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="rfvDoB" runat="server" ControlToValidate="txtUDoB" ErrorMessage="Please Enter your Date of Birth." Font-Size="Medium" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 225px; height: 7px;"></td>
                            <td style="width: 161px; height: 7px;"></td>
                            <td style="width: 274px; height: 7px;"></td>
                            <td style="height: 7px"></td>
                        </tr>
                        <tr>
                            <td style="width: 225px; height: 31px;"></td>
                            <td style="width: 161px; height: 31px;">
                                <asp:Label ID="lblUHireDateText" runat="server" Font-Size="Medium" ForeColor="Black">Hire Date: </asp:Label>
                            </td>
                            <td style="width: 274px; height: 31px;">
                                <asp:Label ID="lblUHireDate" runat="server" Font-Size="Medium" ForeColor="Black"></asp:Label>
                            </td>
                            <td style="height: 31px"></td>
                        </tr>
                        <tr>
                            <td style="width: 225px; height: 7px;">&nbsp;</td>
                            <td style="width: 161px; height: 7px;">&nbsp;</td>
                            <td style="width: 274px; height: 7px;">&nbsp;</td>
                            <td style="height: 7px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 225px">&nbsp;</td>
                            <td style="width: 161px">
                                <asp:Label ID="lblUAddress" runat="server" Font-Size="Medium" ForeColor="Black" Text="Address: "></asp:Label>
                            </td>
                            <td style="width: 274px">
                                <asp:TextBox ID="txtUAddress" runat="server" Font-Size="Medium"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtUAddress" ErrorMessage="Please Enter your Address." Font-Size="Medium" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 225px; height: 7px;"></td>
                            <td style="width: 161px; height: 7px;"></td>
                            <td style="width: 274px; height: 7px;"></td>
                            <td style="height: 7px"></td>
                        </tr>
                        <tr>
                            <td style="width: 225px">&nbsp;</td>
                            <td style="width: 161px">
                                <asp:Label ID="lbUCity" runat="server" Font-Size="Medium" ForeColor="Black" Text="City: "></asp:Label>
                            </td>
                            <td style="width: 274px">
                                <asp:TextBox ID="txtUCity" runat="server" Font-Size="Medium"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="rfvCity" runat="server" ControlToValidate="txtUCity" ErrorMessage="Please Enter your City." Font-Size="Medium" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 225px; height: 7px;"></td>
                            <td style="width: 161px; height: 7px;"></td>
                            <td style="width: 274px; height: 7px;"></td>
                            <td style="height: 7px"></td>
                        </tr>
                        <tr>
                            <td style="width: 225px">&nbsp;</td>
                            <td style="width: 161px">
                                <asp:Label ID="lblUPostCode" runat="server" Font-Size="Medium" ForeColor="Black" Text="Post Code: "></asp:Label>
                            </td>
                            <td style="width: 274px">
                                <asp:TextBox ID="txtUPostCode" runat="server" Font-Size="Medium"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="rfvPostCode" runat="server" ControlToValidate="txtUPostCode" ErrorMessage="Please Enter your Post Code." Font-Size="Medium" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 225px; height: 7px;"></td>
                            <td style="width: 161px; height: 7px;"></td>
                            <td style="width: 274px; height: 7px;"></td>
                            <td style="height: 7px"></td>
                        </tr>
                        <tr>
                            <td style="width: 225px">&nbsp;</td>
                            <td style="width: 161px">
                                <asp:Label ID="lblUCountry" runat="server" Font-Size="Medium" ForeColor="Black" Text="Country: "></asp:Label>
                            </td>
                            <td style="width: 274px">
                                <asp:TextBox ID="txtUCountry" runat="server" Font-Size="Medium"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="rfvCountry" runat="server" ControlToValidate="txtUCountry" ErrorMessage="Please Enter your Country." Font-Size="Medium" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 225px; height: 7px;"></td>
                            <td style="width: 161px; height: 7px;"></td>
                            <td style="width: 274px; height: 7px;"></td>
                            <td style="height: 7px"></td>
                        </tr>
                        <tr>
                            <td style="width: 225px; height: 31px;"></td>
                            <td style="width: 161px; height: 31px;">
                                <asp:Label ID="lblUContactNumber" runat="server" Font-Size="Medium" ForeColor="Black" Text="Contact Number: "></asp:Label>
                            </td>
                            <td style="width: 274px; height: 31px;">
                                <asp:TextBox ID="txtUContactNumber" runat="server" Font-Size="Medium" TextMode="Number"></asp:TextBox>
                            </td>
                            <td style="height: 31px">
                                <asp:RequiredFieldValidator ID="rfvContactNumber" runat="server" ControlToValidate="txtUContactNumber" ErrorMessage="Please Enter your Contact Number." Font-Size="Medium" ForeColor="Red">*</asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="rvContatctNumber" runat="server" ErrorMessage="Please Enter only Numbers and do not leave spaces." ForeColor="Red" MaximumValue="9999999999999" MinimumValue="0" Type="Double" ControlToValidate="txtUContactNumber" Font-Size="Medium">*</asp:RangeValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 225px; height: 7px;"></td>
                            <td style="width: 161px; height: 7px;"></td>
                            <td style="width: 274px; height: 7px;"></td>
                            <td style="height: 7px"></td>
                        </tr>
                        <tr>
                            <td style="width: 225px; height: 31px;"></td>
                            <td style="width: 161px; height: 31px;">
                                <asp:Label ID="lblUEmailAddressText" runat="server" Font-Size="Medium" ForeColor="Black" Text="Email Address: "></asp:Label>
                            </td>
                            <td style="width: 274px; height: 31px;">
                                <asp:TextBox ID="txtUEmailAddress" runat="server" Font-Size="Medium" TextMode="Email"></asp:TextBox>
                            </td>
                            <td style="height: 31px">
                                <asp:RequiredFieldValidator ID="rfvEmailAddress" runat="server" ControlToValidate="txtUEmailAddress" ErrorMessage="Please Enter your Email Address." Font-Size="Medium" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 225px; height: 7px;"></td>
                            <td style="width: 161px; height: 7px;"></td>
                            <td style="width: 274px; height: 7px;"></td>
                            <td style="height: 7px"></td>
                        </tr>
                        <tr>
                            <td style="width: 225px; height: 31px;">&nbsp;</td>
                            <td style="width: 161px; height: 31px;">
                                <asp:Label ID="lblUTitleText" runat="server" Font-Size="Medium" ForeColor="Black">Title: </asp:Label>
                            </td>
                            <td style="width: 274px; height: 31px;">
                                <asp:Label ID="lblUTitle" runat="server" Font-Size="Medium" ForeColor="Black"></asp:Label>
                            </td>
                            <td style="height: 31px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 225px; height: 7px;"></td>
                            <td style="width: 161px; height: 7px;"></td>
                            <td style="width: 274px; height: 7px;"></td>
                            <td style="height: 7px"></td>
                        </tr>
                        <tr>
                            <td style="width: 225px">&nbsp;</td>
                            <td style="width: 161px">&nbsp;</td>
                            <td style="width: 274px">
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" Font-Size="Medium" ForeColor="Red" />
                            </td>
                            <td>
                                <asp:HiddenField ID="hfStaffID" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 225px; height: 7px;"></td>
                            <td style="width: 161px; height: 7px;"></td>
                            <td style="width: 274px; height: 7px;"></td>
                            <td style="height: 7px"></td>
                        </tr>
                        <tr>
                            <td style="width: 225px">&nbsp;</td>
                            <td style="width: 161px">&nbsp;</td>
                            <td style="width: 274px">
                                <asp:Button ID="btnUpdate" runat="server" CssClass="btn sqaure_bt" Font-Size="Medium" ForeColor="White" Text="Update" />
                            </td>
                            <td>
                                <asp:Button ID="btnCancel" runat="server" BackColor="Red" CssClass="btn sqaure_bt" Font-Size="Medium" ForeColor="White" Text="Cancel" CausesValidation="False" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 225px">&nbsp;</td>
                            <td style="width: 161px">&nbsp;</td>
                            <td style="width: 274px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </div>
            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>
