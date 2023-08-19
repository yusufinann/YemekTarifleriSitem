<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="YemekTarifleriSitem.Mesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style27 {
            width: 40px;
        }

        .auto-style25 {
            font-weight: bold;
            font-size: medium;
        }

        .auto-style24 {
            width: 69px;
        }

        .auto-style26 {
            font-size: medium;
        }

        .auto-style28 {
            width: 176px;
            height: 32px;
        }

        .auto-style29 {
            margin-left: 116px;
        }

        .auto-style32 {
            height: 32px;
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
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style26" Text="+" Width="40px" OnClick="Button2_Click" />
                </strong></td>
                <td><strong>MESAJ LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" BackColor="#5E9FEE" Width="396px" Height="212px">
            <ItemTemplate>
                <table class="auto-style22">
                    <tr>
                        <td class="auto-style28">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                        </td>

                        <td class="auto-style32">
                            <a href="MesajDetay.aspx?Mesajid=<%#Eval("Mesajid")%>">
                                <asp:Image ID="Image5" runat="server" Height="35px" ImageUrl="~/resimler/read-icon-14.jpg" CssClass="auto-style29" Width="42px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
