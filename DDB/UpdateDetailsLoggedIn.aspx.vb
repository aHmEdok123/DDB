Public Class UpdateDetailsLoggedIn
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim dbConnectCustomers As New DsQuizzarooTableAdapters.CustomersTableAdapter
        Dim CustomerByLoginID As DsQuizzaroo.CustomersDataTable = dbConnectCustomers.GetCustomerByLoginID(Session("LoginID"))

        'add the values on the labels in the first view
        hfCustomerID.Value = CustomerByLoginID(0)("CustomerID")
        lblFirstName.Text = CustomerByLoginID(0)("FirstName")
        lblLastName.Text = CustomerByLoginID(0)("LastName")
        lblDoB.Text = CustomerByLoginID(0)("DateOfBirth").ToString
        lblAddress.Text = CustomerByLoginID(0)("Address").ToString
        lblCity.Text = CustomerByLoginID(0)("City").ToString
        lblCountry.Text = CustomerByLoginID(0)("Country").ToString
        lblPostCode.Text = CustomerByLoginID(0)("PostalCode").ToString
        lblContactNumber.Text = CustomerByLoginID(0)("ContactNumber").ToString
        lblEmailAddress.Text = CustomerByLoginID(0)("EmailAddress")



    End Sub

    Protected Sub btnUpdateDetails_Click(sender As Object, e As EventArgs) Handles btnUpdateDetails.Click
        mvMain.SetActiveView(vUpdate)
    End Sub

    Protected Sub btnBack_Click(sender As Object, e As EventArgs) Handles btnBack.Click
        Response.Redirect("YourAccountLoggedIn.aspx")
    End Sub

    Protected Sub btnCancel_Click(sender As Object, e As EventArgs) Handles btnCancel.Click
        mvMain.SetActiveView(vViewDetails)
    End Sub

    Protected Sub btnUpdate_Click(sender As Object, e As EventArgs) Handles btnUpdate.Click
        'Dim LoginID As Integer = CInt(Session("LoginID"))
        Dim dbConnectCustomers As New DsQuizzarooTableAdapters.CustomersTableAdapter
        'Dim CustomerIDByLoginID As DsQuizzaroo.CustomersDataTable = dbConnectCustomers.GetCustomerIDByLoginID1(LoginID)

        dbConnectCustomers.UpdateCustomerDetails(txtUFirstName.Text, txtULastName.Text, CDate(txtUDoB.Text), txtUAddress.Text, txtUCity.Text, txtUCountry.Text, txtUPostCode.Text, txtUContactNumber.Text, txtUEmailAddress.Text, hfCustomerID.Value)
        Response.Redirect("UpdateDetailsLoggedIn.aspx")
    End Sub

    Private Sub vViewDetails_Load(sender As Object, e As EventArgs) Handles vViewDetails.Load
        Dim dbConnectCustomers As New DsQuizzarooTableAdapters.CustomersTableAdapter
        Dim CustomerByLoginID As DsQuizzaroo.CustomersDataTable = dbConnectCustomers.GetCustomerByLoginID(Session("LoginID"))

        'add the values on the labels in the first view
        hfCustomerID.Value = CustomerByLoginID(0)("CustomerID")
        lblFirstName.Text = CustomerByLoginID(0)("FirstName")
        lblLastName.Text = CustomerByLoginID(0)("LastName")
        lblDoB.Text = CustomerByLoginID(0)("DateOfBirth").ToString
        lblAddress.Text = CustomerByLoginID(0)("Address").ToString
        lblCity.Text = CustomerByLoginID(0)("City").ToString
        lblCountry.Text = CustomerByLoginID(0)("Country").ToString
        lblPostCode.Text = CustomerByLoginID(0)("PostalCode").ToString
        lblContactNumber.Text = CustomerByLoginID(0)("ContactNumber").ToString
        lblEmailAddress.Text = CustomerByLoginID(0)("EmailAddress")
    End Sub

End Class