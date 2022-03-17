<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Home.Master" CodeBehind="ContactUs.aspx.vb" Inherits="TAIDSystem.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%-- <asp:Panel ID="Panel1" runat="server" BorderColor="#003366" BorderStyle="Ridge" 
        BorderWidth="4px" style="z-index: 1; left: 49px; top: 267px; position: absolute; height: 523px; width: 700px" 
        BackColor="#FFCCCC">--%>
    <asp:Panel ID="Panel1" runat="server" Height="379px" Width="792px" BackColor="#FFC0C0">
    
        <asp:Label ID="Label2" runat="server" Text="Contact Us" style="position :inherit; top: 17px; left: 143px;" Font-Bold="True" 
            Font-Size="XX-Large" Font-Underline="True" ForeColor="#0000CC"></asp:Label>
        <asp:Panel ID="Panel2" runat="server" style="z-index: 1; left: 141px; top: 65px; position: inherit; height: 300px; width: 650px">
            <table class="style5" style="color: #003366">
                <tr>
                    <td class="style7">
                        <strong>SATARA</strong>&nbsp;<strong>: </strong>Plot-10,
                        <br />
                        Bhavani Peth, Rajpath
                        <br />
                        Near Rajwada
                        <br />
                        SATARA - 415002.<br />
                        Ph:(02162) 25627290, 25632147, 25632148,
                        <br />
                        E-mail : <a href="mailto:taid@gmail.com">taid@gmail.com</a>
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </asp:Panel>
    <p>
        <br />
    
</asp:Content>
