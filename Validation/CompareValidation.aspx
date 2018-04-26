<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CompareValidation.aspx.cs" Inherits="CompareValidation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head" runat="server">
    <title>Compare Validation</title>
</head>
<body>
    <form id="form1" runat="server">
    Your Email:
            <asp:TextBox ID="txtEmail" runat="server" Width="140px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                ControlToValidate="txtEmail" ForeColor="Red" 
                ToolTip="Please enter your email" Display="Dynamic">*</asp:RequiredFieldValidator>
        <br /><br />
    Confirm Email:
            <asp:TextBox ID="txtConfirmEmail" runat="server" Width="140px"></asp:TextBox>
            
            <asp:RequiredFieldValidator ID="rfvConfirmEmail" runat="server" ControlToValidate="txtConfirmEmail"
                ForeColor="Red" ToolTip="Please confirm your email">*</asp:RequiredFieldValidator>
            
            <asp:CompareValidator ID="cvConfirmEmail" runat="server" ErrorMessage="Email do not match!"
                ControlToValidate="txtConfirmEmail" ControlToCompare="txtEmail" 
                Display="Dynamic" ForeColor="Red"></asp:CompareValidator>
        <br /><br />
   Your Age:
            <asp:TextBox ID="txtAge" runat="server" Width="40px" MaxLength="2"></asp:TextBox>
            
            <asp:RequiredFieldValidator ID="rfvAge" runat="server" ControlToValidate="txtAge"
                ForeColor="Red" ToolTip="Please enter your age" Display="Dynamic">Required!</asp:RequiredFieldValidator>
            
            <asp:CompareValidator ID="cvAge" runat="server" ErrorMessage="Please enter a number"
                ForeColor="Red" ControlToValidate="txtAge" Type="Integer" 
                Operator="DataTypeCheck" Display="Dynamic"></asp:CompareValidator>
        <br /><br />
   Experience:
            <asp:TextBox ID="txtExperience" runat="server" Width="40px" MaxLength="2"></asp:TextBox>
            
            <asp:CompareValidator ID="cvExperience" runat="server" 
                ErrorMessage="You must have 5 Year Exp or above to apply"
                Operator="GreaterThanEqual" ValueToCompare="5" ControlToValidate="txtExperience"
                Type="Integer" Display="Dynamic" ForeColor="Red"></asp:CompareValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ErrorMessage="You must have 10 Year Exp or less to apply"
                Operator="LessThanEqual" ValueToCompare="10" ControlToValidate="txtExperience"
                Type="Integer" Display="Dynamic" ForeColor="Red"></asp:CompareValidator>
           <br /><br />
        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click"></asp:Button>
           <br /><br />   
         <h2>You have entered</h2>
   Email:
            <asp:Label ID="lblEmail" runat="server"></asp:Label>
        <br/><br />
   Age:
            <asp:Label ID="lblAge" runat="server"></asp:Label>
        <br /><br />
   Experience
            <asp:Label ID="lblExperience" runat="server"></asp:Label>
    </form>
</body>
</html>
