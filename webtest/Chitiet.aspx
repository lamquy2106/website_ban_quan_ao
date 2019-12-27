<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Chitiet.aspx.cs" Inherits="webtest.Chitiet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Masp" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Masp" HeaderText="Masp" SortExpression="Masp" ReadOnly="True" />
                <asp:ImageField DataImageUrlField="Hinh" DataImageUrlFormatString="{0}" HeaderText="Hình">
                </asp:ImageField>
                <asp:BoundField DataField="Tensp" HeaderText="Tensp" SortExpression="Tensp" />
                <asp:BoundField DataField="loai" HeaderText="loai" SortExpression="loai" />
                <asp:BoundField DataField="Gia" HeaderText="Gia" SortExpression="Gia" />
                
                
                <asp:BoundField DataField="Mota" HeaderText="Mota" SortExpression="Mota" />
                
                
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("Masp") %>' OnClick="Button1_Click1" Text='<%# "Thêm vào giỏ" %>' />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:wsbanquanaoConnectionString %>" SelectCommand="SELECT * FROM [sanpham] WHERE ([Masp] = @Masp)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Masp" QueryStringField="Masp" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
    
    
</asp:Content>
