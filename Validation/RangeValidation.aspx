<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RangeValidation.aspx.cs" Inherits="RangeValidation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id=Head1 runat="server">
    <title>Range Validation</title>
</head>
<body>
    <form id="form1" runat="server">

       Experience:
            <asp:TextBox ID="txtExperience" runat="server" Width="40px" MaxLength="2"></asp:TextBox>
            
            <asp:RequiredFieldValidator ID="rfvExperience" runat="server" ControlToValidate="txtExperience"
                ForeColor="Red" ToolTip="Please enter your experience" Display="Dynamic">Can not be blank!</asp:RequiredFieldValidator>

            <asp:RangeValidator ID="rvExperience" runat="server" ControlToValidate="txtExperience"
                Type="Integer" ErrorMessage="You must have 5 to 15 Years of Exp to apply" 
                MaximumValue="15"
                MinimumValue="5" Display="Dynamic" ForeColor="Red"></asp:RangeValidator>
        <br /><br />
       Grade:
            <asp:DropDownList ID="drpGrade" runat="server" Width="140px">
                <asp:ListItem Selected="True">-Select-</asp:ListItem>
                <asp:ListItem>A</asp:ListItem>
                <asp:ListItem>B</asp:ListItem>
                <asp:ListItem>C</asp:ListItem>
                <asp:ListItem>D</asp:ListItem>
                <asp:ListItem>E</asp:ListItem>
            </asp:DropDownList>
            
            <asp:RangeValidator ID="rvGrade" runat="server" ControlToValidate="drpGrade" 
                ErrorMessage="Your accademic grade needs to be between A and C to apply"
                MaximumValue="C" MinimumValue="A" Display="Dynamic"  ForeColor="Red"></asp:RangeValidator>
        <br /><br />
        
           <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click"></asp:Button>
        <br /><br />   
        <h2>You have entered</h2> 
            
        Experience: <asp:Label ID="lblExperience" runat="server"></asp:Label>
            <br /><br />
        Grade: <asp:Label ID="lblGrade" runat="server"></asp:Label>
    
    </form>
</body>
</html>
