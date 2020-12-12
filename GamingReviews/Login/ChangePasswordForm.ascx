<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ChangePasswordForm.ascx.cs" Inherits="GamingReviews.Login.Profile1" %>
    <style type="text/css">
    .auto-style1 {
        margin-left: 0px;
    }
</style>
<div id="homeBody">
        <h3>Change Password</h3>

         <asp:Label ID="Label1" runat="server" Text="Old Password: "></asp:Label>
        <asp:TextBox ID="OldPsw" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label2" runat="server" Text="New Password: "></asp:Label>
        <asp:TextBox ID="NewPsw" runat="server"></asp:TextBox><br />
        <asp:Label ID="Error" runat="server" Text="Incorect password" Visible="false"></asp:Label><br />
       <asp:Button ID="changeButton" runat="server" Text="Change password" OnClick="changeButton_Click" />
    </div>
</form>       
    </div>
       