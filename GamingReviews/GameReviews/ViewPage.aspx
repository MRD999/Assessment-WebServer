<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Frontend.Master" AutoEventWireup="true" CodeBehind="ViewPage.aspx.cs" Inherits="GamingReviews.GameReviews.ViewPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <nav class="Title" style="height: 55px">
        <asp:Label ID="lbTitle" runat="server" Text="Review" CssClass="lbTitle"></asp:Label>
    </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    
    <div id="homeBody">
        <h3>Review</h3>
    <asp:Label ID="lbName" runat="server" Text="Game Name: "></asp:Label>
    <asp:Label ID="namelb" runat="server" Text="Label"></asp:Label><br />

    <asp:Label ID="lbWritter" runat="server" Text="Review Author: "></asp:Label>
    <asp:Label ID="writterlb" runat="server" Text="Label"></asp:Label><br />

    <asp:Label ID="lbDate" runat="server" Text="Date: "></asp:Label>
    <asp:Label ID="datelb" DataFormatString="{0:yyyy/MM/dd}" runat="server" Text="Label"></asp:Label><br />

    <asp:Label ID="lbPlatform" runat="server" Text="Game Platform: "></asp:Label>
    <asp:Label ID="platformlb" runat="server" Text="Label"></asp:Label><br />

    <asp:Label ID="lbGenre" runat="server" Text="Game Genre: "></asp:Label>
    <asp:Label ID="genrelb" runat="server" Text="Label"></asp:Label><br />

    <asp:Label ID="lbProducer" runat="server" Text="Game Producer: "></asp:Label>
    <asp:Label ID="producerlb" runat="server" Text="Label"></asp:Label><br />

    <asp:Label ID="lbDetail" runat="server" Text="Game Review: "></asp:Label>
    <asp:Label ID="detiallb" runat="server" Text="Label"></asp:Label><br />


       </div>

</asp:Content>
