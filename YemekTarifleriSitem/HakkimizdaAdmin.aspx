<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="YemekTarifleriSitem.HakkimizdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style19 {
        height: 39px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="Silver">
        <table class="auto-style14">
            <tr>
                <td class="auto-style27"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style25" Text="-" Width="40px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style24"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style26"  Text="+" Width="40px" OnClick="Button2_Click1"   />
                    </strong></td>
                <td>HAKKIMIZDA</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style14">
            <tr>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox1" runat="server" Height="204px" Width="383px" TextMode="MultiLine"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="GÜNCELLE" Width="158px" OnClick="Button3_Click" />
                </td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>
