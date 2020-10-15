<%@ Page Language="C#" MasterPageFile="~/MasterPages/Frontend.Master" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="GamingReviews._Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <nav class="Title" style="height: 55px">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbTitle" runat="server" Text="Game Reviews" CssClass="lbTitle"></asp:Label>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbSubTitle" runat="server" Text="Home Page"></asp:Label>
            </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div id="homeBody">
        <p>Test</p>        
    </div>
</asp:Content>
