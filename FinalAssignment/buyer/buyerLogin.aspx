<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="buyerLogin.aspx.cs" Inherits="Project.buyer.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <asp:Label runat="server" Text="Buyer Login"></asp:Label>
<br />
<br />
<asp:Label ID="Label1" runat="server" Text="Buyer Id"></asp:Label>
<asp:TextBox ID="txtBuyerName" runat="server"></asp:TextBox>
<br />
<asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
<asp:TextBox ID="txtBuyerPassword" runat="server"></asp:TextBox>
<br />
<asp:CheckBox ID="chkRememberBuyer" runat="server" Text="Remember me" />
<br />
<asp:Button ID="btnBuyerLogin" runat="server" OnClick="btnBuyerLogin_Click" Text="Login" />
<br />
<asp:Label ID="lblMessage" runat="server"></asp:Label>
<br />
</asp:Content>
