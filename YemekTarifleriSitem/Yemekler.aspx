<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="YemekTarifleriSitem.Yemekler" %>


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

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="Silver">
        <table class="auto-style14">
            <tr>
                <td class="auto-style27"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style25"  Text="-" Width="40px" OnClick="Button1_Click1" />
                </strong></td>
                <td class="auto-style24"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style26"  Text="+" Width="40px" OnClick="Button2_Click1" />
                </strong></td>
                <td><strong>YEMEK LİSTESİ</strong></td>
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
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                            </td>
                            <td class="auto-style21">
                                <a href="Yemekler.aspx?Yemekid=<%#Eval("Yemekid")%>&islem=sil"> <%--Silme işlemi için islem adında parametre tanımladık --%>
                                    <asp:Image ID="Image4" runat="server" Height="22px" ImageUrl="~/resimler/DELETEPNG.png" /></a>
                            </td>
                            <td class="auto-style21"><a href="YemekDuzenle.aspx?Yemekid=<%#Eval("Yemekid")%>">
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
                            <asp:Button ID="Button3" runat="server" CssClass="auto-style26"  Text="-" Width="40px" OnClick="Button3_Click1" />
                        </strong>
                    </td>
                    <td class="auto-style29">
                        <strong>
                            <asp:Button ID="Button4" runat="server" CssClass="auto-style26" Text="+" Width="40px" OnClick="Button4_Click1" />
                        </strong>
                    </td>
                    <td><strong>YEMEK EKLEME</strong></td>
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
                <td class="auto-style32">YEMEK AD:</td>
                <td>
                    <asp:TextBox ID="TxtYemekAd" runat="server" Width="215px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style32">MALZEMELER:</td>
                <td>
                    <asp:TextBox ID="TxtMalzemeler" runat="server" Height="82px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td class="auto-style32">Tarif Görüntü:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="218px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style32">YEMEK TARİFİ:</td>
                <td>
                    <asp:TextBox ID="TxtYemekTarif" runat="server" Height="133px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style32">KATEGORİ:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="219px">
                    </asp:DropDownList>
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
