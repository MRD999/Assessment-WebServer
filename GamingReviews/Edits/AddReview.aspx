<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Backend.Master" AutoEventWireup="true" CodeBehind="AddReview.aspx.cs" Inherits="GamingReviews.Edits.AddReview" %>

<%@ Register Src="~/Edits/Add.ascx" TagPrefix="uc1" TagName="Add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <nav class="Title" style="height: 55px">
        <asp:Label ID="lbTitle" runat="server" Text="New Review" CssClass="lbTitle"></asp:Label>
    </nav>
</asp:Content>
      <asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
            <uc1:Add runat="server" ID="Add" />
    </asp:Content>
