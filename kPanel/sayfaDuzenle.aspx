<%@ Page Title="" Language="C#" MasterPageFile="~/kPanel/MasterPage.master" AutoEventWireup="true" CodeFile="sayfaDuzenle.aspx.cs" Inherits="yonetim_sayfaDuzenle" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


   
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
 

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:DropDownList ID="Liste" runat="server" AutoPostBack="True" Height="76px" 
                onselectedindexchanged="Liste_SelectedIndexChanged" Width="230px" 
                AppendDataBoundItems="True">
                <asp:ListItem Value="Lütfen Seçiniz" Selected="True"></asp:ListItem>
            </asp:DropDownList>
            
            
            
       
            
            
            <FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server" Height="500px">
            </FCKeditorV2:FCKeditor>
            
            
            <asp:Button ID="Button1" runat="server" Height="31px" Text="Güncelle" 
                Width="132px" onclick="Button1_Click"/>
        </ContentTemplate>
    </asp:UpdatePanel>
        
        
      
   
   

</asp:Content>

