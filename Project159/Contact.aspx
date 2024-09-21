<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication1.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
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
    </style>
    <script>
        function validation() {
            var username = document.getElementById("ContentPlaceHolder1_usrnm").value;
            var email = document.getElementById("ContentPlaceHolder1_email").value;
            var password = document.getElementById("ContentPlaceHolder1_psw").value;

            if (username === null || username === "") {
                alert(" befor plz enter tha name")
                return false;
            }
            if (email === null || email ==="") {
                alert("befor plz enter tha email")
                return false;
            }
            if (password === null || password === "") {
                alert("befor plz enter tha pasword")
                return false;
            }
        }
    </script>
     <marquee bgcolor="red" direction="Left">Last:Date:30:08:2022</marquee>
      <h2 style="text-align:center">Register Form</h2>
       <div class="container">
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
    <input class="input-field" type="password" placeholder="Password" name="psw" id="psw" runat="server" />
    </div>
          <td>
              <asp:Button ID="btn" class="btn" runat="server" Text="Register" OnClick="btn_Click" OnClientClick="return validation()"/>
          </td>
             </center>
         </div>
   </asp:Content>

