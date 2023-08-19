<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="YemekTarifleriSitem.Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style19 {
            width: 121px;
            height: 25px;
        }

        .auto-style21 {
            height: 25px;
            text-align: right;
        }

        .auto-style22 {
            width: 100%;
            height: 30px;
        }

        .auto-style24 {
            width: 69px;
        }

        .auto-style25 {
            font-weight: bold;
            font-size: medium;
        }

        .auto-style26 {
            font-size: medium;
        }

        .auto-style27 {
            width: 40px;
        }

        .auto-style29 {
            width: 71px;
        }

        .auto-style31 {
            width: 193px;
        }

        .auto-style32 {
            width: 193px;
            text-align: right;
        }

        .auto-style33 {
            width: 33px;
        }

        .auto-style34 {
            margin-left: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="Silver">
        <table class="auto-style14">
            <tr>
                <td class="auto-style27"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style25" OnClick="Button1_Click" Text="-" Width="40px" />
                </strong></td>
                <td class="auto-style24"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style26" OnClick="Button2_Click" Text="+" Width="40px" />
                </strong></td>
                <td><strong>KATEGORİ LİSTESİ</strong></td>
            </tr>
        </table>

    </asp:Panel>
    <div>


        <asp:Panel ID="Panel4" runat="server">
            <asp:DataList ID="DataList2" runat="server" BackColor="#5E9FEE" Width="396px">
                <ItemTemplate>
                    <table class="auto-style22">
                        <tr>
                            <td class="auto-style19">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                            </td>
                            <td class="auto-style21">
                                <a href="Kategoriler.aspx?Kategoriid=<%#Eval("Kategoriid")%>&islem=sil">      <%--Silme işlemi için islem adında parametre tanımladık --%>
                                    <asp:Image ID="Image4" runat="server" Height="22px" ImageUrl="~/resimler/DELETEPNG.png" /></a>
                            </td>
                            <td class="auto-style21"><a href="KategoriDüzenle.aspx?Kategoriid=<%#Eval("Kategoriid")%>">
                                <asp:Image ID="Image5" runat="server" Height="27px"
                                    ImageUrl="~/resimler/updatepng.jpg" /></a>

                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" BackColor="Silver">
            <table class="auto-style14">
                <tr>
                    <td class="auto-style33">
                        <strong>
                            <asp:Button ID="Button3" runat="server" CssClass="auto-style26" OnClick="Button3_Click" Text="-" Width="40px" />
                        </strong>
                    </td>
                    <td class="auto-style29">
                        <strong>
                            <asp:Button ID="Button4" runat="server" CssClass="auto-style26" OnClick="Button4_Click" Text="+" Width="40px" />
                        </strong>
                    </td>
                    <td><strong>KATEGORİ EKLEME</strong></td>
                </tr>
            </table>
        </asp:Panel>
    </div>
    <asp:Panel ID="Panel3" runat="server">
        <table class="auto-style14">
            <tr>
                <td class="auto-style31">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style32">KATEGORİ AD:</td>
                <td>
                    <asp:TextBox ID="TxtKategoriAd" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style32">KATEGORİ İKON:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style34" Width="189px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td><strong>
                    <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style25" Text="Ekle" Width="62px" OnClick="BtnEkle_Click" />
                </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
