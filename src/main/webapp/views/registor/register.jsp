<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<t:main>
    <jsp:body>
        <div class="container-fluid p-0">
            <div class="row">
                <div class="col-4"></div>
                <div class="auth-form px-3 col-4" id="login">
                    <input type="hidden" name="ga_id" class="js-octo-ga-id-input">
                    <div class="auth-form-header p-0">
                        <h2>Đăng kí tài khoản mới</h2>
                    </div>
                    <form class="auth-form-body mt-3" method="post">
                        <label for="ho">
                            Họ
                        </label>
                        <input type="text" name="password" id="ho"
                               class="form-control form-control input-block js-password-field"
                               autocomplete="current-password">
                        <label for="ten">
                            Tên
                        </label>
                        <input type="text" name="password" id="ten"
                               class="form-control form-control input-block js-password-field"
                               autocomplete="current-password">
                        <label for="sdt">
                            Số Điện Thoại
                        </label>
                        <input type="text" name="password" id="sdt"
                               class="form-control form-control input-block js-password-field"
                               autocomplete="current-password">
                        <label for="diachi">
                            Địa Chỉ Nhà
                        </label>
                        <input type="text" name="password" id="diachi"
                               class="form-control form-control input-block js-password-field"
                               autocomplete="current-password">
                        <label for="login_field">
                            Địa chỉ Email
                        </label>
                        <input type="text" name="login" id="login_field" class="mb-3 form-control input-block js-login-field"
                               autocapitalize="off" autocorrect="off" autocomplete="username" autofocus="autofocus">

                        <div class="position-relative">
                            <label for="password">
                                Mật Khẩu
                            </label>
                            <input type="password" name="password" id="password"
                                   class="form-control form-control input-block js-password-field"
                                   autocomplete="current-password">
                            <label for="password2">
                                Xác Nhận Mật Khẩu
                            </label>
                            <input type="password" name="password" id="password2"
                                   class="form-control form-control input-block js-password-field"
                                   autocomplete="current-password">
                            <input type="submit" name="commit" value="Đăng kí"
                                   class="btn btn-primary btn-block js-sign-in-button mt-3" data-disable-with="Signing in…"
                                   data-signin-label="Sign in" data-sso-label="Sign in with your identity provider">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </jsp:body>
</t:main>