Public Class AboutUsLoggedIn
    Inherits System.Web.UI.Page

    Dim Basket As List(Of BasketItem) 'create a basket
    Public Function BasketAmount() As Double
        Dim totalAmount As Double = 0
        If Not IsNothing(Basket) Then 'basket is not empty
            For Each item In Basket
                totalAmount += item.UnitPrice * item.Quantity
                ' or totalAmount += item.Amount
            Next
        End If
        Return totalAmount
    End Function

    Sub UpdateMaster()
        Dim mpAmount, mpCount As Label
        mpAmount = CType(Master.FindControl("lblGrandTotal"), Label)
        mpCount = CType(Master.FindControl("lblItemCount"), Label)
        If Not (mpCount Is Nothing Or mpAmount Is Nothing Or Basket Is Nothing) Then
            mpAmount.Text = BasketAmount()
            mpCount.Text = Basket.Count
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsNothing(Session("SessionID")) Then 'if first time
            Session("SessionID") = Guid.NewGuid().ToString()
            Session("Basket") = Nothing 'initialise basket
        Else 'not first time
            Basket = TryCast(Session("Basket"), List(Of BasketItem))
            UpdateMaster()
        End If
    End Sub
    Protected Sub btnContactUs_Click(sender As Object, e As EventArgs) Handles btnContactUs.Click
        Response.Redirect("ContactUsLoggedIn.aspx")
    End Sub
End Class