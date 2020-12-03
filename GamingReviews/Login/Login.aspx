<%@ Page Title="" Language="C#" AutoEventWireup="false" MasterPageFile="~/MasterPages/Frontend.Master" CodeBehind="Login.aspx.vb" Inherits="GamingReviews.Login" %>

<%@ Register Src="~/Login/LoginForm.ascx" TagPrefix="uc1" TagName="LoginForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <nav class="Title" style="height: 55px">
        <asp:Label ID="lbTitle" runat="server" Text="Login" CssClass="lbTitle"></asp:Label>
    </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <uc1:LoginForm runat="server" id="LoginForm" />
</asp:Content>
