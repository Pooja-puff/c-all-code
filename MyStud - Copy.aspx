<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyStud.aspx.cs" Inherits="MyStud" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            font-weight: bold;
            text-decoration: underline;
            background-color: #00FF00;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 1040px; margin-left: 320px; background-color: #00FFCC">
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="style1">&nbsp;&nbsp;&nbsp; STUDENT INFO DATA ENTRY FORM</span><br />
        <br />
        <br />
&nbsp;<asp:Label ID="Label1" runat="server" Text="Student Name" 
            style="font-weight: 700"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TxtSname" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Enrollment No." 
            style="font-weight: 700"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TxtEno" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <b>Marks Secured:</b><br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="M1" style="font-weight: 700"></asp:Label>
        <asp:TextBox ID="TxtM1" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label4" runat="server" Text="M2" style="font-weight: 700"></asp:Label>
        <asp:TextBox ID="TxtM2" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label10" runat="server" style="font-weight: 700" Text="M3"></asp:Label>
        <asp:TextBox ID="TxtM3" runat="server"></asp:TextBox>
        &nbsp;<asp:Label ID="Label11" runat="server" style="font-weight: 700" Text="M4"></asp:Label>
&nbsp;<asp:TextBox ID="TxtM4" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label7" runat="server" Text="M5" style="font-weight: 700"></asp:Label>
        <asp:TextBox ID="TxtM5" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" style="font-weight: 700" Text="total"></asp:Label>
        <asp:TextBox ID="TxtTot" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" style="font-weight: 700" Text="Result"></asp:Label>
        <asp:TextBox ID="TxtRes" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            style="font-weight: 700" Text="assign" />
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
            style="font-weight: 700" Width="128px" />
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
            style="font-weight: 700" Text="compute " Width="181px" />
        <br />
        
    &nbsp;&nbsp;&nbsp;
        
    </div>
    </form>
</body>
</html>
