<%@ Page Title="" Language="C#" MasterPageFile="~/Seller.master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Project.WebForm2" %>



<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="width:100%;">
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lblProductName" runat="server" Text="Product Name"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtname" runat="server" CssClass="auto-style3" Width="251px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfv_name" runat="server" ControlToValidate="txtname" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="AddValidation">*required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lblProductDesc" runat="server" Text="Product Description"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtdesc" runat="server" CssClass="auto-style4" Width="250px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" style="height: 44px">
                <asp:Label ID="lblProductPrice" runat="server" Text="Price"></asp:Label>
            </td>
            <td class="auto-style2" style="height: 44px">
                <asp:TextBox ID="txtprice" runat="server" CssClass="auto-style4" Width="246px"></asp:TextBox>
            </td>
            <td style="height: 44px">
                <asp:RequiredFieldValidator ID="rfv_price" runat="server" ControlToValidate="txtdesc" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="AddValidation">*required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Quantity</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtqty" runat="server" CssClass="auto-style6" Width="249px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfv_qty" runat="server" ControlToValidate="txtqty" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="AddValidation">*required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Category</td>
            <td class="auto-style2">
                <asp:DropDownList ID="ddl_Category" runat="server" CssClass="auto-style7" Height="23px" Width="257px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfv_cat" runat="server" ControlToValidate="ddl_Category" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="AddValidation" InitialValue="-1">*required</asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblMessage" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btn_add" runat="server" Height="32px" OnClick="btn_add_Click" Text="Add" Width="81px" ValidationGroup="AddValidation" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 

</asp:Content>
