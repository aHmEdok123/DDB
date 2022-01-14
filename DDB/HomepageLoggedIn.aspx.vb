Public Class HomepageLoggedIn
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If IsNothing(Session("UsernameID")) Then
            Response.Redirect("~/Home.aspx")
        End If
    End Sub

End Class