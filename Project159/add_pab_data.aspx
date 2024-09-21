<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_pab_data.aspx.cs" Inherits="Project159.add_pab_data"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add_Pab_Data</title>
</head>
<script type="text/javascript" language="javascript">
        function DisableBackButton(){
        window.history.forward()
        }
        DisableBackButton();
        window.onload = DisableBackButton;
        window.onpageshow = function (evt) { if (evt.persisted) DisableBackButton() }
        window.onunload = function () { void (0) }
       </script>
       <script src="rte.js"></script>
       <script src="sample.js"></script>
       <link href="sample.css" rel="stylesheet" />
       <link href="style.css" rel="stylesheet" type="text/css" />
       <link rel='stylesheet' type='text/css' href='../../comnUtils/styles.css' />
       <script type="text/javascript" src="../../comnUtils/jquery.min.js"></script>
       <script type="text/javascript" src="../../comnUtils/jquery-1.5.js"></script>
       <script language="JavaScript" src="../../comnUtils/jsValidatorv4.js" type="text/javascript"></script>
       <script language="JavaScript" src="../../comnUtils/js-config.js" type="text/javascript"></script>
       <script language="JavaScript" src="../../jquery.js" type="text/javascript"></script>
    <body>
      <div style="background-color:greenyellow; text-align:center"><h1> Welcome to tha PAB </h1></div>
    <form id="form1" runat="server">
        <center>
        <div class="container">
            <div class="row">
                <table style="background-color:chocolate; width:80%; padding:20px;">
                    <td colspan="2">
                        <asp:Button ID="btnadd" runat="server" Text="Add New"/>
                    </td>
                    <tr>
                        <td>
                            Select Year:
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlyear" runat="server">
                               <%-- <asp:ListItem>Select Year:</asp:ListItem>--%>
                            </asp:DropDownList>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            Select Type of Data:
                        </td>
                        <td>
                            <asp:DropDownList ID="ddltod" runat="server"></asp:DropDownList>
                        </td>
                      </tr>
                        <tr>
                        <td>
                            Select State:
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlstate" runat="server"></asp:DropDownList>
                        </td>
                    </tr>
                     <tr id="divtopic" runat="server">
                        <td>
                            Select Pab Topic:
                        </td>
                        <td>
                            <asp:DropDownList ID="ddltopic" runat="server" AutoPostBack="true"></asp:DropDownList>
                        </td>
                      </tr>
                      <tr>
                        <td>
                            Upload:
                        </td>
                        <td>
                          <asp:FileUpload ID="FileUploadTopic" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Details: 
                        </td>
                        <td>
                            <textarea cols="80" id="editor1" name="editor1" rows="10" runat="server"></textarea>
                          <%--<script type="text/javascript">
                                CKEDITOR.replace('editor1', {
                                    fullPage: true,
                                    allowedContent: true,
                                    extraPlugins: 'wysiwygarea'
                                }); </script>--%>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnsave" runat="server" Text="Save" OnClick="btnsave_Click"  />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
       </center>
    </form>
 </body>
</html>
