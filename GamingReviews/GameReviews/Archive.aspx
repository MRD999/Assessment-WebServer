<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/Frontend.Master" AutoEventWireup="true" CodeBehind="Archive.aspx.cs" Inherits="GamingReviews.GameReviews.Archive" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <nav class="Title" style="height: 55px">
        <asp:Label ID="lbTitle" runat="server" Text="Archive" CssClass="lbTitle"></asp:Label>
    </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div id="homeBody">
        <h3>The Archive</h3>
        <asp:DropDownList ID="DDWritter" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DDWritter_SelectedIndexChanged">
            <asp:ListItem Selected="True" Value="*">All</asp:ListItem>
            <asp:ListItem Value="1">Jordan Writer</asp:ListItem>
            <asp:ListItem Value="2">Cameron revewer</asp:ListItem>
            <asp:ListItem Value="3">Haghani Author</asp:ListItem>
            <asp:ListItem Value="4">Jordan Critic</asp:ListItem>
            <asp:ListItem Value="5">Cameron Poet</asp:ListItem>
            <asp:ListItem Value="6">Haghani Reporter</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DDPlatform" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DDPlatform_SelectedIndexChanged">
            <asp:ListItem Value="*">All</asp:ListItem>
            <asp:ListItem Value="Pc">Pc</asp:ListItem>
            <asp:ListItem Value="Playstation">Playstation</asp:ListItem>
            <asp:ListItem Value="XBox">XBox</asp:ListItem>
            <asp:ListItem Value="Nintendo">Nintendo</asp:ListItem>

        </asp:DropDownList>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="730px">
                <Columns>
                    <asp:BoundField DataField="GameId" HeaderText="GameID" SortExpression="GameId" />
                    <asp:BoundField DataField="GameName" HeaderText="GameName" SortExpression="GameName" />
                    <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
                    <asp:BoundField DataField="Producer" HeaderText="Producer" SortExpression="Producer" />
                    <asp:BoundField DataField="Platform" HeaderText="Platform" SortExpression="Platform" />
                    <asp:BoundField DataField="Date" DataFormatString="{0:yyyy/MM/dd}" HeaderText="Date" ItemStyle-Wrap="false" SortExpression="Date" />
                     <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="viewButton" runat="server" OnClick="button_OnClick" Text="View" />
                    </ItemTemplate>
                    </asp:TemplateField>
                    </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ></asp:SqlDataSource>
        </p>
        
    </div>
</asp:Content>