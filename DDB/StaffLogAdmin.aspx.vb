Public Class StaffLogAdmin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnSubmitNow_Click(sender As Object, e As EventArgs) Handles btnSubmitNow.Click
        Dim StaffID As Integer = CInt(Session("StaffID"))
        Dim Log As New DsQuizzarooTableAdapters.StaffLogTableAdapter
        Log.InsertStaffLog(txtCategory.Text, txtDescription.Text, Now, StaffID)
        lblReceived.Visible = True
    End Sub

    Protected Sub lbtnYourAccountAdmin_Click(sender As Object, e As EventArgs) Handles lbtnYourAccountAdmin.Click
        Response.Redirect("YourAccountAdmin.aspx")
    End Sub
End Class