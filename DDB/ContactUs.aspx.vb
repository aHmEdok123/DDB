Public Class ContactUs
    Inherits System.Web.UI.Page
    Function GetIPAddress() As String
        Dim hostname As String = System.Net.Dns.GetHostName()
        Dim ipAddress As String = System.Net.Dns.GetHostByName(hostname).AddressList(0).ToString()
        Return ipAddress
    End Function

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'For the Login
        If Not IsPostBack Then 'if it is the first time
            ViewState("attempts") = 3
            lblAttempts.Text = "Please enter credentials - 3 attempts"
        End If

        lblReceived.Visible = False

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
                Response.Redirect("ContactUsLoggedIn.aspx")
            Else
                Response.Write("<script language=""javascript"">alert('Password and Confirm Password do not match. Please try again');</script>")
            End If
        End If

    End Sub

    Private Sub btnSubmitNow_Click(sender As Object, e As EventArgs) Handles btnSubmitNow.Click
        Dim Contact As New DsQuizzarooTableAdapters.ContactUsTableAdapter
        Contact.InsertContactUsQuery(Nothing, txtCompanyName.Text, txtName1.Text, txtEmail1.Text, txtPhoneNumber.Text, txtMessage.Text)
        lblReceived.Visible = True
    End Sub

    Private Sub lbtnYourAccount_Click(sender As Object, e As EventArgs) Handles lbtnYourAccount.Click
        Response.Redirect("Home.aspx")
    End Sub
End Class