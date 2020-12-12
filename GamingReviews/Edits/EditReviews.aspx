<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Backend.Master" AutoEventWireup="true" CodeBehind="EditReviews.aspx.cs" Inherits="GamingReviews.EditReviews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <nav class="Title" style="height: 55px">
        <asp:Label ID="lbTitle" runat="server" Text="Edit Reviews" CssClass="lbTitle"></asp:Label>
    </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <h3>Your Reviews</h3><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="GameId" DataSourceID="SqlDataSource1" Width="1077px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="GameId" HeaderText="GameId" InsertVisible="False" ReadOnly="True" SortExpression="GameId" />
            <asp:BoundField DataField="GameName" HeaderText="GameName" SortExpression="GameName" />
            <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
            <asp:BoundField DataField="Producer" HeaderText="Producer" SortExpression="Producer" />
            <asp:BoundField DataField="Detail" HeaderText="Detail" SortExpression="Detail" />
            <asp:BoundField DataField="Platform" HeaderText="Platform" SortExpression="Platform" />
            <asp:BoundField DataField="Cover" HeaderText="Cover" SortExpression="Cover" />
            <asp:BoundField DataField="WriterID" HeaderText="WriterID" SortExpression="WriterID" />
            <asp:BoundField DataField="Date" HeaderText="Date" DataFormatString="{0:MM/dd/yyyy}" SortExpression="Date" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM tblGames WHERE GameId=@GameId" UpdateCommand = "UPDATE tblGames SET GameName=@GameName,Genre=@Genre,Producer=@Producer,Detail=@Detail,Platform=@Platform,Cover=@Cover,WriterID=@WriterID,Date=@Date WHERE GameID=@GameID"></asp:SqlDataSource>
</asp:Content>
