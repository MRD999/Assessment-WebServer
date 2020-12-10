<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.ascx.cs" Inherits="GamingReviews.Login.LoginForm" %>

    <style type="text/css">
        .auto-style1 {
            width: 93px;
        }
        .auto-style2 {
            height: 13px;
        }
    </style>

   <!-- <div id="homeBody">
        <h3>Sign in</h3>

        <form action="action_page.php" method="post">

        <div class="SignIn">
         <label for="id"><b>ID&emsp;&emsp;&emsp;&emsp;</b></label>
         <input type="text" placeholder="Enter id" name="id" required><br />

        <label for="psw"><b>Password&ensp;</b></label>
        <input type="password" placeholder="Enter Password" name="psw" required><br />

            <asp:Button ID="LoginButton" runat="server" Text="Login" OnClick="LoginButton_onClick" />
            <asp:Button ID="SignButton"  runat="server" Text="Sign Up" PostBackUrl="~/Login/Signup.aspx" CausesValidation="False" UseSubmitBehavior="false"/>
            <br />

     </div>
    <span class="psw">Forgot <a href="ForgotenAccount.aspx">password?</a></span>
</form>       
    </div>-->
<asp:Login ID="Login" runat="server" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" OnAuthenticate="Login_Authenticate" UserNameLabelText="ID:" ViewStateMode="Disabled">
    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
    <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
    <TextBoxStyle Font-Size="0.8em" />
    <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
</asp:Login>
