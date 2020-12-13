<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ContactFrom.ascx.cs" Inherits="GamingReviews.AboutUs.ContactFrom" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
        height: 78px;
    }
    .auto-style2 {
        height: 23px;
    }
    .auto-style3 {
        height: 24px;
    }
    .auto-style4 {
        height: 224px;
    }
    .auto-style5 {
        margin-left: 6px;
    }
    .auto-style6 {
        height: 23px;
        width: 278px;
    }
    .auto-style7 {
        width: 278px;
    }
    .auto-style8 {
        height: 224px;
        width: 278px;
    }
    .auto-style9 {
        height: 23px;
        width: 336px;
    }
    .auto-style10 {
        width: 336px;
    }
    .auto-style11 {
        height: 224px;
        width: 336px;
    }
    .auto-style12 {
        width: 278px;
        height: 25px;
    }
    .auto-style13 {
        width: 336px;
        height: 25px;
    }
    .auto-style14 {
        height: 25px;
    }
</style>


    <table runat="server" id="FormTable" class="auto-style1">
        <tr>
            <td colspan="3" class="auto-style3"><h3></h3></td>
        </tr>
        <tr>
            <td class="auto-style6">Name</td>
            <td class="auto-style9">
                <asp:TextBox ID="Name" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" CssClass="ErrorMessage" ErrorMessage="Enter your name">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">E-mail address</td>
            <td class="auto-style13">
                <asp:TextBox ID="EmailAddress" runat="server" TextMode="Email"></asp:TextBox>
            </td>
            <td class="auto-style14">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" ErrorMessage="Enter an email address">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" ErrorMessage="Enter a valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Confirm e-mail address</td>
            <td class="auto-style10">
                <asp:TextBox ID="ConfirmEmailAddress" runat="server" TextMode="Email"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" ErrorMessage="Confirm the email address">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="EmailAddress" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" ErrorMessage="The e-mail addresses don't match">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Comments</td>
            <td class="auto-style11">
                <asp:TextBox ID="Comments" runat="server" CssClass="auto-style5" Height="201px" TextMode="MultiLine" Width="361px"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Comments" CssClass="ErrorMessage" ErrorMessage="Enter a comment">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style10">
                <asp:Button ID="SendButton" runat="server" Text="Send" OnClick="sendButton_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" HeaderText="Please correct the following errors" />
            </td>
        </tr>
    </table>
<asp:Label ID="Message" runat="server" Text="Message Sent thank you for your time" Visible="false"></asp:Label>

