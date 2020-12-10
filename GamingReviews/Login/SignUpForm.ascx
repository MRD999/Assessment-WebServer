<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SignUpForm.ascx.cs" Inherits="GamingReviews.Login.SignUp" %>
<style type="text/css">
    .auto-style1 {
        margin-left: 0px;
    }
</style>
<div id="homeBody">
        <h3>Sign in</h3>

        <form action="action_page.php" method="post">

        <div class="SignUp">
          
        <label for="Fist Name"><b>First Name&emsp;&emsp;</b></label>
         <asp:TextBox ID="FName" runat="server" Required=""></asp:TextBox><br />

         <label for="LastName"><b>Last Name&emsp;&emsp;</b></label>
          <asp:TextBox ID="LName" runat="server" Required=""></asp:TextBox><br />


         <label for="UserName"><b>UserName&emsp;&emsp;&emsp;</b></label>
         <asp:TextBox ID="UserName" runat="server" Required="" CssClass="auto-style1"></asp:TextBox><br />


        <label for="psw"><b>Password&ensp;</b></label>
        <asp:TextBox ID="psw" runat="server" Required="" OnTextChanged="psw_TextChanged"></asp:TextBox><br />

        <asp:Label ID="ErrorText" runat="server" Text="UserName all ready Exists"></asp:Label ><br />
        <asp:Button ID="SignUpButton" runat="server" Text="Sign Up" OnClick="SignUp_onClick" />
            <br />

     </div>
</form>       
    </div>