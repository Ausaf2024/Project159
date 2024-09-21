<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="WebApplication1.Employee" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Employeetable </title>
    <link rel="icon" href="images/logo1.png"/>
    <script>
        function validation() {
            let name = document.getElementById("txtname").value;
            let city = document.getElementById("txtcity").value;
            let state = document.getElementById("txtstate").value;
            let phone = document.getElementById("txtphoneno").value;
            let salary = document.getElementById("txtsalary").value;
            let age = document.getElementById("txtage").value;
           
            if (name ===null || name === ""){
                alert("plz enter tha name");
                    return false;
            }
             if (city === null || city === "") {
                alert("plz enter tha city");
                return false;
            }
             if (state === null || state === "") {
                alert("plz enter the state");
                return false;
            }
             if (phone === null || phone === "") {
                alert("plz enter the phone");
                return false;
            }
             if (salary === null || salary ==="") {
                alert("plz enter the salary");
                return false;
            }
             if (age === null || age === "") {
                alert("plz enter the age");
                return false;
             }
        }
    </script>
</head>
<body>
    <form class="fome" runat="server">
        <h1 style="text-align:center"><b>Welcome to the Employee Table</b></h1>
        <center>
   <table style="background-color:springgreen; width:80%;">
       <tr>
           <td >Name:</td>
           <td ><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
       </tr>
        <tr>
           <td>City:</td>
           <td><asp:TextBox ID="txtcity" runat="server"></asp:TextBox></td>
       </tr>
        <tr>
           <td>State:</td>
           <td><asp:TextBox ID="txtstate" runat="server"></asp:TextBox></td>
       </tr>
       <tr>
           <td>Phone No:</td>
           <td><asp:TextBox ID="txtphoneno" runat="server"></asp:TextBox></td>
       </tr>
       <tr>
           <td>Salary:</td>
           <td><asp:TextBox ID="txtsalary" runat="server"></asp:TextBox></td>
       </tr>
       <tr>
           <td>Age:</td>
           <td><asp:TextBox ID="txtage" runat="server"></asp:TextBox></td>
       </tr>
      <tr>
          <td><label>Gender</label></td>

          <td><asp:DropDownList ID="gender" runat="server">
              <asp:ListItem Value="Male">Male</asp:ListItem>
              <asp:ListItem Value="Female">Female</asp:ListItem>
              </asp:DropDownList></td>
          </tr>

              <tr>
           <td></td>
       <td ><asp:button id="btnsave" runat="server" Text="Save" OnClick="btnsave_Click" OnClientClick="return validation()"></asp:button></td>
           </tr>
       </table>
         </center>
        &nbsp;
        <center>
        <asp:GridView ID="grd" runat="server" OnRowEditing="grd_RowEditing" OnRowCancelingEdit="grd_RowCancelingEdit" OnRowDeleting="grd_RowDeleting1" AutoGenerateColumns="False" DataKeyNames="id" OnRowUpdating="grd_RowUpdating" CellPadding="4" ForeColor="#333333" GridLines="None" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Name" ItemStyle-Width="130">
                    <ItemTemplate>
                        <asp:Label ID="lblname" runat="server" Text='<%#Eval("Name") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtname" runat="server" Text='<%#Eval("Name") %>'></asp:TextBox>
                    </EditItemTemplate>

<ItemStyle Width="130px"></ItemStyle>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="City" ItemStyle-Width="100">
                    <ItemTemplate>
                        <asp:Label ID="lblcity" runat="server" Text='<%#Eval("city") %>'></asp:Label>
                    </ItemTemplate>
                     <EditItemTemplate>
                        <asp:TextBox ID="txtcity" runat="server" Text='<%#Eval("City") %>'></asp:TextBox>
                    </EditItemTemplate>

<ItemStyle Width="100px"></ItemStyle>
                </asp:TemplateField>

                 <asp:TemplateField HeaderText="State" ItemStyle-Width="100">
                    <ItemTemplate>
                        <asp:Label ID="lblstate" runat="server" Text='<%#Eval("state") %>'></asp:Label>
                    </ItemTemplate>
                      <EditItemTemplate>
                        <asp:TextBox ID="txtState" runat="server" Text='<%#Eval("State") %>'></asp:TextBox>
                    </EditItemTemplate>

<ItemStyle Width="100px"></ItemStyle>
                </asp:TemplateField>

                 <asp:TemplateField HeaderText="Phone" ItemStyle-Width="130">
                    <ItemTemplate>
                        <asp:Label ID="lblphone" runat="server" Text='<%#Eval("phone") %>'></asp:Label>
                    </ItemTemplate>
                      <EditItemTemplate>
                        <asp:TextBox ID="txtphone" runat="server" Text='<%#Eval("phone") %>'></asp:TextBox>
                    </EditItemTemplate>

<ItemStyle Width="130px"></ItemStyle>
                </asp:TemplateField>

                 <asp:TemplateField HeaderText="Salary" ItemStyle-Width="130">
                    <ItemTemplate>
                        <asp:Label ID="lblsalary" runat="server" Text='<%#Eval("salary") %>'></asp:Label>
                    </ItemTemplate>
                      <EditItemTemplate>
                        <asp:TextBox ID="txtsalary" runat="server" Text='<%#Eval("salary") %>'></asp:TextBox>
                    </EditItemTemplate>

<ItemStyle Width="130px"></ItemStyle>
                </asp:TemplateField>

                 <asp:TemplateField HeaderText="Age" ItemStyle-Width="80">
                    <ItemTemplate>
                        <asp:Label ID="lblage" runat="server" Text='<%#Eval("age") %>'></asp:Label>
                    </ItemTemplate>
                      <EditItemTemplate>
                        <asp:TextBox ID="txtage" runat="server" Text='<%#Eval("age") %>'></asp:TextBox>
                    </EditItemTemplate>

<ItemStyle Width="80px"></ItemStyle>
                </asp:TemplateField>

                 <asp:TemplateField HeaderText="Gender" ItemStyle-Width="80">
                    <ItemTemplate>
                        <asp:Label ID="lblgender" runat="server" Text='<%#Eval("gender") %>'></asp:Label>
                    </ItemTemplate>
                      <EditItemTemplate>
                        <asp:TextBox ID="txtgender" runat="server" Text='<%#Eval("gender") %>'></asp:TextBox>
                    </EditItemTemplate>

<ItemStyle Width="80px"></ItemStyle>
                </asp:TemplateField>

               <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true"
                    ItemStyle-Width="150">
<ItemStyle Width="150px"></ItemStyle>
                </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        </form>
    </center>
  </body>
  </html>
