  <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="WebApplication1.Signup1"%>
  <!DOCTYPE html>
  <html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
  <title>Signuppage</title>
  <link  rel="icon" href="images/logo2.png"/>
  <script>
        function validation(){
            let id = document.getElementById("Sponserid").value;
            let name = document.getElementById("Sponsername").value;
            let Email = document.getElementById("Email").value;
            let Mobile = document.getElementById("MobileNo").value;
            let pass = document.getElementById("Password").value;
            let Cit = document.getElementById("City").value;

            if (id === null || id === ""){
                alert("plz enter tha Sponserid");
                return false;
            }
            if (name === null || name === "") {
                alert("plz enter tha Sponsername");
                return false;
            }
            if (Email === null || Email === "") {
                alert("plz enter the emailid");
                return false;
            }
            if (Mobile === null || Mobile === "") {
                alert("plz enter the MobileNo");
                return false;
            }
            if (pass === null || pass === "") {
                alert("plz enter the Password");
                return false;
            }
            if (Cit === null || Cit === "") {
                alert("plz enter the city");
                return false;
            }
           }
     </script>
     </head>
     <body style="background-image:url('images/background1.jpg')">
     <h1 style="text-align:center"><b>Welcome To The New  User</b></h1>
     <center>
     <form id="form1" runat="server" style="background-color:palegreen; height:100px; width:50%;">
     <div class="fome-inline" >

     <label for="id">Sponserid:</label>
     <input type="id" class="form-control" placeholder="Sponserid" id="Sponserid" runat="server">

     <label for="name">Sponsername:</label>
     <input type="name" class="form-control" placeholder="Sponsername" id="Sponsername" runat="server"><br /><br />

     <label for="email">Emailid::</label>
     <input type="email" class="form-control" placeholder="Emailid" id="Email" runat="server">

     <label for="Mobile">Mobile No:</label>
     <input type="phoneno" class="form-control" placeholder="Mobile No" id="MobileNo" runat="server"><br /><br />

     <label for="password">Password:</label>
     <input type="password" class="form-control" placeholder="Password" id="Password" runat="server">
     
     <label for="city">EnterCity:</label>
     <input type="city" class="form-control" placeholder="EnterCity" id="City" runat="server" /><br /><br />
            
             <td><div style="background-color:red; color:black; height:25px; width:25%">
             <asp:linkbutton class="btn" ID="btnsave" runat="server" Text="Submit" button-type="linkbutton" 
                  OnClick="btnsave_Click" OnClientClick="return validation()"></asp:linkbutton>
               </div>
              </td>
             </div>
            </form>
           </center>
          </body>
         </html>
