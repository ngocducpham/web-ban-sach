<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/styles/index.css">

<t:main>
    <jsp:body>
        <div class="container-fluid p-0">
            <div class="row">
                <div class="col-4"></div>
                <div class="auth-form px-3 col-4" id="login">
                    <input type="hidden" name="ga_id" class="js-octo-ga-id-input">
                    <div class="auth-form-header p-0">
                        <h1>Đăng Nhập</h1>
                    </div>

                    <div class="auth-form-body mt-3">
                        <label for="login_field">
                            Địa chỉ Email
                        </label>
                        <input type="text" name="login" id="login_field"
                               class="mb-3 form-control input-block js-login-field"
                               autocapitalize="off" autocorrect="off" autocomplete="username" autofocus="autofocus">

                        <div class="position-relative">
                            <label for="password">
                                Mật Khẩu
                            </label>
                            <a class="label-link" tabindex="0" href="/password_reset">Quên Mật Khẩu ?</a>
                            <input type="password" name="password" id="password"
                                   class="form-control form-control input-block js-password-field"
                                   autocomplete="current-password">
                            <input type="submit" name="commit" value="Đăng Nhập"
                                   class="btn btn-primary btn-block js-sign-in-button mt-3"
                                   data-disable-with="Signing in…"
                                   data-signin-label="Sign in" data-sso-label="Sign in with your identity provider">

                        </div>
                        </form>
                    </div>
                    <p class="login-callout mt-3">
                        Chưa có tài khoản?
                        <a data-ga-click="Sign in, switch to sign up"
                           data-hydro-click="{&quot;event_type&quot;:&quot;authentication.click&quot;,&quot;payload&quot;:{&quot;location_in_page&quot;:&quot;sign in switch to sign up&quot;,&quot;repository_id&quot;:null,&quot;auth_type&quot;:&quot;SIGN_UP&quot;,&quot;originating_url&quot;:&quot;https://github.com/login&quot;,&quot;user_id&quot;:null}}"
                           data-hydro-click-hmac="72d062e79bb6ab076a3b88b32943286ea51894183bd812a5038d00013946f239"
                           href="/signup?source=login">Tạo mới</a>.
                    </p>

                </div>
            </div>
        </div>
    </jsp:body>
</t:main>
