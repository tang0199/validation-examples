<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RequiredFieldValidation.aspx.cs" Inherits="RequiredFieldValidation" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Validation Test</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
		    Amount: <asp:TextBox id="txt1" runat="server"></asp:TextBox>

            <asp:RequiredFieldValidator ID="rqvTxt1" runat="server"
                 ForeColor="Red" Display="Dynamic"
                 ControlToValidate="txt1" EnableClientScript="true">Can not be blank!</asp:RequiredFieldValidator>
	   
            <br />
		    <br />
           Transaction: <asp:DropDownList ID="drpTransaction" runat="server" Width="140px">
                            <asp:ListItem Selected="True" Value="-1">Plese Select One ... </asp:ListItem>
                            <asp:ListItem Value="Deposit">Deposit</asp:ListItem>
                            <asp:ListItem Value="Withdraw">Withdraw</asp:ListItem>
                            <asp:ListItem Value="Transfer">Transfer</asp:ListItem>
                         </asp:DropDownList>
            
           <asp:RequiredFieldValidator ID="rfvProfession" runat="server" 
                ErrorMessage="Please select a transaction"
                ForeColor="Red" ControlToValidate="drpTransaction" 
                InitialValue="-1" Display="Dynamic"></asp:RequiredFieldValidator>
	    <p>
		    <asp:Button id="btnOK" runat="server" Text="OK" OnClick="btnOK_Click" Width="46px"></asp:Button><br />\
	    </p>
        <p><asp:Label runat="server" ID="lblMessage"></asp:Label></p>
    </div>
    </form>
</body>
</html>
