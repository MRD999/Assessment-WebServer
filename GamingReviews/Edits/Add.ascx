<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Add.ascx.cs" Inherits="GamingReviews.Edits.Add" %>
<h3>Adding new Reviews</h3><br />
<form>
<asp:Label ID="lbName" runat="server" Text="Game Name: "></asp:Label>
<asp:TextBox ID="gName" runat="server" Width="197px" Required=""></asp:TextBox>

<asp:Label ID="lbGenre" runat="server" Text="Genre: "></asp:Label>
<asp:TextBox ID="genre" runat="server" Width="197px" Required=""></asp:TextBox>

<asp:Label ID="lbProducer" runat="server" Text="Producer: "></asp:Label>
<asp:TextBox ID="producer" runat="server" Width="197px" Required=""></asp:TextBox>

<asp:Label ID="lbDetail" runat="server" Text="Detail: "></asp:Label>
<asp:TextBox ID="detail" runat="server" Width="197px" Required="" TextMode="MultiLine"></asp:TextBox>

<asp:Label ID="lbPlatform" runat="server" Text="Platform: "></asp:Label>
<asp:DropDownList ID="DDPlatform" runat="server" Width="197px" Required="">
    <asp:ListItem Selected="True" Value="Pc">Pc</asp:ListItem>
    <asp:ListItem Value="Playstation">Playstation</asp:ListItem>
    <asp:ListItem Value="XBox">XBox</asp:ListItem>
    <asp:ListItem Value="Nintendo">Nintendo</asp:ListItem>
</asp:DropDownList>

<asp:Label ID="lbCover" runat="server" Text="Cover: "></asp:Label>
<asp:TextBox ID="cover" runat="server" Width="197px"></asp:TextBox>


<asp:Label ID="lbDate" runat="server" Text="Date: "></asp:Label>
<asp:Calendar ID="date" runat="server" SelectionMode="Day" Width="197px" Required=""></asp:Calendar>

<asp:Button ID="addButton" runat="server" Text="Submit" Width="250px" OnClick="addButton_Click" />
<asp:Button ID="resetButton" runat="server" Text="Reset" Width="250px" CausesValidation="False" UseSubmitBehavior="false" OnClick="resetButton_Click" />
</form>