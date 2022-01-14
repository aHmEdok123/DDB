Public Class ContactUsLoggedIn
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblReceived.Visible = False
    End Sub

    Private Sub btnSubmitNow_Click(sender As Object, e As EventArgs) Handles btnSubmitNow.Click
        'get customerID
        Dim Customer As Integer = Session("CustomerID")
        Dim Contact As New DsQuizzarooTableAdapters.ContactUsTableAdapter
        Contact.InsertContactUsQuery(Customer, txtCompanyName.Text, txtName1.Text, txtEmail1.Text, txtPhoneNumber.Text, txtMessage.Text)
        lblReceived.Visible = True
    End Sub

    Private Sub lbtnYourAccount_Click(sender As Object, e As EventArgs) Handles lbtnYourAccount.Click
        Response.Redirect("HomepageLoggedIn.aspx")
    End Sub
End Class