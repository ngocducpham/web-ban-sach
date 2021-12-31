<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:useBean id="Customer_infor" scope="request" type="com.doancntt.beans.Customer"/>
<jsp:useBean id="my_bought_books" scope="request" type="java.util.List<com.doancntt.beans.Detail_Request>"/>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/styles/personal.css">

<t:main>
    <jsp:attribute name="js">
        <script
                src="https://code.jquery.com/jquery-3.6.0.min.js"
                crossorigin="anonymous">
        </script>
    </jsp:attribute>
    <jsp:body>
        <div class="container">
            <form method="post">
                <div class="auth-form mt-3" id="login">
                    <input type="hidden" name="ga_id" class="js-octo-ga-id-input">
                    <button type="submit" class="btn btn-danger btnLogout"
                            formaction="${pageContext.request.contextPath}/User/Logout">
                        <i class="fa fa-trash-o" aria-hidden="true"></i>
                        LogOut
                    </button>
                    <div class="auth-form-header p-0">
                        <h2 class="registerHeader">Thông tin cá nhân</h2>
                    </div>
                    <div class="card-text edit">Mã khách hàng: ${my_bought_books.get(0).customer_ID}</div>
                    <div class="card-text edit">Tên khách
                        hàng: ${my_bought_books.get(0).first_Name} ${my_bought_books.get(0).last_Name}</div>
                    <div class="card-text edit">Địa chỉ cần giao: ${my_bought_books.get(0).dest_Address}</div>
                    <div id="totalBill" class="card-text font-weight-bold"></div>
                    <br>
                    <div style="font-weight: bold; font-size: 18pt">Sách Đã Đặt</div>
                    <table class="table mb-5 tableBook">
                        <thead>
                        <tr>
                            <th scope="col">Hình ảnh</th>
                            <th scope="col">Tên sách</th>
                            <th scope="col">Số lượng</th>
                            <th scope="col">Thành tiền</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${my_bought_books}" var="r">
                            <tr>
                                <th scope="row">
                                    <img style="width: 50px; height: 70px"
                                         src="${pageContext.request.contextPath}/public/imgs/${r.img}"/>
                                </th>
                                <td>${r.title}</td>
                                <td>${r.so_sach}</td>
                                <td>${r.tien_sach}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </form>
        </div>
    </jsp:body>
</t:main>
