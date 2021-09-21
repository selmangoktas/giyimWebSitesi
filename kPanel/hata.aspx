<%@ Page Title="" Language="C#" MasterPageFile="~/kPanel/MasterPage.master" AutoEventWireup="true" CodeFile="hata.aspx.cs" Inherits="yonetim_hata" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">






    <table style="width: 100%">
        <tr>
            <td style="width: 270px">
                <img alt="" src="../images/hata.png" style="width: 256px; height: 256px" /></td>
            <td valign="top">
                Yanlış Bir İşlem Yürüttünüz.<br />
                Tekrar Deneyiniz.<br />
                webmaster la iletişime geçiniz.<br />
                <asp:LinkButton ID="LinkButton6" runat="server" 
                    PostBackUrl="~/kPanel/Default.aspx">Tıklayınız</asp:LinkButton>
            </td>
        </tr>
       
    </table>
</asp:Content>

