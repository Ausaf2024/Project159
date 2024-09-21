<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Aboutus.aspx.cs" Inherits="WebApplication1.Aboutus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
   

    <div class="row">
    <div class="col-lg-4">  
        <h3>Download Photos</h3>
        <p>Download DP Wallet app for your PC, Android, or iOS to create, send and receive DP. 
          You can create multiple wallets .</p>
    
      <img src ="images/cardimage.jpg" class="rounded" alt="Cinque Terre" width="304" height="236" style="margin-left:50px;"> 
      </div>

      <div class="col-lg-4">
      <h3>youtub video </h3>
      <p>Once the app is downloaded you can add the DP you’ve already created or exchanged via credit card.</p>
     
     <iframe width="320" height="240" src="https://youtube.com/embed/n1aBB8wf_k4"></iframe>
           </div>
         
         <%-- <button onclick="playPause()">Play/Pause</button> 
  <button onclick="makeBig()">Big</button>
  <button onclick="makeSmall()">Small</button>
  <button onclick="makeNormal()">Normal</button>
     --%>
      <div class="col-sm-4">
      <h3>Police</h3>        
      <p>The process of sending DP is very easy. In two words, 
          you need to enter receiver’s DP address, specify the amount, 
         </p>
       <img src="images/img8.jpg" class="rounded" width="304" height="236"> 
      </div>
          </div>
</asp:Content>
