Public Class YourAccountAdmin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub imgbtnExit_Click(sender As Object, e As ImageClickEventArgs) Handles imgbtnExit.Click
        Session("UsernameID") = Nothing
        Response.Redirect("Home.aspx")
    End Sub
End Class