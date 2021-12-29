<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:useBean id="all_customer" scope="request" type="java.util.List<com.doancntt.beans.Customer>"/>

<t:admin>
    <jsp:body>
        <div class="card-body">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Tên Khách Hàng</th>
                    <th>Email</th>
                    <th>Số Điện Thoại</th>
                    <th>Địa Chỉ</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${all_customer}" var="c">
                    <tr>
                        <td>${c.customer_ID}</td>
                        <td>${c.first_Name} ${c.last_Name}</td>
                        <td>${c.email}</td>
                        <td>${c.phone_Number}</td>
                        <td>${c.full_Address}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </jsp:body>
</t:admin>