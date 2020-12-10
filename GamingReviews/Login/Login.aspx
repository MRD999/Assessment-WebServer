<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Frontend.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GamingReviews.Login.Login" %>
<%@ Register src="LoginForm.ascx" tagname="LoginForm" tagprefix="uc1" %>
<%@ Register Src="~/Login/LoginForm.ascx" TagPrefix="uc2" TagName="LoginForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <nav class="Title" style="height: 55px">
        <asp:Label ID="lbTitle" runat="server" Text="Login" CssClass="lbTitle"></asp:Label>
    </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

    <uc2:LoginForm runat="server" id="LoginForm" />

</asp:Content>