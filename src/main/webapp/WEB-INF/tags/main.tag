<%@ tag pageEncoding="utf-8" %>
<%@attribute name="css" fragment="true" required="false" %>
<%@attribute name="js" fragment="true" required="false" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Vinabook - hiệu sách online trực tuyến cho mọi người</title>
    <link href="${pageContext.request.contextPath}/public/imgs/favicons.ico" rel="shortcut icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
          integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/styles/index.css">
    <jsp:invoke fragment="css"/>
</head>
<body>
<div class="container-fluid p-0">
    <jsp:include page="../../partials/nav.jsp"/>
    <jsp:doBody/>
</div>
<jsp:include page="../../partials/footer.jsp"/>


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
        crossorigin="anonymous"></script>

<script>
    let badgeEm = document.querySelector('.badge');
    badgeEm.classList.add('d-none');

    let search_data = document.querySelector(".search-data");
    let search_btn = document.querySelector(".btn-search");
    search_btn.addEventListener("click", () => {
        localStorage.setItem("searchData", search_data.value)
    });
    let discount = document.querySelectorAll(".discount");
    let price_origin = document.querySelectorAll(".price-origin")
    for (let i = 0; i < discount.length; i++) {
        if (discount[i].innerText == "-0%") {
            discount[i].classList.add("hide");
            price_origin[i].classList.add("hide");
        }
    }
</script>
<jsp:invoke fragment="js"/>
</body>
</html>
