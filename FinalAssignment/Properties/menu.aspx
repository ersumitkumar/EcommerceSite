<%@ Page Title="" Language="C#" MasterPageFile="~/Seller.master" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="FinalAssignment.Properties.menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="menu">
        <ul>
            <li><a href="">Home</a></li>
            <li><a href="">login</a></li>
            <li><a href="">Register</a></li>
            <li><a href="">Product</a>
               <ul>
                   <li><a href="">Add</a></li>
                   <li><a href="">Edit</a></li>
                   <li><a href="">Delete</a></li>
               </ul>

            </li>
            <li><a href="">Messages</a></li>
            <li><a href="">Contactus</a></li>
        </ul>
    </div>
</asp:Content>
