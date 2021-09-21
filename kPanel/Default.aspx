<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">



<head id="Head1" runat="server">
   
   
   
    <title></title>

   

   

    <style type="text/css">
        .yonetimLogo
        {
           	position:static;
	left: 0px;
	top: 0px;
	float: left;
	height: 43px;
	width: 375px;
	text-align: center;
	margin-top: 0px;
	margin-bottom: 15px;
	margin-right: 5px;
	margin-left: 5px;
	padding-right: 5px;
	padding-left: 5px;
	font-weight: bold;
	z-index: 0;
	color: #FFFFFF;
	font-size: 20pt;
        }
    </style>

   

   

</head>
<body>
    <form id="form1" runat="server" style="text-decoration: underline">
      
    
    
<table width="428" border="0" align="center" cellpadding="0" cellspacing="0" id="Table_01">
	<tr>
		<td colspan="7" background="images/login_01.gif" width="428" height="154">
			
			<div class="yonetimLogo">
                <center style="height: 71px; width: 394px">
                    <asp:Label ID="firmaAdi"   runat="server" Text="Label"></asp:Label>
            <br />
						Yönetim Paneli Giriş
			 </center>
			
			</div>
			</td>
	</tr>
	<tr>
		<td rowspan="8">
			<img id="login_02" src="images/login_02.gif" width="50" height="277" alt="" /></td>
		<td colspan="4" background="images/login_03.gif" width="324" height="26">
            <span lang="tr"> &nbsp;&nbsp; </span>
        <asp:Label ID="Mesaj" runat="server" Text="Giriş Formu" Font-Bold="True" 
                Font-Names="Calibri" ForeColor="White"></asp:Label>
			</td>
		<td colspan="2" rowspan="2">
			<img id="login_04" src="images/login_04.gif" width="54" height="60" alt="" /></td>
	</tr>
	<tr>
		<td colspan="4">
			<img id="login_05" src="images/login_05.gif" width="324" height="34" alt="" /></td>
	</tr>
	<tr>
		<td rowspan="6">
			<img id="login_06" src="images/login_06.gif" width="1" height="217" alt="" /></td>
		<td colspan="4" background="images/login_07.gif" width="324" height="31">
        <asp:TextBox ID="adi" runat="server" width="313px" height="23px"></asp:TextBox>
			</td>
		<td rowspan="6">
			<img id="login_08" src="images/login_08.gif" width="53" height="217" alt="" /></td>
	</tr>
	<tr>
		<td colspan="4">
			<img id="login_09" src="images/login_09.gif" width="324" height="34" alt="" /></td>
	</tr>
	<tr>
		<td colspan="4" background="images/login_10.gif" width="324" height="31">
        <asp:TextBox ID="sifre" runat="server" width="313px" height="23px" 
                TextMode="Password"></asp:TextBox>
        
        
        
			</td>
	</tr>
	<tr>
		<td colspan="4">
			<img id="login_11" src="images/login_11.gif" width="324" height="45" alt="" /></td>
	</tr>
	<tr>
		<td rowspan="2">
			<img id="login_12" src="images/login_12.gif" width="257" height="76" alt="" /></td>
		<td width="62" height="26" align="center" valign="middle">
		
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Giriş" 
                Height="25px" Width="60px" />
    
			</td>
		<td colspan="2" rowspan="2">
			<img id="login_14" src="images/login_14.gif" width="5" height="76" alt="" /></td>
	</tr>
	<tr>
		<td>
			<img id="login_15" src="images/login_15.gif" width="62" height="50" alt="" /></td>
	</tr>
	<tr>
		<td>
			<img src="images/spacer.gif" width="50" height="1" alt="" /></td>
		<td>
			<img src="images/spacer.gif" width="1" height="1" alt="" /></td>
		<td>
			<img src="images/spacer.gif" width="257" height="1" alt="" /></td>
		<td>
			<img src="images/spacer.gif" width="62" height="1" alt="" /></td>
		<td>
			<img src="images/spacer.gif" width="4" height="1" alt="" /></td>
		<td>
			<img src="images/spacer.gif" width="1" height="1" alt="" /></td>
		<td>
			<img src="images/spacer.gif" width="53" height="1" alt="" /></td>
	</tr>
</table>
    
    
    
    
    
    

    </form>

</body>
</html>
