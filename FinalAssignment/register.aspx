<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Project.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <table>
        <tr>
            <td>
                <asp:Label  runat="server" Text="Name"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>

            </td>
             <td>

                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="*Required" ValidationGroup="RegisterValidation"></asp:RequiredFieldValidator>

            </td>
            </tr>
        <tr>
            <td>
                <i class="fas fa-user"></i>
                <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>

            </td>
            <td>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Required" ValidationGroup="RegisterValidation" Display="Dynamic"></asp:RequiredFieldValidator>

            </td>
            
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" Text="Password"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPassword" ErrorMessage="*Required" ValidationGroup="RegisterValidation" Display="Dynamic"></asp:RequiredFieldValidator>

            </td>
            </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Company"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="txtCompany" runat="server"></asp:TextBox>

            </td>
            <td>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCompany" ErrorMessage="*Required" ValidationGroup="RegisterValidation" Display="Dynamic"></asp:RequiredFieldValidator>

            </td>

        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Role"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlRole" runat="server">
                    <asp:ListItem>Buyer</asp:ListItem>
                    <asp:ListItem>Seller</asp:ListItem>
                    
                    </asp:DropDownList>
            </td>
            <td>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Required" ControlToValidate="ddlRole" Display="Dynamic" InitialValue="-1" ValidationGroup="RegisterValidation"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" ValidationGroup="RegisterValidation" />
                </td><td>
                <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />

            </td>
        </tr>
        <tr>
            <td>
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>

            </td>
        </tr>
    
    </table>
</asp:Content>
