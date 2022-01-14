Public Class HistoryLoggedIn
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

    Protected Sub lbtnPrevious_Click(sender As Object, e As EventArgs) Handles lbtnPrevious.Click
        mvMain.SetActiveView(vProducts)
    End Sub

    Private Sub dlProducts_ItemCommand(source As Object, e As DataListCommandEventArgs) Handles dlProducts.ItemCommand
        If (e.CommandName = "ProductID") Then
            Dim Product As New DsQuizzarooTableAdapters.ProductsTableAdapter
            Dim row As DsQuizzaroo.ProductsDataTable = Product.GetProductsByIDAndHistory(CInt(e.CommandArgument))

            If row.Count > 0 Then
                imgProductDescription.ImageUrl = "images\ProductsImages\" + row(0)("ImagePath").ToString
                lblProdName.Text = row(0)("ProductName").ToString()
                lblProdDesc.Text = row(0)("ProductDescription").ToString
                lblPrice.Text = row(0)("Price").ToString
                txtQuantity.Text = 1 'by default quantity is one
                lblTotalAmount.Text = lblPrice.Text
                hfProductID.Value = e.CommandArgument
                mvMain.SetActiveView(vDescription)

            End If


        End If
    End Sub

    Protected Sub btnRecalculate_Click(sender As Object, e As EventArgs) Handles btnRecalculate.Click
        If (lblPrice.Text <> "") Then
            lblTotalAmount.Text = CDbl(lblPrice.Text) * CDbl(txtQuantity.Text)
        End If
    End Sub

    Protected Sub btnAddToBasket_Click(sender As Object, e As EventArgs) Handles btnAddToBasket.Click
        If txtQuantity.Text <> "" Then
            Dim item As New BasketItem
            item.SessionID = Session("SessionID")
            item.ProductID = hfProductID.Value
            item.ProductName = lblProdName.Text
            item.ProductType = "Catalogue"
            item.Quantity = CInt(txtQuantity.Text)
            item.UnitPrice = CDbl(lblPrice.Text)
            item.Amount = item.UnitPrice * item.Quantity
            item.ImageUrl = imgProductDescription.ImageUrl

            If IsNothing(Basket) Then 'create basket if it does not exist
                Basket = New List(Of BasketItem)
            End If

            Basket.Add(item) 'update basket
            Session("Basket") = Basket 'update session

            'update master
            UpdateMaster()

            txtQuantity.Text = ""
        End If

    End Sub

    Protected Sub lbtnBack_Click(sender As Object, e As EventArgs) Handles lbtnBack.Click
        Response.Redirect("ProductsLoggedIn.aspx")
    End Sub


    Sub loadDataList()
        Dim Products As New DsQuizzarooTableAdapters.ProductsTableAdapter
        Dim SearchType As String = "ProductName" 'default
        Dim SearchOrder As String = "ASC" 'default

        If rblSearchType.SelectedValue = "Price" Then SearchType = "Price"
        If rblSortOrder.SelectedValue = "DESC" Then SearchOrder = "DESC"

        Dim result As New DsQuizzaroo.ProductsDataTable

        If txtSearch.Text.Trim = "" Then
            result = Products.GetAllHistoryProducts
        Else
            result = Products.GetSpecificHistoryProduct(txtSearch.Text.Trim)
        End If

        result.DefaultView.Sort = SearchType + " " + SearchOrder
        dlProducts.DataSource = result.DefaultView
        dlProducts.DataSourceID = Nothing
        dlProducts.DataBind()

    End Sub

    Protected Sub btnSearch_Click(sender As Object, e As EventArgs) Handles btnSearch.Click
        loadDataList()
    End Sub

    Protected Sub rblSearchType_SelectedIndexChanged(sender As Object, e As EventArgs) Handles rblSearchType.SelectedIndexChanged
        loadDataList()
    End Sub

    Protected Sub rblSortOrder_SelectedIndexChanged(sender As Object, e As EventArgs) Handles rblSortOrder.SelectedIndexChanged
        loadDataList()
    End Sub

    Protected Sub dlProducts_SelectedIndexChanged(sender As Object, e As EventArgs) Handles dlProducts.SelectedIndexChanged
        loadDataList()
    End Sub
End Class