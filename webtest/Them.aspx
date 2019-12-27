<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Them.aspx.cs" Inherits="webtest.Them" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    
    <form id="form1" runat="server">
    
    <table style="width: 825px; height: 307px">
        <tr>
            <td><asp:Label ID="Label1" runat="server" Text="Mã sản phẩm" Font-Bold="True"></asp:Label></td>
            <td><asp:TextBox ID="txtMasp" placeholder="Mã sản phẩm" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label2" runat="server" Text="Tên sản phẩm" Font-Bold="True"></asp:Label></td>
            <td><asp:TextBox ID="txtTensp" placeholder="Tên sản phẩm" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td> <asp:Label ID="Label3" runat="server" Text="Loại" Font-Bold="True"></asp:Label></td>
            <td><asp:TextBox ID="txtLoai" placeholder="Loại" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label4" runat="server" Text="Giá" Font-Bold="True"></asp:Label></td>
            <td><asp:TextBox ID="txtGia" placeholder="Giá" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label5" runat="server" Text="Mô tả" Font-Bold="True"></asp:Label></td>
            <td><asp:TextBox ID="txtMota" placeholder="Mô tả" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label6" runat="server" Text="Hình" Font-Bold="True"></asp:Label></td>
            <td><asp:FileUpload ID="FileUpload1" runat="server" /></td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Thêm sản phẩm" />
            </td>
        </tr>
    </table>
    
    </form>
    
</asp:Content>
