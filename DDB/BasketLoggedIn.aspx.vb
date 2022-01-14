Imports System.Drawing
Imports System.Net.Mail
Public Class BasketLoggedIn
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
                lblMessage.Text = "Your transaction was successful. Thank you for using our service." + vbNewLine + "For Email Confirmation, Click on the following button!"
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

    Protected Sub lbtnYourAccount_Click(sender As Object, e As EventArgs) Handles lbtnYourAccount.Click
        Response.Redirect("BasketLoggedIn.aspx")
    End Sub

    Protected Sub btnEmailConfirmation_Click(sender As Object, e As EventArgs) Handles btnEmailConfirmation.Click
        Try
            Dim newOrder As New DsQuizzarooTableAdapters.OrdersTableAdapter
            Dim newRow As DsQuizzaroo.OrdersDataTable = newOrder.GetLastOrderID
            Dim orderID As Integer = CInt(newRow(0)("OrderID"))

            Dim dbConnectOrders As New DsQuizzarooTableAdapters.OrderDetailsTableAdapter
            Dim ProductByID As DsQuizzaroo.OrderDetailsDataTable = dbConnectOrders.GetAllProductsByOrderID(orderID)


            Dim Smtp_Server As New SmtpClient
            Dim e_mail As New MailMessage()
            Smtp_Server.UseDefaultCredentials = False
            Smtp_Server.Credentials = New Net.NetworkCredential("venom.python123@gmail.com", "MMUVenom123")
            Smtp_Server.Port = 587
            Smtp_Server.EnableSsl = True
            Smtp_Server.Host = "smtp.gmail.com"

            e_mail = New MailMessage()
            e_mail.From = New MailAddress("venom.python123@gmail.com")
            e_mail.To.Add("ahmed.muhammad75@gmail.com")
            e_mail.Subject = "Order confirmation"
            e_mail.IsBodyHtml = False
            e_mail.Body = "Hello " + Session("UsernameID").ToString + "." + vbNewLine + "Your transaction was successfull." + vbNewLine + "View your details here: " + vbNewLine + ProductByID(0)("ProductName").ToString + "." + vbNewLine + "Unit Price: " + ProductByID(0)("UnitPrice").ToString + vbNewLine + "Quantity: " + ProductByID(0)("Quantity").ToString + vbNewLine + "We hope to see you enjoy our product." + vbNewLine + "Many Thanks from Quizzaroo Inc."

            Smtp_Server.Send(e_mail)


        Catch error_t As Exception
            MsgBox(error_t.ToString)
        End Try
        Response.Redirect("BasketLoggedIn.aspx")
    End Sub
End Class