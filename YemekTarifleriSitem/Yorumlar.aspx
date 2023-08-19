<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="YemekTarifleriSitem.Yorumlar" %>

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

        .auto-style22 {
            width: 100%;
            height: 30px;
        }

        .auto-style19 {
            width: 121px;
            height: 25px;
        }

        .auto-style21 {
            height: 25px;
            text-align: right;
        }

        .auto-style28 {
            width: 137px;
        }

        .auto-style29 {
            margin-left: 7px;
        }

        .auto-style30 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" BackColor="Silver">
            <table class="auto-style14">
                <tr>
                    <td class="auto-style27"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style25" Text="-" Width="40px" OnClick="Button1_Click" />
                    </strong></td>
                    <td class="auto-style24"><strong>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style26" Text="+" Width="40px" OnClick="Button2_Click" />
                    </strong></td>
                    <td><strong>ONAYLI YORUM LİSTESİ</strong></td>
                </tr>
            </table>
        </asp:Panel>
        <div>


            <asp:Panel ID="Panel4" runat="server">
                <asp:DataList ID="DataList2" runat="server" BackColor="#5E9FEE" Width="396px" Height="212px">
                    <ItemTemplate>
                        <table class="auto-style22">
                            <tr>
                                <td class="auto-style28">
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                                </td>
                                <td class="auto-style30"></a>
                                    <asp:Image ID="Image4" runat="server" Height="28px" ImageUrl="~/resimler/DELETEPNG.png" Width="37px" />
                                </td>
                                <td class="auto-style30">
                                    <asp:Image ID="Image5" runat="server" Height="28px" ImageUrl="~/resimler/updatepng.jpg" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </asp:Panel>

        </div>
    </div>
    <div>
        <asp:Panel ID="Panel5" runat="server" BackColor="Silver">
            <table class="auto-style14">
                <tr>
                    <td class="auto-style27"><strong>
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style25" Text="-" Width="40px" OnClick="Button3_Click" />
                    </strong></td>
                    <td class="auto-style24"><strong>
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style26" Text="+" Width="40px" OnClick="Button4_Click" />
                    </strong></td>
                    <td><strong>ONAYSIZ YORUM LİSTESİ</strong></td>
                </tr>
            </table>

        </asp:Panel>
    </div>
    <div>
        <asp:Panel ID="Panel2" runat="server">
            <asp:DataList ID="DataList3" runat="server" BackColor="#5E9FEE" Width="396px" Height="212px">
                <ItemTemplate>
                    <table class="auto-style22">
                        <tr>
                            <td class="auto-style19">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </td>
                            <td class="auto-style21"></a>
                                <a href="Yorumlar.aspx?Yorumid=<%#Eval("Yorumid")%>&islem=sil">
                                    <asp:Image ID="Image2" runat="server" Height="28px" ImageUrl="~/resimler/DELETEPNG.png" /></a> <%--Silme işlemi için islem adında parametre tanımladık --%>
                            </td>
                            <td class="auto-style21">
                                <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid")%>">
                                    <asp:Image ID="Image3" runat="server" Height="26px" ImageUrl="~/resimler/updatepng.jpg" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
    </div>
</asp:Content>
