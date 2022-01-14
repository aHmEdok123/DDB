Imports System.Drawing
Imports System.Net.Mail
Public Class Basket
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
        'btnPayNow.Visible = (Basket.Count > 0)

        'If Not IsNothing(Basket) AndAlso Basket.Count > 0 Then
        '    btnPayNow.Visible = True
        'End If
        'btnPayNow.Visible = False
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not IsNothing(Session("SessionID")) Then 'basket must not be empty

            Basket = TryCast(Session("Basket"), List(Of BasketItem))
            UpdateMaster()

            If Not IsNothing(Basket) Then
                lblItemCount.Text = Basket.Count
                lblGrandTotal.Text = BasketAmount.ToString()
            End If
        End If

        gvSummary.DataSource = Basket 'give it a source of data
        gvSummary.DataBind() 'load it up

        mvMain.SetActiveView(vSummary)
        'show pay button when appropriate
        If Not IsNothing(Basket) AndAlso Basket.Count > 0 Then
            btnPayNow.Visible = True
        Else
            btnPayNow.Visible = False
        End If


        'load years old
        If Not IsPostBack Then 'only first time
            'add five years
            For yr = Today.Year To Today.Year + 5
                ddlExpiryYear.Items.Add(New ListItem(yr))
            Next

        End If

        'For the Login
        If Not IsPostBack Then 'if it is the first time
            ViewState("attempts") = 3
            lblAttempts.Text = "Please enter credentials - 3 attempts"
        End If

        'no validation unless placeholder is showing for both login and signup
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

    Private Sub gvSummary_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles gvSummary.RowCommand
        If (e.CommandName = "UpdateItem") Then
            Dim row As Integer = CInt(e.CommandArgument) 'command arg contains row number 

            imgProductDescription.ImageUrl = Basket(row).ImageUrl

            lblProdName.Text = Basket(row).ProductName
            lblPrice.Text = Basket(row).UnitPrice
            txtQuantity.Text = Basket(row).Quantity
            lblTotalAmount.Text = Basket(row).Amount
            hfRowIndex.Value = row 'store row number in hidden field

            mvMain.SetActiveView(vUpdate) 'change view

        ElseIf (e.CommandName = "RemoveItem") Then
            Dim row As Integer = CInt(e.CommandArgument)
            Basket.RemoveAt(row)

            ''reset labels
            'lblSummaryAmount.Text = BasketAmount()
            lblItemCount.Text = Basket.Count
            lblGrandTotal.Text = BasketAmount()

            'reset gridview
            gvSummary.DataSource = Basket 'give it a source of data
            gvSummary.DataBind() 'load it up

            UpdateMaster()

            mvMain.SetActiveView(vSummary)

        End If
    End Sub

    Protected Sub btnPayNow_Click(sender As Object, e As EventArgs) Handles btnPayNow.Click
        If Not IsNothing(Session("UsernameID")) Then
            mvMain.SetActiveView(vCardDetails)
        Else
            mvMain.SetActiveView(vLogin)
            lblLoginFirst.Text = "Please Login First!"
        End If

    End Sub

    Protected Sub btnUpdateBasket_Click(sender As Object, e As EventArgs) Handles btnUpdateBasket.Click
        Dim row As Integer = CInt(hfRowIndex.Value)
        Basket(row).Quantity = CDbl(txtQuantity.Text)
        Basket(row).Amount = Basket(row).UnitPrice * Basket(row).Quantity

        UpdateMaster()
        ''reset labels
        'lblSummaryAmount.Text = BasketAmount()
        lblItemCount.Text = Basket.Count
        lblGrandTotal.Text = BasketAmount()

        gvSummary.DataSource = Basket
        gvSummary.DataBind()

        mvMain.SetActiveView(vSummary)
    End Sub

    Protected Sub btnRecalculate_Click(sender As Object, e As EventArgs) Handles btnRecalculate.Click
        lblTotalAmount.Text = CDbl(txtQuantity.Text) * CDbl(lblPrice.Text)
        mvMain.SetActiveView(vUpdate)
    End Sub

    Private Sub cvCVC_ServerValidate(source As Object, args As ServerValidateEventArgs) Handles cvCVC.ServerValidate
        If Not IsNumeric(txtCVC.Text) OrElse CInt(txtCVC.Text) > 999 OrElse txtCVC.Text.Length <> 3 Then
            cvCVC.ErrorMessage = "Please Enter Valid CVC"
            args.IsValid = False
        End If
    End Sub

    Private Sub cvExpiryDate_ServerValidate(source As Object, args As ServerValidateEventArgs) Handles cvExpiryDate.ServerValidate
        If Not IsNumeric(ddlExpiryMonth.SelectedValue) OrElse Not IsNumeric(ddlExpiryYear.SelectedValue) Then
            cvExpiryDate.ErrorMessage = "Please enter valid CCV."
            args.IsValid = False
        Else
            '---If the card number is valid then check if the expiration date is also valid.
            '---Get the year entered
            Dim ExpirationYear As Int32 = CType(ddlExpiryYear.SelectedValue, Int32)

            '---If the expiration year is equal to today's year then check that the month is later
            If ExpirationYear = CType(Today.Year.ToString, Int32) Then
                Dim ExpirationMonth As Int32 = CType(ddlExpiryMonth.SelectedValue, Int32)
                If ExpirationMonth < Today.Month Then
                    cvExpiryDate.ErrorMessage = "The expiration date selected is in the past."
                    args.IsValid = False
                End If
            End If
        End If
    End Sub

    Private Sub cvCardNumber_ServerValidate(source As Object, args As ServerValidateEventArgs) Handles cvCardNumber.ServerValidate
        '---Create a regular expression object to check the creditcard number against.
        Dim RegEx As System.Text.RegularExpressions.Regex
        Select Case ddlCardType.SelectedValue
            Case "American Express"
                RegEx = New System.Text.RegularExpressions.Regex("3[4,7]\d{​​13}​​")
            Case "Discover"
                RegEx = New System.Text.RegularExpressions.Regex("6011-?\d{​​4}​​-?\d{​​4}​​-?\d{​​4}​​")
            Case "Master Card"
                RegEx = New System.Text.RegularExpressions.Regex("5[1-5]\d{​​2}​​-?\d{​​4}​​-?\d{​​4}​​-?\d{​​4}​​")
            Case "Visa"
                RegEx = New System.Text.RegularExpressions.Regex("4\d{​​3}​​-?\d{​​4}​​-?\d{​​4}​​-?\d{​​4}​​")
        End Select

        '---Get the credit card number
        Dim CreditCardNumber As String = txtCardNumber.Text.Trim.Replace("-", "")

        '---If the regular expression matches then also validate with a checksum.
        ' If it doesn't then just don't submit the page.
        If RegEx.Match(txtCardNumber.Text).Success Then

            '---Initialize the CheckSum
            Dim CheckSum As Int32 = 0

            '---Get the character index to start with
            Dim CharacterCount As Int32 = 2 - (CreditCardNumber.Length Mod 2)

            '---Check if the credit card number submitted passes a checksum routine.
            ' Checksum ("Mod 10")
            ' Add even digits in even length strings or odd digits in odd length string.
            Do While CharacterCount <= CreditCardNumber.Length
                '---Add the number to the checksum
                CheckSum += CType(CreditCardNumber.Chars(CharacterCount - 1).ToString, Int32)

                '---Move to the next character
                CharacterCount += 2
            Loop

            '---Reset the character count
            CharacterCount = (CreditCardNumber.Length Mod 2) + 1

            '---Initialize the Digit variable
            Dim Digit As Int32

            '---Analyze odd digits in even length strings or even digits in odd length strings.
            Do While CharacterCount < CreditCardNumber.Length
                '---Get the digit
                Digit = (CType(CreditCardNumber.Chars(CharacterCount - 1).ToString, Int32) * 2)
                '---Add to checksum
                If Digit < 10 Then
                    CheckSum += Digit
                Else
                    CheckSum += Digit - 9
                End If
                '---Move to the next character
                CharacterCount += 2
            Loop

            '---The checksum should 0 out. If it doesn't don't submit the page.
            If Not ((CheckSum Mod 10) = 0) Then
                cvCardNumber.ErrorMessage = "Please enter a valid card number."
                args.IsValid = False
            Else
                args.IsValid = True
            End If
        Else
            cvCardNumber.ErrorMessage = "Please enter a valid card number."
            args.IsValid = False
        End If
    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        Page.Validate()
        If Page.IsValid() Then
            lblCardInfo.Text = "Billing Card is **** " + txtCardNumber.Text.Substring(txtCardNumber.Text.Length - 4)
            mvMain.SetActiveView(vBillingDetails)
        End If
    End Sub

    Protected Sub btnComplete_Click(sender As Object, e As EventArgs) Handles btnComplete.Click
        Try
            Page.Validate() 'check all validators
            If Page.IsValid Then 'al validators are ok
                'get customerID
                Dim Customer As Integer = Session("CustomerID")

                'Insert order
                Dim order As New DsQuizzarooTableAdapters.OrdersTableAdapter
                order.InsertNewOrder(Customer, Session("SessionID"), Now, Nothing)

                'get orderID
                Dim newOrder As New DsQuizzarooTableAdapters.OrdersTableAdapter
                Dim newRow As DsQuizzaroo.OrdersDataTable = newOrder.GetLastOrderID
                Dim orderID As Integer = CInt(newRow(0)("OrderID"))

                'Insert order details (basket items) into database
                For Each item As BasketItem In Basket
                    Dim orderDetail As New DsQuizzarooTableAdapters.OrderDetailsTableAdapter
                    orderDetail.InsertNewOrderDetails(orderID, item.ProductName, item.ProductType, item.UnitPrice, item.Quantity)
                Next

                'insert card info
                Dim cardInfo As New DsQuizzarooTableAdapters.CardInformationTableAdapter
                cardInfo.InsertNewCardInfo(txtCardNumber.Text, ddlCardType.SelectedItem.Text, ddlExpiryMonth.SelectedItem.Text, ddlExpiryYear.SelectedItem.Text, CInt(txtCVC.Text))

                'insert billing info
                Dim billing As New DsQuizzarooTableAdapters.BillingInfoTableAdapter
                billing.InsertNewBilling(txtCardNumber.Text, txtBFirstName.Text, txtBLastName.Text, txtBAddress1.Text, txtBAddress2.Text, txtBCity.Text, ddlCountry.SelectedItem.Text, txtBPostcode.Text)
                Dim bRow As DsQuizzaroo.BillingInfoDataTable = billing.GetLastBillingID
                Dim billingID As Integer = CInt(bRow(0)("BillingID"))

                'update billing in orders table
                order.UpdateBillingInOrders(billingID, orderID)

                'Success Message
                lblMessage.Text = "Your transaction was successful. Thank you for using our service."
                lblMessage.ForeColor = Color.Green

                Session("Basket") = Nothing


        End If

        Catch ex As Exception
        lblMessage.Text = "Sorry, and error has occured while writing to the website. Please try again."
        lblMessage.ForeColor = Color.Red
        End Try

        mvMain.SetActiveView(vConfirmation)
    End Sub

    Protected Sub btnCancelBilling_Click(sender As Object, e As EventArgs) Handles btnCancelBilling.Click
        mvMain.SetActiveView(vSummary)
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
            Response.Redirect("BasketLoggedIn.aspx")
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
                Response.Redirect("BasketLoggedIn.aspx")
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

    Protected Sub lbtnYourAccount_Click(sender As Object, e As EventArgs) Handles lbtnYourAccount.Click
        Response.Redirect("Basket.aspx")
    End Sub

    'Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles btnEmailConfirmation.Click
    'Try
    'Dim newOrder As New DsQuizzarooTableAdapters.OrdersTableAdapter
    'Dim newRow As DsQuizzaroo.OrdersDataTable = newOrder.GetLastOrderID
    'Dim orderID As Integer = CInt(newRow(0)("OrderID"))

    'Dim dbConnectOrders As New DsQuizzarooTableAdapters.OrderDetailsTableAdapter
    'Dim ProductByID As DsQuizzaroo.OrderDetailsDataTable = dbConnectOrders.GetAllProductsByOrderID(orderID)


    'Dim Smtp_Server As New SmtpClient
    'Dim e_mail As New MailMessage()
    '        Smtp_Server.UseDefaultCredentials = False
    '        Smtp_Server.Credentials = New Net.NetworkCredential("venom.python123@gmail.com", "MMUVenom123")
    '        Smtp_Server.Port = 587
    '        Smtp_Server.EnableSsl = True
    '        Smtp_Server.Host = "smtp.gmail.com"

    '        e_mail = New MailMessage()
    '        e_mail.From = New MailAddress("venom.python123@gmail.com")
    '        e_mail.To.Add("ahmed.muhammad75@gmail.com")
    '        e_mail.Subject = "Order confirmation"
    '         e_mail.IsBodyHtml = False
    '        e_mail.Body = "Hello " + Session("UsernameID") + "Your transaction was successfull. View your details here: " + ProductByID(0)("ProductName") + ProductByID(0)("UnitPrice") + ProductByID(0)("Quantity") + " We hope to see you enjoy our product. Quizzaroo Inc."

    '       Smtp_Server.Send(e_mail)
    'catch error_t As Exception
    '       MsgBox(error_t.ToString)
    '   End Try
    'End Sub

    'Protected Sub btnHelpLogin_Click(sender As Object, e As EventArgs) Handles btnHelpLogin.Click
    '    Response.Redirect("LoginAbout.aspx")
    'End Sub
End Class