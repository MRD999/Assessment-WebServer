<%@ Control Language="C#" AutoEventWireup="false" CodeBehind="LoginForm.ascx.vb" Inherits="GamingReviews.LoginForm" %>
    <div id="homeBody">
        <h3>Sign in</h3>

        <form action="action_page.php" method="post">

        <div class="SignIn">
         <label for="id"><b>ID&emsp;&emsp;&emsp;&emsp;</b></label>
         <input type="text" placeholder="Enter id" name="id" required><br />

        <label for="psw"><b>Password&ensp;</b></label>
        <input type="password" placeholder="Enter Password" name="psw" required><br />

            <asp:Button ID="LoginButton" runat="server" Text="Login" OnClick="LoginButton_onClick" />
            <asp:Button ID="SignButton" runat="server" Text="Sign Up" OnClick="SignButton_onClick" />
            <br />
     </div>
    <span class="psw">Forgot <a href="ForgotenAccount.aspx">password?</a></span>
</form>       
    </div>
