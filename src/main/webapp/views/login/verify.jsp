<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/styles/index.css">

<t:main>
        <jsp:attribute name="js">
        <script
                src="https://code.jquery.com/jquery-3.6.0.min.js"
                integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
                crossorigin="anonymous">
        </script>
        </jsp:attribute>
    <jsp:body>
        <div class="container-fluid p-0">
            <div class="row">
                <div class="col-4"></div>
                <div class="auth-form px-3 col-4" id="login">
                    <input type="hidden" name="ga_id" class="js-octo-ga-id-input">
                    <div class="auth-form-header p-0">
                        <h1>Nhập Mã Xác Minh</h1>
                    </div>
                    <form class="auth-form-body mt-3" method="post" id="FormForget">
                        <div class="position-relative">
                            <label for="password">
                                Nhập Mã Xác Minh <span style="color:red;"> 6 số </span>chúng tôi đã gửi cho bạn
                            </label>
                            <input type="password" name="code" id="password"
                                   class="form-control form-control input-block js-password-field"
                                   autocomplete="current-password">
                            <input type="submit" name="commit" value="Gửi mã tới mail này"
                                   class="btn btn-primary btn-block js-sign-in-button mt-3">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </jsp:body>
</t:main>
