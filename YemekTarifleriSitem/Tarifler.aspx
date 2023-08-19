<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="YemekTarifleriSitem.Tarifler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style19 {
            width: 283px;
            height: 34px;
        }
        .auto-style20 {
            width: 130px;
            height: 34px;
        }
        .auto-style21 {
            font-size: x-small;
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
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style26"  Text="+" Width="40px" OnClick="Button2_Click" />
                    </strong></td>
                <td class="auto-style21"><strong>ONAY BEKLEYEN TARİF ÖNERİ LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" BackColor="#5E9FEE" Height="212px" Width="396px">
            <ItemTemplate>
                <table class="auto-style22">
                    <tr>
                        <td class="auto-style20">
                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("TarifAd")%>'></asp:Label>
                        </td>
                        <td class="auto-style19">
                            
                            <a href="TarifOneriDetay.aspx?Tarifid=<%#Eval("Tarifid")%>"><asp:Image ID="Image5" runat="server" CssClass="auto-style29" Height="35px" ImageUrl="~/resimler/öneriikon.png" Width="32px" /></a>
                            &nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
     <asp:Panel ID="Panel2" runat="server" BackColor="Silver">
        <table class="auto-style14">
            <tr>
                <td class="auto-style27"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style25" Text="-" Width="40px" OnClick="Button3_Click"  />
                    </strong></td>
                <td class="auto-style24"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style26"  Text="+" Width="40px" OnClick="Button4_Click"  />
                    </strong></td>
                <td class="auto-style21"><strong>ONAYLANAN TARİF ÖNERİ LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
     <asp:Panel ID="Panel3" runat="server">
        <asp:DataList ID="DataList1" runat="server" BackColor="#5E9FEE" Height="212px" Width="396px">
            <ItemTemplate>
                <table class="auto-style22">
                    <tr>
                        <td class="auto-style20">
                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("TarifAd")%>'></asp:Label>
                        </td>
                        
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
