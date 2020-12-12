<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Frontend.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="GamingReviews.Login.Profile" %>

<%@ Register Src="~/Login/ChangePasswordForm.ascx" TagPrefix="uc1" TagName="ChangePasswordForm" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <nav class="Title" style="height: 55px">
        <asp:Label ID="lbTitle" runat="server" Text="Profile" CssClass="lbTitle"></asp:Label>
    </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    
    <div>
    <h3>Welcome to your profile</h3>
    <asp:Label ID="Fnamelb" runat="server" Text="First Name: "></asp:Label>
    <asp:Label ID="lbFName" runat="server" Text="Name"></asp:Label><br />
    <asp:Label ID="Lnamelb" runat="server" Text="Last Name: "></asp:Label>
    <asp:Label ID="lbLName" runat="server" Text="Name"></asp:Label><br />
    <asp:Label ID="UserNamelb" runat="server" Text="User Name: "></asp:Label>
    <asp:Label ID="lblUserName" runat="server" Text="Name"></asp:Label><br />
    <br /><br />
   
    <asp:Button ID="signOutButton" runat="server" Text="SignOut" OnClick="signOutButton_Click" />
   <asp:Button ID="edditButton" runat="server" Text="Edit Reviews" Visible="false" OnClick="edditButton_Click" />
   <asp:Button ID="addButton" runat="server" Text="Add reviews" Visible="false" OnClick="addButton_Click" />
        <uc1:ChangePasswordForm runat="server" id="ChangePasswordForm" />
    </div>


</asp:Content>