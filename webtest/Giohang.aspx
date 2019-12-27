<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Giohang.aspx.cs" Inherits="webtest.Giohang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">

    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="masp" HeaderText="Mã sản phẩm" />
                <asp:BoundField  DataField="name" HeaderText="Tên sản phẩm" />
                <asp:BoundField  DataField="gia" HeaderText="Giá" />
                <asp:BoundField DataField="quantity" HeaderText="Số lượng" />
              
                
                <asp:TemplateField HeaderText="Tổng tiền">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# (int.Parse(Eval("quantity").ToString())*int.Parse(Eval("gia").ToString())).ToString() %>'></asp:Label>
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
        <asp:Button ID="btThanhtoan" runat="server" OnClick="btThanhtoan_Click" Text="Thanh toán" />
        
        <asp:Button ID="btxoagio" runat="server" OnClick="btxoagio_Click" Text="Xóa giỏ hàng" />
        
    </form>

</asp:Content>
