Public Class HomepageAdmin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblName.Text = Session("UsernameID") & "!"
    End Sub

End Class