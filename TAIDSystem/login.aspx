<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Home.Master" CodeBehind="login.aspx.vb" Inherits="TAIDSystem.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table width="100%" style="height: 300px">
   <tr >
   <td rowspan="3" style="width: 216px">
       <img src="images/Lab_Left.bmp" style="width: 254px; height: 398px; border-left-color: #006666; border-bottom-color: #006666; border-top-style: solid; border-top-color: #006666; border-right-style: solid; border-left-style: solid; border-right-color: #006666; border-bottom-style: solid;" /></td>
   <td style="width: 274px; vertical-align: top;">
       <img src="images/Lab_Bot.png" style="width: 353px;
           height: 108px; border-left-color: #006666; border-bottom-color: #006666; border-top-style: solid; border-top-color: #006666; border-right-style: solid; border-left-style: solid; border-right-color: #006666; border-bottom-style: solid;" /></td>
       <td rowspan="3" style="width: 254px">
           <img src="images/Lab_Right.png" style="width: 234px; height: 402px" /></td>
   </tr>
   <tr >
   <td style="width: 274px; height: 144px; vertical-align: text-top; background-color: #ccccff; border-left-color: #336666; border-bottom-color: #336666; border-top-style: solid; border-top-color: #336666; border-right-style: solid; border-left-style: solid; border-right-color: #336666; border-bottom-style: solid;">
       &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
       <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial CE" Text="Login" BorderColor="#804000" BorderStyle="Groove"></asp:Label>
       <br />
       <br />
       <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="UserId:"></asp:Label>
       &nbsp; &nbsp; &nbsp;<asp:TextBox ID="txtuid" runat="server"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuid"
           ErrorMessage="*"></asp:RequiredFieldValidator><br />
       <br />
       <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Password"></asp:Label>
       &nbsp;
       <asp:TextBox ID="pwd" runat="server" TextMode="Password"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pwd"
           ErrorMessage="*"></asp:RequiredFieldValidator><br />
       &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
       &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
       &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
       &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
       &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
       &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
       &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
       <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Italic="True"
           Font-Size="14pt" Height="1px" NavigateUrl="~/customer/customerreg.aspx" Style="position: static"
           Width="75px">Sign Up</asp:HyperLink>
       &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
       &nbsp; &nbsp; &nbsp;
       &nbsp; &nbsp; &nbsp;<asp:Button ID="signin" runat="server" Text="SignIn" Font-Bold="True"  style="position: static" BackColor="#66FFFF" ForeColor="#333366" /><br />
   </td>
   </tr>
   <tr >
   <td style="width: 274px; height: 76px;" rowspan="3">
       <img src="images/Lab_Top.png" style="border-left-color: #336666; border-bottom-color: #336666;
           width: 358px; border-top-style: solid; border-top-color: #336666; border-right-style: solid;
           border-left-style: solid; height: 80px; border-right-color: #336666; border-bottom-style: solid" /></td>
   </tr>
 </table>

</asp:Content>
