<%@ Page Language="C#"AutoEventWireup="true"CodeBehind="Homepage.aspx.cs"Inherits="Project159.Homepage"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Homepage</title>
   <script>
    function light(sw) {
            var pic;
            if (sw == 0) {
            pic = "Images/Bulboff.jpg"
            } else if(sw==1) {
             pic = "Images/Bulbon.jpg"
            }
            document.getElementById('myImage').src=pic;
            }
   </script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
     
  </head>
  <body>
      <form id="form1" runat="server">
    <div style="background-color:gray; padding:10px; text-align:center;font-size:xx-large;">
        Welcome To Tha Home Page 
       <div  style="text-align:right; font-size:large;"><asp:button ID="btnloged" runat="server" Text="Logout"  OnClick="btnloged_Click" BackColor="Red" BorderColor="White"></asp:button></div>
    </div>
        <div><h3><marquee>This is my first website</marquee></h3></div>
    <div class="images" style="text-align:center;">
          <img src="images/photo1.jpg" alt="images" height="300px" width="400"/>
          <img src="images/photo2.jpg" alt="images" height="300px" width="400"/>
          <img src="images/photo3.jpg" alt="images" height="300px" width="400"/>
    </div>                                                  
    <br/>
 <table style="text-align:center; width:100%; ">  
    <tr>
    <td style="background-color:aquamarine;" ><b>Step1.</b> The Government of India is responsible for ensuring the defence of India and every part thereof. The Supreme Command of the Armed Forces vests in the President. The responsibility for national defence rests with the Cabinet. This is discharged through the Ministry of Defence, which provides the policy framework and wherewithal to the Armed Forces to discharge their responsibilities in the context of the defence of the country. The Raksha Mantri (Defence Minister) is the head of the Ministry of Defence. The principal task of the Defence Ministry is to obtain policy directions of the Government on all defence and security related matters and communicate them for implementation to the Services Headquarters, Inter-Services Organisations, Production Establishments and Research and Development Organisations. It is also required to ensure effective implementation.</td>
    <td style="background-color:goldenrod;"><b>Step2.</b> . A Military Department was created in the Supreme Government of the East India Company at Kolkata into the year 1776, having the main function to sift and record orders relating to the Army issued by various Departments of the Govt of East India Co. The Military Department initially functioned as a branch of the Public Department and maintained a list of Army personnel. With the Charter Act of 1833 the Secretariat of the Government of East India Company was reorganised into four Departments, including a Military Department, each headed by a Secretary to the Government. The Army in the Presidencies of Bengal, Bombay & Madras functioned as respective Presidency Army till April 1895, when the Presidency Armies were unified into a single Indian Army. For administrative convenience, it was divided into four Commands viz. Punjab (including the North West Frontier). </td>
    <td style="background-color:red;" ><b>Step3.</b> .After independence Ministry of Defence was created under the charge of a Cabinet Minister, and, each Service was placed under its own Commander-in-Chief. In 1955, the Commanders-in-Chief were renamed as the Chief of the Army Staff, the Chief of the Naval Staff and the Chief of the Air Staff. In November 1962, a Department of Defence Production was set up to deal with research, development and production of defence equipment. In November 1965, the Department of Defence Supplies was created for planning and execution of schemes for import substitution of defence requirements. These two Departments were later merged to form the Department of Defence Production and Supplies. ­ In 2004, the name of Department of Defence Production and Supplies was changed to Department of Defence Production. In 1980, the Department of Defence Research and Development was created. </td>
    </tr>
 </table> 
 
    <img id="myImage" src="Images/Bulboff.jpg"  width="50" height="100;" >

 <div>
  <button type="button" onclick="light(1)">Light On</button>
  <button type="button" onclick="light(0)">Light Off</button>
     </div>
     <div  style="background-color:powderblue; padding:10px; text-align:center;font-size:xx-large; margin-top:20%;">
     Copyright Akiko sherman infotech @2022
     </div>
     </form>
</body>
</html>
