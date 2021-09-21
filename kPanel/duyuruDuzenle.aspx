<%@ Page Title="" Language="C#" MasterPageFile="~/kPanel/MasterPage.master" AutoEventWireup="true" CodeFile="duyuruDuzenle.aspx.cs" Inherits="yonetim_duyuruDuzenle" %>

<%@ Register assembly="FredCK.FCKeditorV2" namespace="FredCK.FCKeditorV2" tagprefix="FCKeditorV2" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




<asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>




    <asp:Panel ID="Panel1" runat="server">
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:cn1 %>" 
    
            SelectCommand="SELECT [haber_baslik], [haber_tarihi], [haber_id] FROM [duyurular] ORDER BY [haber_tarihi] DESC">
    </asp:SqlDataSource>
    
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="177px" 
        Width="527px" CaptionAlign="Top" BorderColor="White" CellPadding="1" 
            CellSpacing="1" GridLines="None">
        <Columns>
            <asp:BoundField DataField="haber_baslik" HeaderText="Haber Baþlýk" 
                SortExpression="haber_baslik" />
            <asp:BoundField DataField="haber_tarihi" HeaderText="Haber Tarihi" 
                SortExpression="haber_tarihi" />
            <asp:TemplateField>
                <ItemTemplate>
                    
         
         <asp:LinkButton ID="LinkButton2" runat="server" 
                                  Text='Güncelle' 
                                  PostBackUrl='<%#"duyuruDuzenle.aspx?ID="+Eval("haber_id") %>' 
                                  Font-Names="Calibri" Font-Size="13px"
                                  Font-Underline="False" CssClass="mainYazi" 
                        onclick="LinkButton2_Click"></asp:LinkButton>
         
         
         
         
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle Font-Names="helvetica" />
    </asp:GridView>
</asp:Panel>




    <asp:Panel ID="Panel2" runat="server" Visible="False">
    
       <table class="style1" style="width: 100%">
                 
                   <tr>
                        <td width="14%" align="left" valign="top">
                            <asp:Label ID="Label1" runat="server" Text="Duyuru Türü"></asp:Label>
                        </td>
                        <td width="1%">
                            :</td>
                        <td width="85%">
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="26px" 
                                RepeatDirection="Horizontal" Width="329px">
                                <asp:ListItem Selected="True" Value="1">Haberler</asp:ListItem>
                                <asp:ListItem Value="2">Duyurular</asp:ListItem>
                                <asp:ListItem Value="3">Strateji Bülteni</asp:ListItem>
                            </asp:RadioButtonList>
                      </td>
         </tr>
                    <tr>
                        <td width="14%" align="left" valign="top">
                            Duyuru&nbsp; Baþlýk<br />
                        </td>
                        <td width="1%">
                            :</td>
                        <td width="85%">

            
            
            <FCKeditorV2:FCKeditor ID="haberBaslik" runat="server"  Width="100%" Height="100px" 
          ToolbarSet="" Value='<%# Bind("haber_baslik") %>'>
</FCKeditorV2:FCKeditor>
            
            
                      </td>
         </tr>
                    <tr>
                        <td valign="top">
                            Duyuru Konusu</td>
                        <td>
                            :</td>
                        <td>
                            <FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server" 
                                Value='<%# Bind("haber_konusu") %>' Height="400px">
                          </FCKeditorV2:FCKeditor>
                      </td>
         </tr>
                    <tr>
                        <td>
                            Haber Tarihi</td>
                        <td>
                            :</td>
                        <td>
                          <asp:TextBox ID="haberTarihi" runat="server" Text='<%# Bind("haber_tarihi") %>' 
                                Height="18px" Width="177px" MaxLength="80"></asp:TextBox>
                            <cc1:CalendarExtender ID="haberTarihi_CalendarExtender" runat="server" 
                                Enabled="True" TargetControlID="haberTarihi">
                            </cc1:CalendarExtender>
                      </td>
         </tr>
                    <tr>
                        <td>
                            &nbsp;Onay / Ýptal</td>
                        <td>&nbsp;
                            
                      </td>
                        <td>
                   
                            
                          <asp:CheckBox ID="cekBalim" runat="server"/>
                            
                    
                            
                      </td>
         </tr>
                    <tr>
                        <td>&nbsp;
                            
                      </td>
                        <td>&nbsp;
                            
                      </td>
                        <td>
                          <asp:Button ID="Button1" runat="server" Text="Güncelle" Height="25px" 
                                onclick="Button1_Click" />
                            &nbsp;
                            <asp:Button ID="Button2" runat="server" Height="25px" onclick="Button2_Click" 
                                Text="Sil" Width="46px" />
                      </td>
         </tr>
      </table>

    
    
    
    </asp:Panel>









</asp:Content>

