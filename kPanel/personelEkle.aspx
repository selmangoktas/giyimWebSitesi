<%@ Page Title="" Language="C#" MasterPageFile="~/kPanel/MasterPage.master" AutoEventWireup="true" CodeFile="personelEkle.aspx.cs" Inherits="yonetim_personelEkle" %>

<%@ Register assembly="FredCK.FCKeditorV2" namespace="FredCK.FCKeditorV2" tagprefix="FCKeditorV2" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

<table width="100%" style="width: 100%">
        <tr>
            <td style="width: 14%">&nbsp;</td>
            <td width="1%" align="center" valign="top">&nbsp;</td>
            <td width="85%">
                <asp:RadioButtonList ID="kadroSec" runat="server" RepeatDirection="Horizontal" 
                    Width="208px" Visible="False">
                    <asp:ListItem Selected="True" Value="1">Akademik</asp:ListItem>
                    <asp:ListItem Value="2">İdari</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td style="width: 19%">Makale Adı</td>
            <td align="center" valign="top"><strong>:
                </strong></td>
            <td>
                <asp:TextBox ID="personelAdi" runat="server" Height="22px" MaxLength="150" 
                    Width="268px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="personelAdi" ErrorMessage="Bu Alan Boş Geçilemez" 
                    Display="None" ValidationGroup="a"></asp:RequiredFieldValidator>
                <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                    runat="server" TargetControlID="RequiredFieldValidator1">
                </cc1:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
          <td valign="top"  style="width: 19%">Makale İçerik Sayfasi</td>
          <td align="center" valign="top"><strong>:</strong></td>
          <td>
              <FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server" Height="400px">
              </FCKeditorV2:FCKeditor>
            </td>
        </tr>
        <tr>
          <td style="width: 19%">&nbsp;</td>
          <td align="center" valign="top">&nbsp;</td>
          <td>
              <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                  Text="Personel Ekle" Width="128px" ValidationGroup="a" />
            </td>
        </tr>
    </table>
    
    
</asp:Content>

