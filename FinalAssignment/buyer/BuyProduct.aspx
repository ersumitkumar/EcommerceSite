<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BuyProduct.aspx.cs" Inherits="FinalAssignment.BuyProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
   <div class="container">
    <fieldset>
        <asp:Label ID="lblProduct" runat="server" Text="Product"></asp:Label><br />
        <asp:Label ID="lblAmount" runat="server" Text="Amount"></asp:Label><br />
        <asp:Label ID="Cost" runat="server" Text="Cost"></asp:Label><br />
        <asp:Label ID="User" runat="server" Text="User"></asp:Label><br />
        <asp:Label ID="Date" runat="server" Text="Purchase Date"></asp:Label><br />
        <asp:Label ID="HST" runat="server" Text="HST"></asp:Label><br />
        <asp:Label ID="Total" runat="server" Text="Total"></asp:Label><br />
    </fieldset>
</div>
</asp:Content>
