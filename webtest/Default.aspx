<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="webtest.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <form id="form1" runat="server">
<div class="banner">
<div class="container">
<section class="rw-wrapper">
				<h1 class="rw-sentence">
					<span>Thời trang &amp; Làm đẹp</span>
					<div class="rw-words rw-words-1">
						<span>Chúng tôi đem lại</span>
						<span>Chúng tôi đem lại</span>
						<span>Chúng tôi đem lại</span>
						<span>Chúng tôi đem lại</span>
                        <span>Hãy đến với chúng tôi</span>
                        <span>Hãy đến với chúng tôi</span>
					</div>
					<div class="rw-words rw-words-2">
						<span>Một thế giới quần áo</span>
						<span>Những sản phẩm độc quyền</span>
						<span>Những món đồ độc đáo</span>
						<span>một môi trường mua sắm tiện lợi</span>
                        <span>Để tận hưởng những tiện ích mới, dễ dàng, và nhanh nhất</span>
                        <span>Đế nhận được những điều tuyệt vời nhất</span>
					</div>
				</h1>
			</section>
			</div>
</div>

		<div class="content">
			<div class="container">
				<div class="content-top">
					<div class="col-md-6 col-md">
						<div class="col-1">
						 <a href="#" class="b-link-stroke b-animate-go  thickbox">
		   <img src="images/pi.jpg" class="img-responsive" alt=""/><div class="b-wrapper1 long-img"><p class="b-animate b-from-right    b-delay03 ">Fashion</p><label class="b-animate b-from-right    b-delay03 "></label><h3 class="b-animate b-from-left    b-delay03 ">Trendy</h3></div></a>

							<!---<a href="#"><img src="images/pi.jpg" class="img-responsive" alt=""></a>-->
						</div>
						<div class="col-2">
							
							<h2><a href="#">Sản phẩm mới &amp; Thịnh hành</a></h2>
							<p>Chúng tôi luôn luôn đem lại những sản phẩm thời trang mới nhất, hot nhất dành cho các bạn, ấn vào nút mua ngay nào!</p>
							<a href="#" class="buy-now">Mua ngay</a>
						</div>
					</div>
					<div class="col-md-6 col-md1">
						<div class="col-3">
							<a href="#"><img src="images/pi1.jpg" class="img-responsive" alt="">
							<div class="col-pic">
								<p>Fashion</p>
								<label></label>
								<h5>For Men</h5>
							</div></a>
						</div>
						<div class="col-3">
							<a href="#"><img src="images/pi2.jpg" class="img-responsive" alt="">
							<div class="col-pic">
								<p>Fashion</p>
								<label></label>
								<h5>For Kids</h5>
							</div></a>
						</div>
						<div class="col-3">
							<a href="#"><img src="images/pi3.jpg" class="img-responsive" alt="">
							<div class="col-pic">
								<p>Fashion</p>
								<label></label>
								<h5>For Women</h5>
							</div></a>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<!--products-->
			<div class="content-mid">
				<h3>Sản phẩm mới</h3>
				<label class="line"></label>
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="Masp" GroupItemCount="3" DataSourceID="SqlDataSource1">
                    <AlternatingItemTemplate>
                        <td runat="server" style="background-color: #FAFAD2;color: #284775;">
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="550px" ImageUrl='<%# Eval("Hinh", "{0}") %>' PostBackUrl='<%# Eval("Masp", "Chitiet.aspx?Masp={0}") %>' Width="350px" />
                            <br />
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Masp", "Chitiet.aspx?Masp={0}") %>' Text='<%# Eval("Tensp", "{0}") %>'></asp:HyperLink>
                            <br />
                            <asp:HyperLink ID="HyperLink3" runat="server" Text='<%# Eval("Gia", "Giá: {0}") %>'></asp:HyperLink>
                            <br /></td>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <td runat="server" style="background-color: #FFCC66;color: #000080;">Masp:
                            <asp:Label ID="MaspLabel1" runat="server" Text='<%# Eval("Masp") %>' />
                            <br />Tensp:
                            <asp:TextBox ID="TenspTextBox" runat="server" Text='<%# Bind("Tensp") %>' />
                            <br />loai:
                            <asp:TextBox ID="loaiTextBox" runat="server" Text='<%# Bind("loai") %>' />
                            <br />Gia:
                            <asp:TextBox ID="GiaTextBox" runat="server" Text='<%# Bind("Gia") %>' />
                            <br />Mota:
                            <asp:TextBox ID="MotaTextBox" runat="server" Text='<%# Bind("Mota") %>' />
                            <br />Hinh:
                            <asp:TextBox ID="HinhTextBox" runat="server" Text='<%# Bind("Hinh") %>' />
                            <br />
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <br />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            <br /></td>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                            <tr>
                                <td>No data was returned.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <EmptyItemTemplate>
<td runat="server" />
                    </EmptyItemTemplate>
                    <GroupTemplate>
                        <tr id="itemPlaceholderContainer" runat="server">
                            <td id="itemPlaceholder" runat="server"></td>
                        </tr>
                    </GroupTemplate>
                    <InsertItemTemplate>
                        <td runat="server" style="">Masp:
                            <asp:TextBox ID="MaspTextBox" runat="server" Text='<%# Bind("Masp") %>' />
                            <br />Tensp:
                            <asp:TextBox ID="TenspTextBox" runat="server" Text='<%# Bind("Tensp") %>' />
                            <br />loai:
                            <asp:TextBox ID="loaiTextBox" runat="server" Text='<%# Bind("loai") %>' />
                            <br />Gia:
                            <asp:TextBox ID="GiaTextBox" runat="server" Text='<%# Bind("Gia") %>' />
                            <br />Mota:
                            <asp:TextBox ID="MotaTextBox" runat="server" Text='<%# Bind("Mota") %>' />
                            <br />Hinh:
                            <asp:TextBox ID="HinhTextBox" runat="server" Text='<%# Bind("Hinh") %>' />
                            <br />
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <br />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                            <br /></td>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <td runat="server" style="background-color: #FFFBD6; color: #333333;">
                            <asp:ImageButton ID="ImageButton2" runat="server" Height="550px" ImageUrl='<%# Eval("Hinh", "{0}") %>' PostBackUrl='<%# Eval("Masp", "Chitiet.aspx?Masp={0}") %>' Width="350px" />
                            <br />
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("Masp", "Chitiet.aspx?Masp={0}") %>' Text='<%# Eval("Tensp", "{0}") %>'></asp:HyperLink>
                            <br />
                            <asp:HyperLink ID="HyperLink4" runat="server" Text='<%# Eval("Gia", "Giá: {0}") %>'></asp:HyperLink>
                        </td>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="groupPlaceholderContainer" runat="server" border="1" style="border: 1px none #999999; background-color: #FFFFFF; border-collapse: collapse; font-family: Verdana, Arial, Helvetica, sans-serif; height: 607px;">
                                        <tr id="groupPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                                    <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                            <asp:NumericPagerField />
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                        </Fields>
                                    </asp:DataPager>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <td runat="server" style="background-color: #FFCC66;font-weight: bold;color: #000080;">Masp:
                            <asp:Label ID="MaspLabel" runat="server" Text='<%# Eval("Masp") %>' />
                            <br />Tensp:
                            <asp:Label ID="TenspLabel" runat="server" Text='<%# Eval("Tensp") %>' />
                            <br />loai:
                            <asp:Label ID="loaiLabel" runat="server" Text='<%# Eval("loai") %>' />
                            <br />Gia:
                            <asp:Label ID="GiaLabel" runat="server" Text='<%# Eval("Gia") %>' />
                            <br />Mota:
                            <asp:Label ID="MotaLabel" runat="server" Text='<%# Eval("Mota") %>' />
                            <br />Hinh:
                            <asp:Label ID="HinhLabel" runat="server" Text='<%# Eval("Hinh") %>' />
                            <br /></td>
                    </SelectedItemTemplate>
                </asp:ListView>
			    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:wsbanquanaoConnectionString %>" SelectCommand="SELECT * FROM [sanpham]"></asp:SqlDataSource>
			</div>
			
		</div>

    </div>
    </form>
</asp:Content>
