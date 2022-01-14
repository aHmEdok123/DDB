Public Class PleaseLoginClient
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnContactUs_Click(sender As Object, e As EventArgs) Handles btnContactUs.Click
        Response.Redirect("ContactUs.aspx")
    End Sub
End Class