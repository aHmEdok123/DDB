Public Class MasterPageAdmin
    Inherits System.Web.UI.MasterPage
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'If IsNothing(Session("UsernameID")) Then
        '    Response.Redirect("~/Home.aspx")
        'Else
        '    btnName.Text = "Hello: " & Session("UsernameID")
        '    lblName.Text = Session("Username")
        'End If

    End Sub

    Private Sub btnAccount_Click(sender As Object, e As EventArgs) Handles btnAccount.Click
        Response.Redirect("YourAccountAdmin.aspx")
    End Sub

    Private Sub btnName_Click(sender As Object, e As EventArgs) Handles btnName.Click
        Response.Redirect("YourAccountAdmin.aspx")
    End Sub
End Class