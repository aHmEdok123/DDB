Public Class UpdateStaffAdmin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim dbConnectStaff As New DsQuizzarooTableAdapters.StaffTableAdapter
        Dim StaffByLoginID As DsQuizzaroo.StaffDataTable = dbConnectStaff.GetStaffByLoginID(Session("LoginID"))

        'add the values on the labels in the first view
        hfStaffID.Value = StaffByLoginID(0)("StaffID")
        lblFirstName.Text = StaffByLoginID(0)("FirstName")
        lblLastName.Text = StaffByLoginID(0)("LastName")
        lblDoB.Text = StaffByLoginID(0)("BirthDate").ToString
        lblHireDate.Text = StaffByLoginID(0)("HireDate").ToString
        lblAddress.Text = StaffByLoginID(0)("Address").ToString
        lblCity.Text = StaffByLoginID(0)("City").ToString
        lblCountry.Text = StaffByLoginID(0)("Country").ToString
        lblPostCode.Text = StaffByLoginID(0)("PostCode").ToString
        lblContactNumber.Text = StaffByLoginID(0)("ContactNumber").ToString
        lblEmailAddress.Text = StaffByLoginID(0)("EmailAddress")
        lblTitle.Text = StaffByLoginID(0)("Title")

        lblUHireDate.Text = StaffByLoginID(0)("HireDate").ToString
        lblUTitle.Text = StaffByLoginID(0)("Title")
    End Sub

    Protected Sub btnUpdateDetails_Click(sender As Object, e As EventArgs) Handles btnUpdateDetails.Click
        mvMain.SetActiveView(vUpdate)
    End Sub

    Protected Sub btnBack_Click(sender As Object, e As EventArgs) Handles btnBack.Click
        Response.Redirect("YourAccountAdmin.aspx")
    End Sub

    Protected Sub btnCancel_Click(sender As Object, e As EventArgs) Handles btnCancel.Click
        mvMain.SetActiveView(vViewDetails)
    End Sub

    Protected Sub btnUpdate_Click(sender As Object, e As EventArgs) Handles btnUpdate.Click
        'Dim StaffID As Integer = CInt(Session("StaffID"))
        Dim dbConnectStaff As New DsQuizzarooTableAdapters.StaffTableAdapter

        dbConnectStaff.UpdateStaffDetails(txtUFirstName.Text, txtULastName.Text, CDate(txtUDoB.Text), txtUAddress.Text, txtUCity.Text, txtUPostCode.Text, txtUCountry.Text, txtUContactNumber.Text, txtUEmailAddress.Text, hfStaffID.Value)
        Response.Redirect("UpdateStaffAdmin.aspx")
    End Sub
End Class