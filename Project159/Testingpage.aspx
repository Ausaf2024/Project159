<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Testingpage.aspx.cs" Inherits="WebApplication1.Testingpage"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<head runat="server">
    <title>Goldfin || International</title>
    <link rel="icon" href="images/logo.png"/>
    <style>
       header{
            margin-top:0;
            text-align:center;
            width:100%;
            background-color:palegreen;
            padding:25px;
            }
       footer{
             margin-top:5%;
            text-align:center;
            width:100%;
            height:20px;
            background-color:palegreen;
            padding:25px;
             }
   .vertical-menu {
     margin-top:5px;
     }
 .vertical-menu a {
  background-color: #eee;
  color: black;
  display: block;
  padding: 12px;
  text-decoration: none;
  text-align:center;
  }
.vertical-menu a:hover {
  background-color: #ccc;
 }

.vertical-menu a.active {
  background-color: #04AA6D;
  color: white;
 }
 logo{
    text-align:left;
    }
row{
    margin-top:5px;
   }
</style>
</head>
<body style="background-image:url('images/homeimg.jpg')">
    <header>
       Welcome to the Company
     <div id="logo">
        <img class="logo" src="images/logo.png" alt="logo" style="height:50px; width:100px;text-align:left; "/>
        </div>
    </header>
    <div class="row">
        <div class="col-lg-3">
   <div class="vertical-menu">
  <a href="#" class="active">Home</a>
  <a href="#">Dashboard</a>
  <a href="#">BM States</a>
  <a href="#">MY Wallet</a>
  <a href="#">Top UP</a>
        <a href="#">My Network</a>
        <a href="#">Genealogy</a>
        <a href="#">Rank Poster</a>
        <a href="#">My Rank</a>
        <a href="#">Income Report</a> 
       <a href="#">Profile</a>
        <a href="#">Logout</a>
       </div>
      </div>
          
          <div class="col-lg-4">
<p style="margin-top:5px; background-color:powderblue;">The great new concept of earning huge amounts of money in a finite framework of time and effort .
It is a smart contract based program, which is Intelligent fully automated and highly secure with latest technology.
Our highly educated and skilled Developers are managing and upgrading this Program. All our servers are based on latest state of the art technology to Provide powerful customer support and services.
Gold Fin International is a Smart System conceptualised by seasoned marketing leaders and technocrats developed by highly skilled and seasoned developers.</p>
            </div>   
             <div  class="col-lg-4">
            <p style="background-color:red; margin-top:5px;">The great new concept of earning huge amounts of money in a finite framework of time and effort .
It is a smart contract based program, which is Intelligent fully automated and highly secure with latest technology. 
Our highly educated and skilled Developers are managing and upgrading this Program.
All our servers are based on latest state of the art technology to Provide powerful customer support and services.
Gold Fin International is a Smart System conceptualised by seasoned marketing leaders and technocrats developed by highly skilled and seasoned developers</p>
                </div>
                </div>
           
        <div class="row" >
        <div class="col-lg-3" style="margin-top:5px;">
        </div>
           
         <div class="col-lg-4"  style="margin-top:5px;">
              <asp:Image ID="image1" runat="server" Width="400px" Height="250px" ImageUrl="images/codingimg1.jpg" />
          </div>

             <div  class="col-lg-4" >
          <asp:Image ID="image2" runat="server" Width="400px" Height="250px" ImageUrl="images/codingimg2.jpg" />
        </div>
        </div>
        <footer>This Is A Footer</footer>
        </body>
        </html>
