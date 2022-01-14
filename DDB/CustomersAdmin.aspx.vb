Public Class CustomersAdmin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblMessage.Visible = False
    End Sub

    Protected Sub btnGetCustomer_Click(sender As Object, e As EventArgs) Handles btnGetCustomer.Click
        Dim CustomerID As Integer = CInt(ddlCustomerID.SelectedValue)
        Dim dbConnectCustomers As New DsQuizzarooTableAdapters.CustomersTableAdapter
        Dim CustomerByID As DsQuizzaroo.CustomersDataTable = dbConnectCustomers.GetCustomerByID(CustomerID)

        If DBNull.Value.Equals(CustomerByID.Rows(0).Item("DateOfBirth")) Then
            txtDoB.Text = ""
        Else
            txtDoB.Text = CustomerByID(0)("DateOfBirth").ToString
        End If

        If DBNull.Value.Equals(CustomerByID.Rows(0).Item("Address")) Then
            txtAddress.Text = ""
        Else
            txtAddress.Text = CustomerByID(0)("Address")
        End If

        If DBNull.Value.Equals(CustomerByID.Rows(0).Item("City")) Then
            txtCity.Text = ""
        Else
            txtCity.Text = CustomerByID(0)("City")
        End If

        If DBNull.Value.Equals(CustomerByID.Rows(0).Item("Country")) Then
            txtCountry.Text = ""
        Else
            txtCountry.Text = CustomerByID(0)("Country")
        End If

        If DBNull.Value.Equals(CustomerByID.Rows(0).Item("PostalCode")) Then
            txtPostalCode.Text = ""
        Else
            txtPostalCode.Text = CustomerByID(0)("PostalCode")
        End If

        If DBNull.Value.Equals(CustomerByID.Rows(0).Item("ContactNumber")) Then
            txtContactNumber.Text = ""
        Else
            txtContactNumber.Text = CustomerByID(0)("ContactNumber")
        End If

        txtFirstName.Text = CustomerByID(0)("FirstName")
        txtLastName.Text = CustomerByID(0)("LastName")
        txtEmailAddress.Text = CustomerByID(0)("EmailAddress")
    End Sub

    Protected Sub btnAddCustomer_Click(sender As Object, e As EventArgs) Handles btnAddCustomer.Click
        Dim dbConnectCustomers As New DsQuizzarooTableAdapters.CustomersTableAdapter
        dbConnectCustomers.InsertNewCustomer(txtFirstName.Text, txtLastName.Text, txtDoB.Text, txtAddress.Text, txtCity.Text, txtCountry.Text, txtPostalCode.Text, txtContactNumber.Text, txtEmailAddress.Text)
        ddlCustomerID.DataBind()
        lblMessage.Visible = True
        lblMessage.Text = "Product has been added to the database."
    End Sub

    Protected Sub btnUpdate_Click(sender As Object, e As EventArgs) Handles btnUpdate.Click
        Dim CustomerID As Integer = CInt(ddlCustomerID.SelectedValue)
        Dim dbConnectCustomers As New DsQuizzarooTableAdapters.CustomersTableAdapter
        dbConnectCustomers.UpdateCustomerDetails(txtFirstName.Text, txtLastName.Text, txtDoB.Text, txtAddress.Text, txtCity.Text, txtCountry.Text, txtPostalCode.Text, txtContactNumber.Text, txtEmailAddress.Text, CustomerID)
        ddlCustomerID.DataBind()

        lblMessage.Visible = True
        lblMessage.Text = "Details have been updated."
    End Sub

    Protected Sub btnDelete_Click(sender As Object, e As EventArgs) Handles btnDelete.Click
        Dim CustomerID As Integer = CInt(ddlCustomerID.SelectedValue)
        Dim dbConnectCustomers As New DsQuizzarooTableAdapters.CustomersTableAdapter
        dbConnectCustomers.DeleteCustomer(CustomerID)
        ddlCustomerID.DataBind()

        lblMessage.Visible = True
        lblMessage.Text = "Customer has been deleted from the database."
    End Sub

    Protected Sub btnClear_Click(sender As Object, e As EventArgs) Handles btnClear.Click
        txtFirstName.Text = ""
        txtLastName.Text = ""
        txtDoB.Text = ""
        txtAddress.Text = ""
        txtCity.Text = ""
        txtCountry.Text = ""
        txtPostalCode.Text = ""
        txtContactNumber.Text = ""
        txtEmailAddress.Text = ""


    End Sub
End Class