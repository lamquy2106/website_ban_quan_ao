<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="webtest.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <form runat="server">
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Thêm sản phẩm mới" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Thêm tài khoản dạng admin" />
        <br />
        <br />
        <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Masp" Height="184px" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing"  Width="100%" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Masp" HeaderText="Mã sảm phẩm" />
                <asp:BoundField DataField="Tensp" HeaderText="Tên sản phẩm" />
                <asp:BoundField DataField="loai" HeaderText="Loại" />
                <asp:BoundField DataField="Gia" HeaderText="Giá" />
                <asp:BoundField DataField="Mota" HeaderText="Mô tả" />
                <asp:ImageField DataImageUrlField="Hinh" DataImageUrlFormatString="{0}" HeaderText="Hình">
                </asp:ImageField>
                <asp:CommandField ButtonType="Image" DeleteImageUrl="~/image/Delete.jpg" DeleteText="" HeaderText="Xóa" ShowDeleteButton="True" />
                <asp:CommandField ButtonType="Image" EditImageUrl="~/image/Edit.png" EditText="" HeaderText="Sửa" ShowEditButton="True" CancelImageUrl="~/image/Delete.jpg" CancelText="Quay lại" UpdateImageUrl="~/image/Edit.png" UpdateText="Lưu" />
                <asp:TemplateField HeaderText="Upload">
                    <ItemTemplate>
                        <asp:FileUpload ID="FileUpload1" runat="server" EnableViewState="true" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        </form>
    <br/>
</asp:Content>
