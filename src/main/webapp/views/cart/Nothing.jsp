<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:main>
    <jsp:attribute name="css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
              crossorigin="anonymous">
    </jsp:attribute>
    <jsp:attribute name="js">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    </jsp:attribute>
    <jsp:body>
        <div class="container-fluid h-100">
            <div class="row h-100 align-items-center">
                <div class="col-sm-12">
                    <div class="card shadow w-50 mx-auto">
                        <div class="card-body">
                            <h1 class="card-title">Giỏ Hàng Trống !!!</h1>
                            <h2 class="text-danger">Hãy trở lại trang chủ và mua một quyển sách</h2>
                            <p class="card-text">
                                bạn chưa mua bất kì món hàng nào :)
                            </p>
                            <div>
                                <a class="btn btn-primary" href="${pageContext.request.contextPath}/" role="button">
                                    <i class="fa fa-home" aria-hidden="true"></i>
                                    Home
                                </a>
                                <a class="btn btn-success" href="#" role="button">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                    Contact Support
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </jsp:body>
</t:main>
