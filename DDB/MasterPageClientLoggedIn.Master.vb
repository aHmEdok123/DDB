Public Class MasterPageClientLoggedIn
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsNothing(Session("UsernameID")) Then
            Response.Redirect("~/Home.aspx")
        Else
            btnName.Text = "Hello: " & Session("UsernameID")
        End If

    End Sub

    Private Sub btnAccount_Click(sender As Object, e As EventArgs) Handles btnAccount.Click
        Response.Redirect("YourAccountLoggedIn.aspx")
    End Sub

    Private Sub btnName_Click(sender As Object, e As EventArgs) Handles btnName.Click
        Response.Redirect("YourAccountLoggedIn.aspx")
    End Sub
End Class