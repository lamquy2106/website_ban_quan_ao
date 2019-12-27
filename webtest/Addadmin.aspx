<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Addadmin.aspx.cs" Inherits="webtest.Addadmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <div class="container" runat="server">
        <div class="login">
            <form runat="server">
                <div class="col-md-6 login-do">
                    <div class="login-mail">
                        <asp:TextBox ID="txtHoten" placeholder="Họ tên" runat="server"></asp:TextBox>
                        <i class="glyphicon glyphicon-user"></i>
                    </div>
                    <div class="login-mail">
                        <asp:TextBox ID="txtGioitinh" placeholder="Giới tính" runat="server"></asp:TextBox>
                        <i class="glyphicon glyphicon-user"></i>
                    </div>
                    <div class="login-mail">
                        <asp:TextBox ID="txtDienthoai" placeholder="Số điện thoại" runat="server"></asp:TextBox>
                        <i class="glyphicon glyphicon-phone"></i>
                    </div>
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
                            <input type="checkbox" name="checkbox"><i> </i>Quên mật khẩu</label>
                    </a>
                    <label class="hvr-skew-backward">
                        <asp:Button ID="btDangky" runat="server" Text="Đăng ký" OnClick="btDangky_Click" />
                    </label>

                </div>
                <div class="col-md-6 login-right">
                    <h3>Hoàn thành đăng ký tài khoản</h3>

                    <p></p>
                    <a href="Dangnhap.aspx" class="hvr-skew-backward">Đăng nhập</a>

                </div>

                <div class="clearfix"></div>
            </form>
        </div>

    </div>
</asp:Content>
