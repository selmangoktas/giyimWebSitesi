<%@ Page Title="" Language="C#" MasterPageFile="~/kPanel/MasterPage.master" AutoEventWireup="true" CodeFile="duyuruEkle.aspx.cs"  Inherits="kpannel_haberEkle" ValidateRequest="false" %>

<%@ Register assembly="FredCK.FCKeditorV2" namespace="FredCK.FCKeditorV2" tagprefix="FCKeditorV2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
      <asp:Label ID="uyari" runat="server" 
          Text="Bilgi giriniz." Font-Bold="True" Font-Names="Arial" 
          Font-Size="Medium" ForeColor="#FF3300" Visible="False"></asp:Label>
  
  <br />
      <table width="100%" class="style1">
           
          <tr>
              <td width="14%" align="left" valign="top">
    <asp:Label ID="Label1" runat="server" Text="Duyuru Türü"></asp:Label>
              </td>
              <td width="1%" align="left" valign="top">
                  :</td>
              <td width="85%" align="left" valign="top">

                  <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="26px" 
                      RepeatDirection="Horizontal" Width="329px">
                      <asp:ListItem Selected="True" Value="1">Haberler</asp:ListItem>
                      <asp:ListItem Value="2">Duyurular</asp:ListItem>
                      <asp:ListItem Value="3">Etkinlik</asp:ListItem>
                  </asp:RadioButtonList>
              </td>
          </tr>
          
          
          <tr>
              <td width="14%" align="left" valign="top">
    <asp:Label ID="Label2" runat="server" Text="Duyuru Baþlýk"></asp:Label>
              </td>
              <td width="1%" align="left" valign="top">
                  :</td>
              <td width="85%" align="left" valign="top">

       <FCKeditorV2:FCKeditor ID="haberBaslik" runat="server"  Width="100%" Height="100px" 
          ToolbarSet="">
</FCKeditorV2:FCKeditor>


              </td>
          </tr>
          <tr>
              <td align="left" valign="top">
  
    <asp:Label ID="Label3" runat="server" Text="Duyuru Konusu"></asp:Label>
              </td>
              <td align="left" valign="top">
                  :</td>
              <td align="left" valign="top">
      



    <FCKeditorV2:FCKeditor ID="haber_konusu" runat="server"  Width="100%" Height="400px" 
          ToolbarSet="">
</FCKeditorV2:FCKeditor>


      
              </td>
          </tr>
          <tr>
              <td align="left" valign="top">
&nbsp;Onay / Ýptal</td>
              <td align="left" valign="top">
                  :</td>
              <td align="left" valign="top">
  
   
    <asp:DropDownList ID="haber_onay" runat="server">
        <asp:ListItem Selected="True" Value="-1">Lütfen Seçiniz</asp:ListItem>
        <asp:ListItem Value="0">Ýptal</asp:ListItem>
        <asp:ListItem Value="1">Onay</asp:ListItem>
    </asp:DropDownList>
    
    <asp:CheckBox ID="cekBalim" runat="server"/>
    
              </td>
          </tr>
          <tr>
              <td align="left" valign="top">&nbsp;
                  </td>
              <td align="left" valign="top">&nbsp;
                  </td>
              <td align="left" valign="top">

      

    <asp:Button ID="haber_button" runat="server" Text="Ekle" onclick="Button1_Click" 
                      Width="105px"/>

              </td>
          </tr>
      </table>



      

</asp:Content>

