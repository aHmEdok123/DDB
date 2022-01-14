Public Class ProductsAdmin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblMessage.Visible = False
    End Sub

    Protected Sub btnGetProduct_Click(sender As Object, e As EventArgs) Handles btnGetProduct.Click
        Dim ProductsID As Integer = CInt(ddlProductID.SelectedValue)
        Dim dbConnectProducts As New DsQuizzarooTableAdapters.ProductsTableAdapter
        Dim ProductByID As DsQuizzaroo.ProductsDataTable = dbConnectProducts.GetAllProductsByID(ProductsID)

        If DBNull.Value.Equals(ProductByID.Rows(0).Item("ImagePath")) Then
            ImgProd.ImageUrl = ""
            txtImagePath.Text = ""
        Else
            ImgProd.ImageUrl = "\images\ProductsImages\" + ProductByID(0)("ImagePath")
            txtImagePath.Text = ProductByID(0)("ImagePath")
        End If


        txtProdName.Text = ProductByID(0)("ProductName")
        txtProdDesc.Text = ProductByID(0)("ProductDescription")
        txtProdCategory.Text = ProductByID(0)("ProductCategory")
        txtPrice.Text = ProductByID(0)("Price")
        'ImgProd.ImageUrl = "\images\ProductsImages\" + ProductByID(0)("ImagePath")
        'txtImagePath.Text = ProductByID(0)("ImagePath")
        txtEduLevel.Text = ProductByID(0)("SuggestedEducationalLevel")
        ddlAllAge.SelectedValue = ProductByID(0)("AllAge")

    End Sub

    Protected Sub btnAddProduct_Click(sender As Object, e As EventArgs) Handles btnAddProduct.Click
        Dim allAge As Integer = ddlAllAge.SelectedValue
        Dim dbConnectProducts As New DsQuizzarooTableAdapters.ProductsTableAdapter
        dbConnectProducts.InsertNewProduct(txtProdName.Text, txtProdDesc.Text, txtProdCategory.Text, txtPrice.Text, txtImagePath.Text, txtEduLevel.Text, allAge)
        ddlProductID.DataBind()
        lblMessage.Visible = True
        lblMessage.Text = "Product has been added to the database."
    End Sub

    Protected Sub btnUpdate_Click(sender As Object, e As EventArgs) Handles btnUpdate.Click
        Dim ProductID As Integer = CInt(ddlProductID.SelectedValue)
        'Dim allAge As Integer = ddlAllAge.SelectedValue
        Dim dbConnectProducts As New DsQuizzarooTableAdapters.ProductsTableAdapter
        dbConnectProducts.UpdateProduct(txtProdName.Text, txtProdDesc.Text, txtProdCategory.Text, txtPrice.Text, txtImagePath.Text, txtEduLevel.Text, ddlAllAge.SelectedValue, ProductID)
        ddlProductID.DataBind()
        lblMessage.Visible = True
        lblMessage.Text = "Product has been updated."
    End Sub

    Protected Sub btnDelete_Click(sender As Object, e As EventArgs) Handles btnDelete.Click
        Dim ProductID As Integer = CInt(ddlProductID.SelectedValue)
        Dim dbConnectProducts As New DsQuizzarooTableAdapters.ProductsTableAdapter
        dbConnectProducts.DeleteProduct(ProductID)
        ddlProductID.DataBind()
        lblMessage.Visible = True
        lblMessage.Text = "Product has been deleted from the database."
    End Sub

    Protected Sub btnClear_Click(sender As Object, e As EventArgs) Handles btnClear.Click
        txtProdName.Text = ""
        txtProdDesc.Text = ""
        txtProdCategory.Text = ""
        txtPrice.Text = ""
        ImgProd.ImageUrl = ""
        txtImagePath.Text = ""
        txtEduLevel.Text = ""
        ddlAllAge.SelectedValue = ""
    End Sub
End Class