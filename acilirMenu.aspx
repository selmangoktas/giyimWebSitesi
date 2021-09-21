<%@ Page Language="C#" AutoEventWireup="true" CodeFile="acilirMenu.aspx.cs" Inherits="acilirMenu" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>

<script type="text/javascript">
    var forecolor;
    function onOK() {
        var panel = $get('<%=pnlText.ClientID %>');
        panel.style.color = forecolor;
    }
</script>


<table align="center" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
    <center>
    <asp:Panel ID="pnlText" runat="server" style="border: solid 2px #EEEEEE; padding: 5px;">
    <h3>This is a sample text for AJAX ModalPopUp Control Extender</h3>
    </asp:Panel>
    <div class="clear"><br /></div>
    <asp:LinkButton ID="lnkUpdate" ForeColor="#0000ff" Font-Bold="true" 
            Font-Underline="true" Font-Size="12px" runat="server" onclick="lnkUpdate_Click">Click here to Change Text Style</asp:LinkButton>    
    </center>
    <asp:Panel ID="Panel1" runat="server" CssClass="modalPanel" Style="display: none">
    <asp:Panel ID="Panel2" runat="server" style="border:solid 2px #cccccc; width:98%; cursor: move;">Drag Panel
    </asp:Panel>
        <div>
            <strong>
            RadioButton List Server Control<br />
            </strong>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem Value="#ff0000">Red</asp:ListItem>
                <asp:ListItem Value="#0000cc">Navy Blue</asp:ListItem>
                <asp:ListItem Value="#00cc00">Green</asp:ListItem>
                <asp:ListItem Value="#c0c0c0">Gray</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <div class="clear"></div>
        <asp:Button ID="btnApply" runat="server" OnClick="btnApply_Click" Text="OK Server Side" />
        <hr />
        <div>
            <strong>
            HTML Radio Buttons Client Control</strong><br />
                <input id="rdRed" name="rdGroup" type="radio" value="Red" onclick="forecolor=this.value;" /><label
                    for="rdRed">Red</label>
            <br />
            
                <input id="rdGreen" name="rdGroup" type="radio" value="Green" onclick="forecolor=this.value;" /><label
                    for="rdGreen">Green</label>
            <br />
            
                <input id="rdBlue" name="rdGroup" type="radio" value="#0000cc" onclick="forecolor=this.value;" /><label
                    for="rdBlue">Navy Blue</label>
            <br />
           
                <input id="rdGray" name="rdGroup" type="radio" value="Gray" onclick="forecolor=this.value;" /><label
                    for="rdGray">Gray</label>
        </div>
        <div class="clear"></div>
        <div class="left">
        <asp:Button ID="btnOK" runat="server" Text="OK Client Side" />
        </div>
        <div class="right">
        <asp:Button ID="btnCancel" CssClass="button" runat="server" Text="[ X ]" />
        </div>
        <div class="clear"></div>
        </asp:Panel>
        
 
    
    <cc1:ModalPopupExtender ID="ModalPopupExtender2" runat="server" 
        TargetControlID="UpdatePanel1"></cc1:ModalPopupExtender>
    
</ContentTemplate>
</asp:UpdatePanel>
        </td>
    </tr>
</table>