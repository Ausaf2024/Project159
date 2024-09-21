<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.login1"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>loginpage</title>
    <link rel="icon" href="images/logo.png" />
    <script>
        function validation(){
           
            var username = document.getElementById("txtname").value;
            var password = document.getElementById("txtpass").value;
            if (username ===null || username === "") {
                alert("befor tha name")
                return false;
               } 
            if (password === null || password ==="") {
                alert("befor tha password")
                return false;
            }
        }
    </script>
</head>
<body>
      <h1 style="text-align:center"><b>Welcome to Login User</b></h1></>
    <form id="form1" runat="server">
        <Center >
        <table style="background-color:aquamarine; height:100px; width:50%;">
               <tr >
                <td>
                 Enter Username
                </td>
                <td><asp:TextBox ID="txtname" runat="server" Width="140"></asp:TextBox></td>
                </tr>
                <tr>
                <td>
                 Enter Password
                </td>
                <td>
                <asp:TextBox ID="txtpass" runat="server" Width="140"></asp:TextBox>
                </td>
                </tr>
                <tr>
            <td></td>
            <td style="text-align:left;"><asp:Button ID="btnsave" runat="server" Text="submit" BackColor="Yellow" BorderStyle="Dashed" OnClick="btnsave_Click"  OnClientClick="return validation()"/></td>
            </tr>
        </table>
             <p>Already have an account?<a href="#">Sign in</a></p>
        </Center>
    </form>
</body>
</html>
