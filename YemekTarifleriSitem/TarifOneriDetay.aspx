<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOneriDetay.aspx.cs" Inherits="YemekTarifleriSitem.TarifOneriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style19 {
            height: 25px;
        }
        .auto-style21 {
            height: 25px;
            font-size: medium;
            width: 170px;
        }
        .auto-style23 {
            font-size: medium;
            width: 170px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style15">
              <tr>
                <td class="auto-style23">&nbsp;</td>
                <td>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style23"><strong>Tarif Ad:</strong></td>
                <td>
                    <asp:TextBox ID="TxtTarifAd" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23"><strong>Tarif Malzemeler:</strong></td>
                <td>
                    <asp:TextBox ID="TxtTarifMalzeme" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23"><strong>Yapılış:</strong></td>
                <td class="auto-style24">
                    <asp:TextBox ID="TxtYapilis" runat="server" Height="162px"  TextMode="MultiLine" Width="217px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23"><strong>Tarif Resim:</strong></td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="211px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style21"><strong>Tarif Öneren:</strong></td>
                <td class="auto-style19">
                    <asp:TextBox ID="TxtTarifOneren" runat="server" Width="203px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23"><strong>Öneren Mail:</strong></td>
                <td>
                    <asp:TextBox ID="TxtOnerenMail" runat="server" Width="203px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">Kategori:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
          
              <tr>
                  <td class="auto-style23">&nbsp;</td>
                  <td>
                      <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Onayla" />
                  </td>
              </tr>
          
        </table>
    </asp:Panel>
</asp:Content>
