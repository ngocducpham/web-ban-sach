<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<%--<link rel="stylesheet" href="../../public/styles/cart.css">--%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/styles/cart.css">

<t:main>
    <jsp:body>
        <h2 class="headerCart"> GIO HANG</h2>
        <div class="container">
            <div class="productBox">
                <h4 class="headerProduct"> SAN PHAM</h4>
                <div class="quantityProduct">
                    <figure class="bookImage"> <img src="#" alt="BookImage"></figure>
                    <div class="bookName">
                        <p class="p__bookName">Nghia tinh rang buoc</p>
                        <div class="btn-group" role="group" aria-label="Basic example">
                            <button type="button" class="btn btn-primary">-</button>
                            <input type="text" class="quantityBook">
                            <button type="button" class="btn btn-primary">+</button>
                        </div>
                    </div>
                    <div class="money">
                        <p class="quantity"> 1 x 119000</p>
                        <!-- <a href="https://icons8.com/icon/67884/remove">Remove icon by Icons8</a> -->
                    </div>
                </div>
            </div>
            <div class="briefOder">
                <h4 class="headerOrder">TOM TAT DON HANG</h4>
                <div class="bill">
                    <div class="containerProduct">
                        <div class="rowProduct">
                            <div class="col colProduct">
                                <p class="billProduct"> San pham</p>
                                <p class="feeTransport"> Phi van chuyen</p>
                                <p class="provisional"> TAM TINH</p>
                            </div>
                            <div class="colJS">
                                <p class="quantityProduct"> 3</p>
                                <p class="fee"> Mien phi</p>
                                <p class="provisionalMoney"> 459.000</p>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="total">
                        <p class="p__Total">TONG CONG</p>
                        <p class="moneyTotal">459.000</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="containerBtn">
            <button class="back"> QUAY LAI</button>
            <button class="pay"> THANH TOAN</button>
        </div>
    </jsp:body>
</t:main>