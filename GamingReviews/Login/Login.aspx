<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/Frontend.Master" CodeBehind="Login.aspx.vb" Inherits="GamingReviews.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <nav class="Title" style="height: 55px">
        <asp:Label ID="lbTitle" runat="server" Text="Login" CssClass="lbTitle"></asp:Label>
    </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div id="homeBody">
        <h3>Sign in</h3>

        <form action="action_page.php" method="post">

        <div class="SignIn">
         <label for="id"><b>ID&emsp;&emsp;&emsp;&emsp;</b></label>
         <input type="text" placeholder="Enter id" name="id" required><br />

        <label for="psw"><b>Password&ensp;</b></label>
        <input type="password" placeholder="Enter Password" name="psw" required><br />

       <button type="submit">Login</button>

       <button type="button" class="btnSignup">Sign Up</button>
     </div>
    <span class="psw">Forgot <a href="ForgotenAccount.aspx">password?</a></span>
</form>       
    </div>
</asp:Content>
