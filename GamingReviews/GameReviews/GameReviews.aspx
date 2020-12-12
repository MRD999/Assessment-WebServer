<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Frontend.Master" AutoEventWireup="true" CodeBehind="GameReviews.aspx.cs" Inherits="GamingReviews.GameReviews.GameReviews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <nav class="Title" style="height: 55px">
        <asp:Label ID="lbTitle" runat="server" Text="Reviews-Top" CssClass="lbTitle"></asp:Label>
    </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div id="homeBody">
        <h3>Reviews Latest 10</h3>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  DataSourceID="SqlDataSource1" >
            <Columns>
                <asp:BoundField DataField="GameId" HeaderText="GameID" SortExpression="GameId" />
                <asp:BoundField DataField="GameName" HeaderText="GameName"  SortExpression="GameName" />
                <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
                <asp:BoundField DataField="Producer" HeaderText="Producer" SortExpression="Producer" />
                <asp:BoundField DataField="Platform" HeaderText="Platform" SortExpression="Platform" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="viewButton" runat="server" OnClick="button_OnClick" Text="View" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT TOP (10) GameId,GameName, Genre, Producer, Detail, Platform FROM tblGames ORDER BY Date"></asp:SqlDataSource>
        

        
    </div>
</asp:Content>