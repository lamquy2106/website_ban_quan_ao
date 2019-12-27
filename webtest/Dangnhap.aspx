<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Dangnhap.aspx.cs" Inherits="webtest.Dangnhap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
<div class="banner-top">
	<div class="container">
		<h1>Đăng nhập</h1>
		<em></em>
		<h2><a href="Default.aspx">Trang chủ</a><label>/</label>Đăng nhập</h2>
	</div>
</div>
<!--login-->
<div class="container" runat="server">
		<div class="login">
		
            <form runat="server">
                <div class="col-md-6 login-do">
                    <div class="login-mail">
                        <asp:TextBox ID="txtUsername" placeholder="Tài khoản" runat="server"></asp:TextBox>
                        <i class="glyphicon glyphicon-envelope"></i>
                    </div>
                    <div class="login-mail">
                        <asp:TextBox ID="txtPass" placeholder="Mật khẩu" runat="server" TextMode="Password"></asp:TextBox>
                        <i class="glyphicon glyphicon-lock"></i>
                    </div>
                    <a class="news-letter " href="#">
                        <label class="checkbox1">
                            <input type="checkbox" name="checkbox"><i> </i>Nhớ mật khẩu</label>
                    </a>
                    <label class="hvr-skew-backward">
                        <asp:Button ID="btDangnhap" runat="server" Text="Đăng nhập" OnClick="btDangnhap_Click" />
                    </label>
                </div>
                <div class="col-md-6 login-right">
                    <h3>Đăng ký tài khoản HOÀN TOÀN MIỄN PHÍ>

                    <p>Bạn chưa có tài khoản? Hãy đăng ký tài khoản và đến với chúng tôi vì nó là hoàn toàn miễn phí, hãy dành ít thời gian để đăng ký tài khoản và bạn sẽ thấy mua trang phục online với website của chúng tôi thật dễ dàng và nhanh chóng nhấn nút ĐĂNG KÝ ngay nào!</p>
                    <a href="Dangky.aspx" class=" hvr-skew-backward">Đăng ký</a>

                </div>

                <div class="clearfix"></div>
            </form>
		</div>

</div>
</asp:Content>
