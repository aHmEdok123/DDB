Public Class AdminLogin
    Inherits System.Web.UI.Page

    Function GetIPAddress() As String
        Dim hostname As String = System.Net.Dns.GetHostName()
        Dim ipAddress As String = System.Net.Dns.GetHostByName(hostname).AddressList(0).ToString()
        Return ipAddress
    End Function

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then 'if it is the first time
            ViewState("attempts") = 3
            lblAttempts.Text = "Please enter credentials - 3 attempts"
        End If

        If IsNothing(Session("SessionID")) Then 'if first time
            Session("SessionID") = Guid.NewGuid().ToString()
            Session("Basket") = Nothing 'initialise basket
        Else 'not first time
            Basket = TryCast(Session("Basket"), List(Of BasketItem))
            UpdateMaster()
        End If
    End Sub

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

    Private Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        Dim loginDetails As New DsQuizzarooTableAdapters.LoginTableAdapter
        Dim tables As DsQuizzaroo.LoginDataTable = loginDetails.CheckCredentials(txtUsername.Text, txtPassword.Text)

        ViewState("attempts") -= 1

        If tables.Count > 0 Then 'returns more than one row
            Dim ipAddress As String = GetIPAddress()
            Dim loginID As Integer = Convert.ToInt32(tables(0)("LoginID"))
            Dim loginDate As DateTime = Now
            Dim StaffID As Integer = Convert.ToInt32(tables(0)("StaffID"))

            Dim loginHistory As New DsQuizzarooTableAdapters.LoginHistoryTableAdapter
            loginHistory.InsertLoginDetails(loginID, loginDate, Nothing, ipAddress)

            'redirect
            Session("UsernameID") = txtUsername.Text '+ ";" + loginID.ToString()
            Session("LoginID") = loginID.ToString()
            Session("StaffID") = StaffID.ToString()
            Response.Redirect("HomepageAdmin.aspx")
        End If

        If ViewState("attempts") <= 0 Then
            Session("attemptsReached") = True
            Response.Write("<script language=""javascript"">alert('Maximum attempts reached! Try again later.');</script>")
            Response.Redirect("Home.aspx")
        End If

        lblAttempts.Text = "Please enter names - " & ViewState("attempts") & " attempt(s)"
    End Sub
End Class