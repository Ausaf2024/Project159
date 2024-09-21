<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="firstpage.aspx.cs" Inherits="Project822.firstpage" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Firstpage</title>
    <link  rel="icon" href="images/logo3.png"/>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script>  
        function validateform(){  
            var name = document.getElementById("txtName").value;
            var age = document.getElementById("txtage").value;
            var address = document.getElementById("txtaddress").value;
           
            if (name===null || name===""){  
                alert("Name can't be blank");  
                return false;  
               }
              if (age === null || age === "") {
                alert("age can't be blank");  
                return false;  
            }
           if (address === null || address === ""){
                alert("address can't be blank");
                return false;
                }
              }
    </script> 
    <style>
        logo{
            float:left;
            margin-left:10px;
            }
    </style> 
</head>
<body style="background-image:url('images/banares5.jpg'); height:400px; width:100%">
    <form id="form1" runat="server">
      <marquee bgcolor="red" direction="Left" >Last:Date:30:September:2022</marquee>
        <center>
        <h1 style="text-align:center;background-color:DodgerBlue;">Registration for Student</h1>
        <table>
         <div id="logo">
          <a class="navbar-brand" href="/"><img class="logo3" src="images/logo3.png" alt="logo3" style="height:50px; width:100px;" /></a>
         </div>
        <tr>
        <td> Name:</td>
        <td><asp:Textbox ID="txtName" runat="server" Width="140"></asp:Textbox>
        </td>
        </tr>
        <tr> 
        <td>Age:</td>
        <td> <asp:TextBox ID="txtage" runat="server" Width="140"></asp:TextBox>
                 </td>
                 </tr>
                 <tr>
                 <td>  Address :</td>
                 <td>  <asp:TextBox ID="txtaddress" runat="server" Width="140"></asp:TextBox>
                 </td>
                 </tr>
                 <tr>
                 <td></td>
                 <td style="text-align:center;">
                <asp:Button ID="btsave" runat="server" Text="Save" BorderStyle="Double" BackColor="red"  OnClick="Insert" OnClientClick="return validateform()"></asp:Button>
                 </td>
                 </tr>
                 </table>
                
     <h1 style="text-align:center;background-color:DodgerBlue;">Akiko Sherman Infotech 2022</h1>
      
     <asp:ScriptManager ID="ScriptManager1" runat="server">
     </asp:ScriptManager>
     <div id="dvGrid" style="padding: 10px; width: 450px">
         
    <ContentTemplate>
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
            DataKeyNames="id" OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit"
            OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" EmptyDataText="No records has been added."
            Width="450px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White"/>
            <Columns>
              <asp:TemplateField HeaderText="Name" ItemStyle-Width="150">
                  <ItemTemplate>
                  <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                  </ItemTemplate>
                  <EditItemTemplate>
                  <asp:TextBox ID="txtName" runat="server" Text='<%# Eval("Name") %>' Width="140"></asp:TextBox>
                  </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
                  </asp:TemplateField>
              <asp:TemplateField HeaderText="Age" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblAge" runat="server" Text='<%# Eval("age") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtAge" runat="server" Text='<%# Eval("age") %>' Width="140"></asp:TextBox>
                    </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Address" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblAddress" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtAddress" runat="server" Text='<%# Eval("address") %>' Width="140"></asp:TextBox>
                    </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
                </asp:TemplateField>

                <asp:CommandField ButtonType="Link" HeaderText="Action" ShowEditButton="true" ShowDeleteButton="true"
                    ItemStyle-Width="150">
<ItemStyle Width="150px"></ItemStyle>
                </asp:CommandField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
              
            </ContentTemplate>
         </center>
          
         </form>
   
    </body>
</html>
