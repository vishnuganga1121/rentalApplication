<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.util.Base64" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="javax.swing.*" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Properties</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/all.min.css">
    <style type="text/css">
        <%@include file="style.css"%>

    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Merriweather+Sans&family=Montserrat:wght@200;300;700&family=Sacramento&family=Ubuntu:wght@700&display=swap" rel="stylesheet">

</head>
<body>
<div class="overlay">

</div>
<h1 class="head">
    Rentify <i class="fa-solid fa-house"></i></i>
</h1>


<div class="log full">

    <div class="space"></div>
    <form action="buyerLogout">
        <button class="calc full" type="submit">Logout <i class="fa-solid fa-user-check"></i></button>
    </form>
</div>

<section class="portfolio-section sec-padding " id="portfolio">
    <div class="properties-container">
        <h2 class="section-title">View Properties <i class="fa-solid fa-house"></i></h2>
        <!-- Search and Filter Form -->
        <form method="get" action="filterProperty">
            <input class="btn" type="text" name="searchQuery" placeholder="Search..." value="${param.searchQuery}">
            <input type="hidden" name="number" value=${user.getPhoneNumber()}>
            <input type="hidden" name="firstName" value=${user.getFirstName()}>
            <select class="btn" name="filterType">
                <option value="name" ${param.filterType == 'name' ? 'selected' : ''}>Name</option>
                <option value="location" ${param.filterType == 'location' ? 'selected' : ''}>Location</option>
                <option value="price" ${param.filterType == 'price' ? 'selected' : ''}>Price</option>
                <option value="all" ${param.filterType == 'all' ? 'selected' : ''}>All</option>
            </select>
            <button type="submit" class="btn">Search</button>
        </form>

        <div class="properties">
            <!-- Loop through properties -->
            <c:forEach var="property" items="${properties}" varStatus="loop">
                <%
                    //String base64Image = Base64.getEncoder().encodeToString(${property.getImage()}); %>

                <div class="property">
                    <div class="property-thumbnail">
<%--                        /files/electrictower1old.jpg--%>
                        <img src="/files/electrictower1old${loop.index}.jpg" alt="${property.getPropertyName()}">
                    </div>
                    <h3>${property.getPropertyName()} <i class="fa-sharp fa-solid fa-feather-pointed"></i></h3>
                    <p><strong>Location:</strong> ${property.getArea()}</p>
                    <p><strong>Price:</strong> ${property.getPrice()}/month</p>
                    <p><strong>Description:</strong> ${property.getNearby()}</p>
                    <p><strong>Seller Name:</strong> ${property.getSellerName()}</p>
                    <p><strong>Contact :</strong> +91 ${property.getSellerNumber()}</p>
                    <form action="like" method="post">
                    <button type="button" class="btn view-project-btn" onclick="showPopup(${property})">View Details </button>

                    <button class="calc c1" type="submit" >
                        <input type="hidden" name="email" value=${user.getEmail()}${email}>
                        <input type="hidden" name="id" value=${property.getId()}>
                        <i class="fa-solid fa-heart"></i>
                    </button>
                    </form>

                </div>

            </c:forEach>
        </div>

        <!-- Pagination controls -->
        <div class="pagination">
            <c:if test="${currentPage > 1}">
                <a href="?page=${currentPage - 1}">&laquo; Previous</a>
            </c:if>
            <c:forEach var="i" begin="1" end="${totalPages}">
                <a href="?page=${i}" class="${i == currentPage ? 'active' : ''}">${i}</a>
            </c:forEach>
            <c:if test="${currentPage < totalPages}">
                <a href="?page=${currentPage + 1}">Next &raquo;</a>
            </c:if>
        </div>
    </div>
</section>

<!-- Popup overlay -->
<div id="popup-overlay" class="popup-overlay" onclick="closePopup()"></div>

<!-- Popup -->
<%--<div id="popup" class="popup">--%>
<%--    <div class="popup-content">--%>
<%--        <h3 id="popup-title"></h3>--%>
<%--        <p><strong>Location:</strong> <span id="popup-location"></span></p>--%>
<%--        <p><strong>Price:</strong> <span id="popup-price"></span></p>--%>
<%--        <p><strong>Description:</strong> <span id="popup-description"></span></p>--%>
<%--        <p><strong>Seller Name:</strong> <span id="popup-seller-name"></span></p>--%>
<%--        <p><strong>Contact Number:</strong> <span id="popup-contact-number"></span></p>--%>
<%--        <button type="button" class="close-btn" onclick="closePopup()">Close</button>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<div id="popup" class="popup-overlay">--%>
<%--    <div class="popup-content">--%>
<%--        <span class="close-button">&times;</span>--%>
<%--        <h3 id="popup-title">Property Title</h3>--%>
<%--        <p id="popup-description">Property Description</p>--%>
<%--        <img id="popup-image" src="" alt="Property Image">--%>
<%--    </div>--%>
<%--</div>--%>
<%--<script>--%>
<%--    document.querySelectorAll('.view-details-btn').forEach(button => {--%>
<%--        button.addEventListener('click', function() {--%>


</script>
</body>
</html>
