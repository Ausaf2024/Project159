<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Multipage.aspx.cs" Inherits="WebApplication1.userlogin"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Multipage</title>
    <link rel="icon" href="images/logo4.png"
    <meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <style>
  /* Make the image fully responsive */
  .carousel-inner img {
    width: 100%;
    height: 100%;
    }
  .input-container{
  display: -ms-flexbox;
  display: flex;
  width: 80%;
  margin-bottom: 15px;
    }
    .icon {
  padding: 10px;
  background: dodgerblue;
  color: white;
  min-width: 50px;
  text-align: center;
  }
.input-field {
  width: 100%;
  padding: 10px;
  outline: none;
}
.input-field:focus {
  border: 2px solid dodgerblue;
}
.btn {
  background-color: dodgerblue;
  color: white;
  padding: 15px 20px;
  border: 1px:solid;
  cursor: pointer;
  width: 80%;
  opacity: 0.9;
}
.btn:hover {
  opacity: 1;
    }
  .header{
        list-style-type:none;
        margin:0px;
        padding:0px;
        background-color:black;
        overflow:hidden;
        margin-bottom:5px;
        margin-top:0px;
       }
    li{
       float:left;
       }
    li a{
        display:block;
        color:white;
        text-align:center;
        padding :15px;
        text-decoration:none;
       }
    ol{
        float:right
      }
    ol a{
        display:block;
        color:red;
        text-align:center;
        padding :15px;
        text-decoration:none;
       }
    .logo{
        margin-top:10px;
        margin-left:8px;
       }
</style>
 
    <script>
        function validation() {
            var username = document.getElementById("usrnm").value;
            var email = document.getElementById("email").value;
            var password = document.getElementById("psw").value;
            if (username == null || username == "") {
                alert(" befor plz enter tha name")
                return false;
               }
            if (email == null || email == "") {
                alert("befor plz enter tha email")
                return false;
            }
            if (password == null || password == "") {
                alert("befor plz enter tha pasword")
                return false;
               }
            }
    </script>

</head>
<body>
     <form id="form1" runat="server">

                   <div class="header">
                       <div id="logo">
                         <a class="navbar-brand" href="/"><img class="logo" src="images/logo.png" alt="logo" style="height:50px; width:100px;"  /></a>
                       </div>
                  <ul>
                   <li><a href="Home.aspx">Home</a></li>
                   <li><a href="Aboutus.aspx">About us</a></li>
                   <li><a href="Contact.aspx">Contact</a></li>
                   <li><a href="Services.aspx">Services</a></li>
                </ul>
               <ol>
                <li ><a href="login.aspx">Login</a></li>
                   <li ><a href="signup.aspx">Sign up</a></li>
               </ol>

           </div>
        <table style="text-align:center; width:100%; ">
            <tr>
                <td>
                   <asp:Image ID="image1" runat="server" Width="320px" Height="150px" ImageUrl="images/img1.jpg"/>
                </td>
                <td>
                    <asp:Image ID="image2" runat="server" Width="320px" Height="150px" ImageUrl="images/img2.jpg"/>
                </td>
                <td>
                    <asp:Image ID="Image3" runat="server" Width="320px" Height="150px" ImageUrl="images/img8.jpg"/>
                </td>
                <td>
                    <asp:Image ID="Image4" runat="server" Width="320px" Height="150px" ImageUrl="images/card1img.jpg"/>
                </td>
            </tr>
        </table>

        <div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
    <li data-target="#demo" data-slide-to="3"></li>
  </ul>

  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/background1.jpg" alt="Los Angeles" height="200" width="100%"/>
    </div>
    <div class="carousel-item">
      <img src="images/banares2.jpg" alt="Chicago" height="200" width="100%"/>
    </div>
    <div class="carousel-item">
      <img src="images/banares6.jpg" alt="New York" height="200" width="100%"/>
    </div>
          <div class="carousel-item">
      <img src="images/banares5.jpg" alt="New York" height="200" width="100%"/>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
        <marquee bgcolor="red" direction="Left">Last:Date:30:08:2022</marquee>
      <h2 style="text-align:center">Register Form</h2>
         <center>
        <div class="input-container">
        <i class="fa fa-user icon"></i>
        <input class="input-field" type="text" placeholder="Username" name="usrnm" id="usrnm" runat="server" />
      </div>
        <div class="input-container">
    <i class="fa fa-envelope icon"></i>
    <input class="input-field" type="text" placeholder="Email" name="email" id="email" runat="server"/>
  </div>
  <div class="input-container">
    <i class="fa fa-key icon"></i>
    <input class="input-field" type="password" placeholder="Password" name="psw" id="psw" runat="server"/>
  </div>
          <td>
              <asp:Button ID="btn" class="btn" runat="server" Text="Register" OnClick="btn_Click" OnClientClick="return validation()"/>
          </td>
             </center>
        <table style="width:100%">
         <tr>
                <td style="text-align:center; background-color: red; height:30px;">
                     Copyright Akiko Sherman Infotech Pvt Ltd 2022.
                </td>
            </tr>
       </table>
    </form>
</body>
</html>
