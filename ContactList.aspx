<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactList.aspx.cs" Inherits="ContsctList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
         margin: auto;
         width: 60%;
         border: 5px solid #1f1f1f;   
        }
        #footer {
           border-top: 3px solid #1a1a1a;
        }

        .auto-style4 {
            color: #33CC33;
        }
        .auto-style5 {
            color: #000000;
            font-size: x-large;
        }
        .newStyle1 {
        }
        .auto-style6 {
            color: #000000;
        }
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            width: 472px;
        }
        .auto-style9 {
            color: #99FFCC;
            font-size: large;
        }
        #form1 {
            background-color: #999999;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style4">
    
        <span class="auto-style9">&nbsp;&nbsp;
    
        SportsPro - Sports management software for sports enthusiast</span><br />
        <br />
        <br />
        <strong><span class="auto-style5">&nbsp;&nbsp; Contact List -&nbsp; </span><span class="auto-style6">Manage your contact list</span></strong></div>
        <p>
            &nbsp;</p>
        <table class="auto-style7">
            <tr>
                <td class="auto-style8">&nbsp;&nbsp; Contact list:</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8" rowspan="6">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ListBox ID="ListBox1" runat="server" Height="118px"  Width="435px"></asp:ListBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Remove Contact" Width="152px" OnClick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Empty List" Width="150px" OnClick="Button3_Click" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    &nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Select Additional Customer" Width="190px" OnClick="Button1_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
    <div id="footer"  style="background-color: #999966">
            <strong>&copy;2016 - COMP2139- SportsPro</strong>
    </div>
</body>
    

</html>
