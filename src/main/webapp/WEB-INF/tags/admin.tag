<%@ tag pageEncoding="utf-8" %>
<%@attribute name="css" fragment="true" required="false" %>
<%@attribute name="js" fragment="true" required="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="adminlogin" scope="session" type="java.lang.Boolean"/>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="${pageContext.request.contextPath}/public/scripts/tailwindcss.js"></script>
    <script src="https://code.iconify.design/2/2.1.0/iconify.min.js"></script>
    <link rel="icon" href="${pageContext.request.contextPath}/public/imgs/icon.svg" sizes="any" type="image/svg+xml">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
          integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <jsp:invoke fragment="css"/>
    <title>Admin Dashboard</title>
</head>

<body>
<main class="bg-gray-100  h-screen overflow-hidden relative">
    <div class="flex items-start justify-between">
        <div class="h-screen hidden lg:block shadow-lg relative w-80">
            <div class="bg-white h-full ">
                <div class="flex items-center justify-start pt-6 ml-5">
                    <p class="font-bold text-xl">
                        <a class="navbar-brand" href="${pageContext.request.contextPath}">
                            <img class="logo" src="${pageContext.request.contextPath}/public/imgs/logo.png">
                        </a>
                    </p>
                </div>
                <!--Thanh bên-->
                <nav class="mt-10">
                    <c:if test="${adminlogin}">
                        <div>
                            <a class="w-full text-gray-800  flex items-center pl-6 p-2 my-2 transition-colors duration-200 justify-start border-l-4 border-purple-500"
                               href="${pageContext.request.contextPath}/Admin/Dashboard">
                                    <span class="text-left">
                                        <span class="iconify h-5 w-5" data-icon="ant-design:home-filled"></span>
                                    </span>
                                <span class="mx-2 text-sm font-normal">
                                        Trang chính
                                    </span>
                            </a>
                            <a class="w-full text-gray-400 flex items-center pl-6 p-2 my-2 transition-colors duration-200 justify-start hover:text-gray-800 border-l-4 border-transparent"
                               href="${pageContext.request.contextPath}/Admin/User/">
                                    <span class="text-left">
                                       <span class="iconify" data-icon="bx:bxs-user"></span>
                                    </span>
                                <span class="mx-4 text-sm font-normal">
                                       Người dùng
                                    </span>
                            </a>
                            <a class="w-full text-gray-400 flex items-center pl-6 p-2 my-2 transition-colors duration-200 justify-start hover:text-gray-800 border-l-4 border-transparent"
                               href="${pageContext.request.contextPath}/Admin/Category/">
                                <span class="text-left">
                                    <span class="w-5 h-5 iconify" data-icon="bx:bx-category"></span>
                                </span>

                                <span class="mx-4 text-sm font-normal">
                                        Danh mục
                                    </span>
                            </a>
                            <a class="w-full text-gray-400 flex items-center pl-6 p-2 my-2 transition-colors duration-200 justify-start hover:text-gray-800 border-l-4 border-transparent"
                               href="${pageContext.request.contextPath}/Admin/Books/">
                                    <span class="text-left">
                                        <svg width="20" height="20" fill="currentColor" viewBox="0 0 1792 1792"
                                             xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                    d="M1728 608v704q0 92-66 158t-158 66h-1216q-92 0-158-66t-66-158v-960q0-92 66-158t158-66h320q92 0 158 66t66 158v32h672q92 0 158 66t66 158z">
                                            </path>
                                        </svg>
                                    </span>
                                <span class="mx-4 text-sm font-normal">
                                        Sản phẩm
                                    </span>
                            </a>
                            <a class="w-full text-gray-400 flex items-center pl-6 p-2 my-2 transition-colors duration-200 justify-start hover:text-gray-800 border-l-4 border-transparent"
                               href="${pageContext.request.contextPath}/Admin/RequestOrder">
                                    <span class="text-left">
                                        <svg width="20" height="20" fill="currentColor" viewBox="0 0 2048 1792"
                                             xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                    d="M580 461q0-41-25-66t-66-25q-43 0-76 25.5t-33 65.5q0 39 33 64.5t76 25.5q41 0 66-24.5t25-65.5zm743 507q0-28-25.5-50t-65.5-22q-27 0-49.5 22.5t-22.5 49.5q0 28 22.5 50.5t49.5 22.5q40 0 65.5-22t25.5-51zm-236-507q0-41-24.5-66t-65.5-25q-43 0-76 25.5t-33 65.5q0 39 33 64.5t76 25.5q41 0 65.5-24.5t24.5-65.5zm635 507q0-28-26-50t-65-22q-27 0-49.5 22.5t-22.5 49.5q0 28 22.5 50.5t49.5 22.5q39 0 65-22t26-51zm-266-397q-31-4-70-4-169 0-311 77t-223.5 208.5-81.5 287.5q0 78 23 152-35 3-68 3-26 0-50-1.5t-55-6.5-44.5-7-54.5-10.5-50-10.5l-253 127 72-218q-290-203-290-490 0-169 97.5-311t264-223.5 363.5-81.5q176 0 332.5 66t262 182.5 136.5 260.5zm592 561q0 117-68.5 223.5t-185.5 193.5l55 181-199-109q-150 37-218 37-169 0-311-70.5t-223.5-191.5-81.5-264 81.5-264 223.5-191.5 311-70.5q161 0 303 70.5t227.5 192 85.5 263.5z">
                                            </path>
                                        </svg>
                                    </span>
                                <span class="mx-4 text-sm font-normal">
                                        Đơn Hàng
                                    </span>
                            </a>
                            <a class="w-full text-gray-400 flex items-center pl-6 p-2 my-2 transition-colors duration-200 justify-start hover:text-gray-800 border-l-4 border-transparent"
                               href="${pageContext.request.contextPath}/Admin/Logout">
                                    <span class="text-left">
                                       <span class="iconify" data-icon="entypo:log-out"></span>
                                    </span>
                                <span class="mx-4 text-sm font-normal">
                                        Log out
                                    </span>
                            </a>
                        </div>

                    </c:if>
                </nav>
            </div>
        </div>
        <div class="flex flex-col w-full md:space-y-4">
            <!--
            <h1 class="text-4xl font-semibold text-gray-800 ">
                Wellcome back, Admin
            </h1>
            <h2 class="text-md text-gray-400">
                Here&#x27;s what&#x27;s happening with your website today.
            </h2>
            <div class="mt-10 overflow-auto h-screen pb-24 px-4 md:px-6">
            -->
            <div class="mt-10 overflow-auto h-screen pb-24 px-4">
                <jsp:doBody/>
            </div>

        </div>
    </div>
</main>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
        integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
        crossorigin="anonymous"></script>
<jsp:invoke fragment="js"/>
</body>

</html>