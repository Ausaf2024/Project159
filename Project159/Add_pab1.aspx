<%--<%--<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add_pab1.aspx.cs" Inherits=Add_pab1" ValidateRequest="false" %>
<%@ Register Src="~/admnis/admin/UP.ascx" TagName="UP" TagPrefix="uc1" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<%--<script type="text/javascript" language="javascript">
        function DisableBackButton() {
            window.history.forward()
        }
        DisableBackButton();
        window.onload = DisableBackButton;
        window.onpageshow = function (evt) { if (evt.persisted) DisableBackButton() }
        window.onunload = function () { void (0) }
</script>--%>

<%--<script language='Javascript'>
var upload_number = 2;
function addFileInput() {
  var d = document.createElement("div");
  var file = document.createElement("input");
  file.setAttribute("type", "file");
  file.setAttribute("name", "attachment"+upload_number);
  d.appendChild(file);
  document.getElementById("divst_upload").appendChild(d);
  upload_number++;
}--%>
</script>
<script src="rte.js"></script>
<script src="sample.js"></script>
<link href="sample.css" rel="stylesheet" />
<link href="style.css" rel="stylesheet" type="text/css" />
<link rel='stylesheet' type='text/css' href='../../comnUtils/styles.css' />
<script type="text/javascript" src="../../comnUtils/jquery.min.js"></script>
<%--<script language="JavaScript" src='../../comnUtils/jquery.min.js' type="text/javascript"></script>--%>
<script type="text/javascript" src="../../comnUtils/jquery-1.5.js"></script>
<%-- <script language="JavaScript" src="../../comnUtils/jquery-1.5.js" type="text/javascript"></script>--%>
<script language="JavaScript" src="../../comnUtils/jsValidatorv4.js" type="text/javascript"></script>
<script language="JavaScript" src="../../comnUtils/js-config.js" type="text/javascript"></script>
<script language="JavaScript" src="../../jquery.js" type="text/javascript"></script>

<%--<style>
    .hide1 {
        display: none;
    }
</style>--%>
<%--<body>
    <form id="form1" runat="server">
        <%--<asp:HiddenField ID="hdntotalStateFile" runat="server" Value="" />
        <asp:HiddenField ID="hdnid" runat="server" Value="" />
        <div style="width: 100%;">
            <uc1:UP ID="up1" runat="server" />
        </div>--%>
        <%--<div class="container">
            <div class="row">--%>
                <%--<div class="col-2">
                    <asp:Button ID="btnadd" runat="server" Text="Add New" OnClick="btnadd_Click" />
                </div>--%>
           <%--// </div>--%>
           <%-- <div class="row" id="divadd" runat="server" visible="false">
                <asp:FileUpload ID="FileUpload1" runat="server" Visible="true" Style="display: none" />--%>
                <%--<table id="table">

                    <tr>
                        <td>Select Year</td>
                        
                        <td>
                            <asp:DropDownList ID="ddlyear" runat="server"></asp:DropDownList>
                        </td>
                    </tr>

                    <tr>
                        <td>Select Type of Data </td>
                       
                        <td>
                            <asp:DropDownList ID="ddldata" runat="server" OnSelectedIndexChanged="ddltod_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr id="divstate" runat="server" visible="false">
                        <td>Select State
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlstate" runat="server"></asp:DropDownList>
                        </td>
                    </tr>

                     <tr id="divtopic" runat="server" visible="false">
                        <td>
                            Select Pab Topic
                        </td>
                        <td>
                            <asp:DropDownList ID="ddltopic" runat="server"></asp:DropDownList>
                        </td>
                    </tr>

                    <tr id="divadd" runat="server" visible="false">
                        <td >UploadFile</td>
                     
                <td><asp:FileUpload ID="FileUpload" runat="server" Visible="true" Style="display: none" /></td>
                   </tr>
                    <div id="a" runat="server"></div>
                    <tr id="divrtf" runat="server" visible="false">
                        <td>Details 
                        </td>
                        <td>
                            <textarea cols="80" id="editor1" name="editor1" rows="10" runat="server">
                             
		                        </textarea>
                            <script type="text/javascript">

                                        CKEDITOR.replace('editor1', {
                                            fullPage: true,
                                            allowedContent: true,
                                            extraPlugins: 'wysiwygarea'
                                        });
                            </script>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnsave" runat="server" Text="Save" OnClick="btnsave_Click" />
                        </td>
                    </tr>
                </table>--%>
          <%--  </div>--%>

            <%--<asp:GridView ID="GridView" runat="server" AutoGenerateColumns="false"
            DataKeyNames="id" OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit"
            OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" EmptyDataText="No records has been added."
            Width="450">
            <Columns>
                 <asp:TemplateField HeaderText="ID" ItemStyle-Width="150">
                  <ItemTemplate>
                  <asp:Label ID="lblid" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                  </ItemTemplate>
                  <EditItemTemplate>
                  <asp:TextBox ID="ddlid" runat="server" Text='<%# Eval("id") %>' Width="140"></asp:TextBox>
                  </EditItemTemplate>
                  </asp:TemplateField>

              <asp:TemplateField HeaderText="Year" ItemStyle-Width="150">
                  <ItemTemplate>
                  <asp:Label ID="lblYear" runat="server" Text='<%# Eval("Year") %>'></asp:Label>
                  </ItemTemplate>
                  <EditItemTemplate>
                  <asp:TextBox ID="ddlyear" runat="server" Text='<%# Eval("Name") %>' Width="140"></asp:TextBox>
                  </EditItemTemplate>
                  </asp:TemplateField>
              <asp:TemplateField HeaderText="Data" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lbldata" runat="server" Text='<%# Eval("Data") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="ddldata" runat="server" Text='<%# Eval("Data") %>' Width="140"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Topic" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lbltopic" runat="server" Text='<%# Eval("Topic") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="ddltopic" runat="server" Text='<%# Eval("Topic") %>' Width="140"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                 <asp:TemplateField HeaderText="State" ItemStyle-Width="150">
                  <ItemTemplate>
                  <asp:Label ID="lblstate" runat="server" Text='<%# Eval("State") %>'></asp:Label>
                  </ItemTemplate>
                  <EditItemTemplate>
                  <asp:TextBox ID="ddlstate" runat="server" Text='<%# Eval("State") %>' Width="140"></asp:TextBox>
                  </EditItemTemplate>
                  </asp:TemplateField>

                 <asp:TemplateField HeaderText="Details" ItemStyle-Width="150">
                  <ItemTemplate>
                  <asp:Label ID="lbldivrtf" runat="server" Text='<%# Eval("Details") %>'></asp:Label>
                  </ItemTemplate>
                  <EditItemTemplate>
                  <asp:TextBox ID="divrtf" runat="server" Text='<%# Eval("Details") %>' Width="140"></asp:TextBox>
                  </EditItemTemplate>
                  </asp:TemplateField>

                 <asp:TemplateField HeaderText="Upload_file" ItemStyle-Width="150">
                  <ItemTemplate>
                  <asp:Label ID="lblfile" runat="server" Text='<%# Eval("Details") %>'></asp:Label>
                  </ItemTemplate>
                  <EditItemTemplate>
                  <asp:TextBox ID="FileUpload" runat="server" Text='<%# Eval("Details") %>' Width="140"></asp:TextBox>
                  </EditItemTemplate>
                  </asp:TemplateField>

                <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true"
                    ItemStyle-Width="150"/>
                </Columns>
                </asp:GridView>
            --%>
       <%-- </div>
    </form>
</body>
</html>--%>


