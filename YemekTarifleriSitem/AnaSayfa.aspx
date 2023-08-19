<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="YemekTarifleriSitem.AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 98%;
        }
        .auto-style15 {
            font-size: x-large;
        }
        .auto-style16 {
            color: #FFFF99;
        }
        .auto-style18 {
            height: 60px;
        }
        .auto-style19 {
            margin-right: 0px;
        }
        .auto-style20 {
            height: 60px;
            width: 237px;
        }
        .auto-style22 {
            width: 236px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p><asp:DataList ID="DataList2" runat="server" CssClass="auto-style19" Width="331px">
        <ItemTemplate>
            <table class="auto-style14">
                <tr>
                    <td class="auto-style20">
                        <strong style="background-color: #FFFF66">

                            <a href="YemekDetay.aspx?Yemekid=<%#Eval("Yemekid")%>"><asp:Label ID="Label3" runat="server" BackColor="#FFFF99" CssClass="auto-style15" Text='<%# Eval("YemekAd") %>'></asp:Label>
                                </a>

                        </strong>
                    </td>
                    <td class="auto-style18"></td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        <span class="auto-style16"><strong>Malzemeler:</strong></span>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        <span class="auto-style16"><strong>Yemek Tarifi:</strong></span>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style22"></td>
                     <td class="auto-style22"></td>
                     
                    
                </tr>
                 <tr>
                    <td class="auto-style22">
                        <asp:Image ID="Image2" runat="server" Height="155px" ImageUrl='<%# Eval("YemekResim") %>' Width="255px" />
                     </td>
                     <td class="auto-style22"></td>
                     
                    
                </tr>
                <tr>
                    <td class="auto-style22"><span class="auto-style16"><strong>&nbsp;Eklenme Tarihi:</strong></span> <strong><em>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        </em></strong>&nbsp;&nbsp; </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22"><span class="auto-style16"><strong>Puan:</strong></span> <strong><em>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        </em></strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
        </asp:DataList>
    </p>
<p>&nbsp;</p>
</asp:Content>
