<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FinalAssignment.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
        <table class="auto-style2">
    <tr>
        <th colspan="3">
            <asp:Label runat="server" Text="Login"></asp:Label>

        </th>

    </tr>
    <tr>
        <td>
            <i class="fas fa-user"></i>
            <asp:Label  runat="server" Text="Email Id"></asp:Label>

        </td>
        <td class="auto-style1">
            
            <asp:TextBox ID="txtEmailId" runat="server"></asp:TextBox>

        </td>
        <td>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmailId" ErrorMessage="*Required" ValidationGroup="SellerValidation"></asp:RequiredFieldValidator>

        </td>
    </tr>
    <tr>
        <td>
            <i class="fas fa-lock"></i>
            <asp:Label  runat="server" Text="Password"></asp:Label>

        </td>
        <td class="auto-style1">
            <asp:TextBox ID="txtLoginPassword" runat="server" TextMode="Password"></asp:TextBox>

        </td>
        <td>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtLoginPassword" ErrorMessage="*Required" ValidationGroup="SellerValidation"></asp:RequiredFieldValidator>

        </td>

    </tr>
    <tr>
        <td colspan="3">
            <asp:CheckBox ID="chkRememberLogin" runat="server" Text="Remember me" />

        </td>

    </tr>
    <tr>
        <td colspan="3">
            <asp:Button ID="btnLogin" runat="server" OnClick="btnBuyerLogin_Click" Text="Login" ValidationGroup="LoginValidation" />

        </td>

    </tr>
    <tr>
        <td colspan="3">
            <asp:Label ID="lblMessage" runat="server"></asp:Label>

        </td>

    </tr>
    </table>
    <h3>Register Below</h3>
<p>
    <asp:Button ID="btnSendToRegisterPage" runat="server" OnClick="btnSendToRegisterPage_Click" Text="Register" />
</p>
    
</asp:Content>
