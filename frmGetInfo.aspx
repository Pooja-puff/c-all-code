<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmGetInfo.aspx.cs" Inherits="frmGetInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtQry" runat="server" Height="142px" 
            ontextchanged="txtQry_TextChanged" style="background-color: #00FFFF" 
            TextMode="MultiLine" Width="609px"></asp:TextBox>
    </p>
    <p style="margin-left: 640px">
        <asp:Label ID="Label1" runat="server" style="font-weight: 700" Text="Label"></asp:Label>
    </p>
    <p style="margin-left: 400px">
        <asp:Button ID="Button1" runat="server" Height="62px" onclick="Button1_Click" 
            style="font-weight: 700; background-color: #CCFFCC" Text="Execute Select" 
            Width="212px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Height="63px" onclick="Button2_Click" 
            style="font-weight: 700; background-color: #99FFCC" Text="Execute Command" 
            Width="207px" />
&nbsp;&nbsp;&nbsp;
    </p>
    <p style="margin-left: 320px">
        &nbsp;</p>
    <p style="margin-left: 320px">
        &nbsp;</p>
    <p style="margin-left: 320px">
        &nbsp;</p>
    <p style="margin-left: 320px">
        <asp:GridView ID="grdInfo" runat="server" 
            onselectedindexchanged="grdInfo_SelectedIndexChanged" 
            style="background-color: #99CCFF" Width="430px">
        </asp:GridView>
    </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:UserInfoConnString %>" 
        SelectCommand="SELECT * FROM [Table1]"></asp:SqlDataSource>
    </form>
</body>
</html>
