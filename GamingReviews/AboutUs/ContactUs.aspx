<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Frontend.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="GamingReviews.AboutUs.ContactUs" %>

<%@ Register Src="~/AboutUs/ContactFrom.ascx" TagPrefix="uc1" TagName="ContactFrom" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <nav class="Title" style="height: 55px">
        <asp:Label ID="lbTitle" runat="server" Text="Contact Us" CssClass="lbTitle"></asp:Label>
    </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div id="homeBody">
        <uc1:ContactFrom runat="server" ID="ContactFrom" />
    </div>
</asp:Content>
