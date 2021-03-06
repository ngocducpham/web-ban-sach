<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<t:main>
    <jsp:attribute name="css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/styles/register.css">
    </jsp:attribute>
    <jsp:attribute name="js">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="${pageContext.request.contextPath}/public/scripts/register.js"></script>
        <script src="${pageContext.request.contextPath}/public/scripts/vietnamlocalselector.js"></script>
         <script>
             let localpicker = new LocalPicker({
                 province: "ls_province",
                 district: "ls_district",
                 ward: "ls_ward"
             });
         </script>
    </jsp:attribute>

    <jsp:body>
        <div class="container-fluid p-0">
            <div class="row">
                <div class="col-4"></div>
                <div class="auth-form px-3 col-4 mt-3" id="login">
                    <input type="hidden" name="ga_id" class="js-octo-ga-id-input">
                    <div class="auth-form-header p-0">
                        <h2 class="registerHeader">Đăng kí tài khoản mới</h2>
                    </div>
                    <form class="auth-form-body mt-3" method="post" id="FormRegister">
                        <label for="ho">
                            Họ <span class="txt_red">(*)</span>
                        </label>
                        <span class="txt_red" id="error_ho"></span>

                        <input type="text" name="ho" id="ho"
                               class="form-control form-control input-block js-password-field"
                               autocomplete="current-password"
                               onblur="checkHo()">
                        <label for="ten">
                            Tên <span class="txt_red">(*)</span>
                        </label>
                        <span class="txt_red" id="error_ten"></span>

                        <input type="text" name="ten" id="ten"
                               class="form-control form-control input-block js-password-field"
                               autocomplete="current-password"
                               onblur="checkName()">
                        <label for="sdt">
                            Số Điện Thoại <span class="txt_red">(*)</span></label><span class="txt_red"
                                                                                        id="error_phone"></span>
                        </label>
                        <input type="text" name="sdt" id="sdt"
                               class="form-control form-control input-block js-password-field"
                               autocomplete="current-password"
                               onblur="checkPhone()">
                        <p class="labelProvince"> Chọn tỉnh, huyện </p>
                        <div class="provinceOption">
                            <select class="space" name="ls_province" id="ls_province"></select>
                            <select class="space" name="ls_district" id="ls_district"></select>
                            <select class="space" name="ls_ward" id="ls_ward"></select>
                        </div>
                        <label for="diachi">
                            Địa Chỉ Nhà
                        </label>
                        <input type="text" name="diachi" id="diachi"
                               class="form-control form-control input-block js-password-field"
                               autocomplete="current-password"

                        >
                        <input type="text" name="diachict" id="diachichitiet"
                               class="form-control form-control input-block js-password-field"
                               autocomplete="current-password"
                               readonly

                        >
                        <label for="email">
                            Địa chỉ Email <span class="txt_red">(*)</span>
                        </label>
                        <span class="txt_red" id="error_email"></span>

                        <input type="text" name="email" id="email" class="mb-3 form-control input-block js-login-field"
                               autocapitalize="off" autocorrect="off" autocomplete="username" autofocus="autofocus"
                               onblur="checkEmail()">

                        <div class="position-relative">
                            <label for="password">
                                Mật Khẩu <span class="txt_red">(*)</span>
                            </label>
                            <span class="txt_red" id="error_password"></span>
                            <input type="password" name="password" id="password"
                                   class="form-control form-control input-block js-password-field"
                                   autocomplete="current-password"
                                   onblur="checkPass()">
                            <label for="password2">
                                Xác Nhận Mật Khẩu
                            </label>
                            <input type="password" name="password2" id="password2"
                                   class="form-control form-control input-block js-password-field"
                                   autocomplete="current-password">
                            <input type="submit" name="commit" value="Đăng kí"
                                   class="registerBtn btn btn-primary btn-block js-sign-in-button mt-3"
                                   data-disable-with="Signing in…"
                                   data-signin-label="Sign in" data-sso-label="Sign in with your identity provider">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </jsp:body>
</t:main>