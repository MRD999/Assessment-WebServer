<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Frontend.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="GamingReviews.Login.Signup" %>

<%@ Register Src="~/Login/SignUpForm.ascx" TagPrefix="uc1" TagName="SignUpForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <nav class="Title" style="height: 55px">
                <asp:Label ID="lbTitle" runat="server" Text="Game Reviews" CssClass="lbTitle"></asp:Label>

            </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <uc1:SignUpForm runat="server" id="SignUpForm" />
</asp:Content>