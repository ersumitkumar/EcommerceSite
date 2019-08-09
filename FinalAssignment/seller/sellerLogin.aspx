<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="sellerLogin.aspx.cs" Inherits="Project.seller.sellerLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label runat="server" Text="Seller Login" ID="Label3"></asp:Label>
<br />
<br />
<asp:Label ID="Label1" runat="server" Text="Seller Id"></asp:Label>
<asp:TextBox ID="txtSellerId" runat="server"></asp:TextBox>
<br />
<asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
<asp:TextBox ID="txtSellerPassword" runat="server"></asp:TextBox>
<br />
<asp:CheckBox ID="chkRememberSeller" runat="server" Text="Remember me" />
<br />
<asp:Button ID="btnSellerLogin" runat="server" OnClick="btnBuyerLogin_Click" Text="Login" />
<br />
<asp:Label ID="lblMessage" runat="server"></asp:Label>
</asp:Content>
