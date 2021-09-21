<%@ Page Title="" Language="C#" MasterPageFile="~/kPanel/MasterPage.master" AutoEventWireup="true" CodeFile="personelDuzenle.aspx.cs" Inherits="yonetim_personelDuzenle" %>

<%@ Register assembly="FredCK.FCKeditorV2" namespace="FredCK.FCKeditorV2" tagprefix="FCKeditorV2" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 122px;
        }
        .style3
        {
            width: 2px;
        }
    </style>


 
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:cn1 %>" 
            SelectCommand="SELECT * FROM [personel] WHERE ([kadroTuru] = @kadroTuru) ORDER BY [adiSoyadi]">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="kadroTuru" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
      <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:cn1 %>" 
            SelectCommand="SELECT * FROM [personel] WHERE ([kadroTuru] = @kadroTuru) ORDER BY [adiSoyadi]">
            <SelectParameters>
                <asp:Parameter DefaultValue="2" Name="kadroTuru" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
        
      
         <table width="100%" class="style1">
            <tr>
                <td width="14%" align="left" valign="top" class="style2">
                    Makale Seçiniz</td>
                <td width="1%" align="center" valign="top" class="style3">
                    <span lang="tr">:</span></td>
                <td width="85%" align="left" valign="top">
                    
                    <asp:DropDownList ID="akademikSec" runat="server" DataSourceID="SqlDataSource1" 
                        DataTextField="adiSoyadi" DataValueField="id" AutoPostBack="True" 
                        Width="383px" onselectedindexchanged="akademikSec_SelectedIndexChanged" 
                        Height="25px" AppendDataBoundItems="True">
                        <asp:ListItem Value="Lütfen Seçiniz">Lütfen Seçiniz</asp:ListItem>
                    </asp:DropDownList>
                    
                </td>
            </tr>
            <tr>
                <td align="left" valign="top" class="style2">
                    &nbsp;</td>
                <td align="center" valign="top" class="style3">
                    <span lang="tr">:</span></td>
                <td align="left" valign="top">
                    <asp:DropDownList ID="idariSec" runat="server" DataSourceID="SqlDataSource2" 
                        DataTextField="adiSoyadi" DataValueField="id" AutoPostBack="True" 
                        Width="383px" onselectedindexchanged="idariSec_SelectedIndexChanged" 
                        Height="20px" AppendDataBoundItems="True" Visible="False">
                        <asp:ListItem Value="-1">Lütfen Seçiniz</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
              <td colspan="3">
              
                  <asp:Panel ID="Panel1" runat="server" Visible="False">
                
      
                      <table width="100%" class="style1">
                          <tr>
                              <td width="14%" align="left" valign="top">
                                  <span lang="tr">Personelin Adý</span></td>
                              <td width="1%" align="center" valign="top">
                                  <span lang="tr">:</span></td>
                              <td width="85%" align="left" valign="top">
                                  <asp:TextBox ID="personelAdi" runat="server" MaxLength="150" Width="391px" 
                                      ValidationGroup="a" Height="20px"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Bu Alan Boþ Geçilemez.." 
                                      ControlToValidate="personelAdi" Display="None" ValidationGroup="a"></asp:RequiredFieldValidator>
                                  
                                  
                                  
                                  <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                                      runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
                                  </cc1:ValidatorCalloutExtender>
                                  
                                  
                                  
                              </td>
                          </tr>
                          <tr>
                              <td align="left" valign="top">
                                  &nbsp;</td>
                              <td align="center" valign="top">
                                  <span lang="tr">:</span></td>
                              <td align="left" valign="top">
                                  <asp:RadioButtonList ID="kadroSec" runat="server" RepeatDirection="Horizontal" 
                    Width="200px">
                    <asp:ListItem Value="1">Akademik</asp:ListItem>
                    <asp:ListItem Value="2">Ýdari</asp:ListItem>
                </asp:RadioButtonList>
                              </td>
                          </tr>
                          <tr>
                              <td align="left" valign="top">
                                  <span lang="tr">Personelin Sayfasý</span></td>
                              <td align="center" valign="top">
                                  <span lang="tr">:</span></td>
                              <td align="left" valign="top">
                                  <FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server" Height="400px">
                                  </FCKeditorV2:FCKeditor>
                              </td>
                          </tr>
                          <tr>
                              <td align="left" valign="top">
                                  Makale <span lang="tr">Adresi</span></td>
                              <td align="center" valign="top">
                                  <span lang="tr">:</span></td>
                              <td align="left" valign="top">
                                  <asp:Label ID="personelAdres" runat="server" Text="Personel Web Adresi "></asp:Label>
                              </td>
                          </tr>
                          <tr>
                            <td colspan="2" align="left" valign="top">&nbsp;</td>
                            <td align="left" valign="top">
                                <asp:Button ID="Button1" runat="server" Text="Makale Güncelle" 
                                    ValidationGroup="a" onclick="Button1_Click" />
                                &nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                                    Text="Makale Sil" Visible="False" />
                            </td>
                          </tr>
                      </table>
              
              
             </td>
            </tr>
        </table>
    

    </asp:Panel>



</asp:Content>

