<%@ Control Language="C#" AutoEventWireup="true" CodeFile="butonlar.ascx.cs" Inherits="butonlar" %>


<link href="css/menu.css" rel="stylesheet" type="text/css" />


   <script src="java/Butonlarjquery.js" type="text/javascript"></script>
   <script src="java/Butonlarmenu.js" type="text/javascript"></script>

<style type="text/css">
* { margin:0;
    padding:0;
}
body { background:rgb(74,81,85); }
div#menu { margin:5px auto; }

</style>



<div id="menu">
    <ul class="menu">
        
        
         
         
        <asp:Repeater ID="menuRpt" runat="server" 
            onitemdatabound="menuRpt_ItemDataBound">
       
    <ItemTemplate>
       <li>
           <a href=sayfaGoster.aspx?id=<%# Eval("id") %> class=parent> <span><%# Eval("TRsayfaAdi")%></span> </a>
       </li>    
            <asp:Label ID="anaMenuAdi" runat="server"  Visible="false"  Text="Label"></asp:Label>  
       
         
            <asp:Repeater ID="altmenuRpt" runat="server">
            
        <HeaderTemplate> <ul> </HeaderTemplate>
           
            <ItemTemplate>
            
            
          <%--      
                 
                 <li> 
                 <a href=sayfaGoster.aspx?id=<%# Eval("id") %> class=parent><span><%# Eval("TRsayfaAdi")%></span> </a> <br />
                 </li>
                 --%>
               
                 
                <asp:Label ID="altMenuAdi"  runat="server" Text="Label"></asp:Label>  
               
                    
                 
           
            </ItemTemplate>
            <FooterTemplate> </ul>  </FooterTemplate>
         
           
            </asp:Repeater>
        
        
        </ItemTemplate>
        
        
        
    </asp:Repeater>
    
  
    </ul>
  
</div>





                 

