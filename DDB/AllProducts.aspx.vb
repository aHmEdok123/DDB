Public Class AllProducts
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



        'For the Login
        If Not IsPostBack Then 'if it is the first time
            ViewState("attempts") = 3
            lblAttempts.Text = "Please enter credentials - 3 attempts"
        End If

        If phLogin.Visible = False Then
            rfvUsername.Enabled = False
            rfvPassword.Enabled = False
            lblAttempts.Visible = False
        Else
            rfvUsername.Enabled = True
            rfvPassword.Enabled = True
            lblAttempts.Visible = True
        End If

        If phSignup.Visible = False Then
            rfvFirstName.Enabled = False
            rfvLastName.Enabled = False
            rfvEmailAddress.Enabled = False
            rfvSignupUsername.Enabled = False
            rfvSignupPassword.Enabled = False
            rfvConfirmPwd.Enabled = False
        Else
            rfvFirstName.Enabled = True
            rfvLastName.Enabled = True
            rfvEmailAddress.Enabled = True
            rfvSignupUsername.Enabled = True
            rfvSignupPassword.Enabled = True
            rfvConfirmPwd.Enabled = True
        End If
    End Sub


    Protected Sub lbtnPrevious_Click(sender As Object, e As EventArgs) Handles lbtnPrevious.Click
        mvMain.SetActiveView(vProducts)
    End Sub

    Private Sub dlProducts_ItemCommand(source As Object, e As DataListCommandEventArgs) Handles dlProducts.ItemCommand
        If (e.CommandName = "ProductID") Then
            Dim Product As New DsQuizzarooTableAdapters.ProductsTableAdapter
            Dim row As DsQuizzaroo.ProductsDataTable = Product.GetProductsByIDAndGeography(CInt(e.CommandArgument))

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



    Function GetIPAddress() As String
        Dim hostname As String = System.Net.Dns.GetHostName()
        Dim ipAddress As String = System.Net.Dns.GetHostByName(hostname).AddressList(0).ToString()
        Return ipAddress
    End Function

    Private Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        Dim loginDetails As New DsQuizzarooTableAdapters.LoginTableAdapter
        Dim tables As DsQuizzaroo.LoginDataTable = loginDetails.CheckCredentials(txtUsername.Text, txtPassword.Text)

        ViewState("attempts") -= 1

        If tables.Count > 0 Then 'returns more than one row
            'code to add to login history
            Dim ipAddress As String = GetIPAddress()
            Dim loginID As Integer = Convert.ToInt32(tables(0)("LoginID"))
            Dim loginDate As DateTime = Now
            Dim CustomerID As Integer = Convert.ToInt32(tables(0)("CustomerID"))

            Dim loginHistory As New DsQuizzarooTableAdapters.LoginHistoryTableAdapter
            loginHistory.InsertLoginDetails(loginID, loginDate, Nothing, ipAddress)

            'redirect
            Session("UsernameID") = txtUsername.Text '+ ";" + loginID.ToString()
            Session("LoginID") = loginID.ToString()
            Session("CustomerID") = CustomerID.ToString()
            Response.Redirect("GeographyLoggedIn.aspx")
        End If

        If ViewState("attempts") <= 0 Then
            Session("attemptsReached") = True
            Response.Write("<script language=""javascript"">alert('Maximum attempts reached! Try again later.');</script>")
            Response.Redirect("Home.aspx")
        End If

        lblAttempts.Text = "Please enter names - " & ViewState("attempts") & " attempt(s)"
    End Sub

    Sub ChangePH(ph As Boolean)
        phLogin.Visible = ph
        phSignup.Visible = Not ph
    End Sub

    Protected Sub lbLogin_Click(sender As Object, e As EventArgs) Handles LbLogin.Click
        ChangePH(True)
        lblAttempts.Visible = True
    End Sub

    Protected Sub lbSignup_Click(sender As Object, e As EventArgs) Handles lbSignup.Click
        ChangePH(False)
        lblAttempts.Visible = False
    End Sub

    Private Sub btnSignup_Click(sender As Object, e As EventArgs) Handles btnSignup.Click
        If Page.IsValid Then

            If (txtSignupPassword.Text = txtConfirmPwd.Text) Then
                'create a new customer
                Dim Customer As New DsQuizzarooTableAdapters.CustomersTableAdapter
                Customer.InsertNewCustomer(txtFirstname.Text, txtLastname.Text, Nothing, Nothing, Nothing, Nothing, Nothing, Nothing, txtEmailAddress.Text)

                'get the customerID of the just created customer
                Dim newCustomer As New DsQuizzarooTableAdapters.CustomersTableAdapter
                Dim newRow1 As DsQuizzaroo.CustomersDataTable = newCustomer.GetLastCustomerID
                Dim CustomerID As Integer = CInt(newRow1(0)("CustomerID"))

                'Create a new user in the login table
                Dim loginDetails As New DsQuizzarooTableAdapters.LoginTableAdapter
                loginDetails.InsertNewUser(txtFirstname.Text, txtLastname.Text, txtEmailAddress.Text, txtSignupUsername.Text, txtSignupPassword.Text, Now, 1, CustomerID, Nothing)

                'Get just created user's loginID
                Dim loginrow As DsQuizzaroo.LoginDataTable = loginDetails.GetLastLoginID
                Dim loginID As Integer = CInt(loginrow(0)("LoginID"))

                'store all the needed values in sessions
                Session("LoginID") = loginID.ToString()
                Session("UsernameID") = txtSignupUsername.Text
                Session("CustomerID") = CustomerID.ToString()
                Response.Redirect("GeographyLoggedIn.aspx")
            Else
                Response.Write("<script language=""javascript"">alert('Password and Confirm Password do not match. Please try again');</script>")
            End If
        End If

    End Sub

    Private Sub cvEmailAddress_ServerValidate(source As Object, args As ServerValidateEventArgs) Handles cvEmailAddress.ServerValidate
        Dim UserCheck As New DsQuizzarooTableAdapters.LoginTableAdapter
        Dim Email As String = UserCheck.CheckNumberOfExistingUsersWithSameEmail(txtEmailAddress.Text)

        If Email > 0 Then
            cvEmailAddress.ErrorMessage = "Email Address is already in use. Please Login."
            args.IsValid = False
        End If
    End Sub


    Sub loadDataList()
        Dim Products As New DsQuizzarooTableAdapters.ProductsTableAdapter
        Dim SearchType As String = "ProductName" 'default
        Dim SearchOrder As String = "ASC" 'default

        If rblSearchType.SelectedValue = "Price" Then SearchType = "Price"
        If rblSortOrder.SelectedValue = "DESC" Then SearchOrder = "DESC"

        Dim result As New DsQuizzaroo.ProductsDataTable

        If txtSearch.Text.Trim = "" Then
            result = Products.GetFullCatalogue
        Else
            result = Products.GetSpecificProducts(txtSearch.Text.Trim)
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