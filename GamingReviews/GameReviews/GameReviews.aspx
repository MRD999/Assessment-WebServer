<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/Frontend.Master" CodeBehind="GameReviews.aspx.vb" Inherits="GamingReviews.GameReviews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <nav class="Title" style="height: 55px">
        <asp:Label ID="lbTitle" runat="server" Text="Reviews" CssClass="lbTitle"></asp:Label>
    </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div id="homeBody">
        <h3>Reviews</h3>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="GameId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Width="733px">
                <Columns>
                    <asp:BoundField DataField="GameId" HeaderText="GameId" ReadOnly="True" SortExpression="GameId" InsertVisible="False" />
                    <asp:BoundField DataField="GameName" HeaderText="GameName" SortExpression="GameName" />
                    <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
                    <asp:BoundField DataField="Producer" HeaderText="Producer" SortExpression="Producer" />
                    <asp:BoundField DataField="Detail" HeaderText="Detail" SortExpression="Detail" />
                    <asp:BoundField DataField="Platform" HeaderText="Platform" SortExpression="Platform" />
                    <asp:BoundField DataField="Cover" HeaderText="Cover" SortExpression="Cover" />
                    <asp:BoundField DataField="WriterID" HeaderText="WriterID" SortExpression="WriterID" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ReviewDataBaseConnectionString1 %>" DeleteCommand="DELETE FROM [tblGames] WHERE [GameId] = @GameId" InsertCommand="INSERT INTO [tblGames] ([GameName], [Genre], [Producer], [Detail], [Platform], [Cover], [WriterID], [Date]) VALUES (@GameName, @Genre, @Producer, @Detail, @Platform, @Cover, @WriterID, @Date)" ProviderName="<%$ ConnectionStrings:ReviewDataBaseConnectionString1.ProviderName %>" SelectCommand="SELECT [GameId], [GameName], [Genre], [Producer], [Detail], [Platform], [Cover], [WriterID], [Date] FROM [tblGames]" UpdateCommand="UPDATE [tblGames] SET [GameName] = @GameName, [Genre] = @Genre, [Producer] = @Producer, [Detail] = @Detail, [Platform] = @Platform, [Cover] = @Cover, [WriterID] = @WriterID, [Date] = @Date WHERE [GameId] = @GameId">
                <DeleteParameters>
                    <asp:Parameter Name="GameId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="GameName" Type="String" />
                    <asp:Parameter Name="Genre" Type="String" />
                    <asp:Parameter Name="Producer" Type="String" />
                    <asp:Parameter Name="Detail" Type="String" />
                    <asp:Parameter Name="Platform" Type="String" />
                    <asp:Parameter Name="Cover" Type="String" />
                    <asp:Parameter Name="WriterID" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="Date" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="GameName" Type="String" />
                    <asp:Parameter Name="Genre" Type="String" />
                    <asp:Parameter Name="Producer" Type="String" />
                    <asp:Parameter Name="Detail" Type="String" />
                    <asp:Parameter Name="Platform" Type="String" />
                    <asp:Parameter Name="Cover" Type="String" />
                    <asp:Parameter Name="WriterID" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="Date" />
                    <asp:Parameter Name="GameId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        
    </div>
</asp:Content>