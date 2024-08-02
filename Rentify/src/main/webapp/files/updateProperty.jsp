<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Updated Appointments</title>
    <style type="text/css">
        <%@include
        file = "style.css"
        %>

        <%-- <%@include
        file = "css/all.min.css"
        %> --%>

        /*.mega*/
        /*{*/
        /*    color:red;*/
        /*}*/
        body
        {
            background: linear-gradient(to left top,
            rgba(241, 175, 52, 0.8),
            rgba(255, 240, 250,0.5)

            );
            min-height: 100vh;
        }
        .boxLine {
            border: 1px solid #00092C; /* 1px border width, solid style, and #00092C color */
            border-radius: 3px; /* 3px border radius */
        }
        .headC{
            color: #00092C;
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</head>
<body>
<h1 class="head headC">
    Rentify  <i class="fa-solid fa-house"></i>
</h1>

<div class="log full">
    <form action="sellerHome" >
        <button class="calc full" type="submit">Home <i class="fa-solid fa-user "></i></button>
        <input type="hidden" name="sellerId" value="${sellerId}">
        <input type="hidden" name="firstName" value="${firstName}">
    </form>
    <div class="space"></div>
    <form action="sellerLogout">
        <button class="calc full" type="submit">Logout <i class="fa-solid fa-user-check"></i></button>
    </form>
</div>
<div class="boxLine">

    <table class="table table-hover">
        <thead>
        <tr>
            <th scope="col">Property Name</th>
            <th scope="col">Owner Name</th>
            <th scope="col">Price</th>
            <th scope="col">Location</th>
            <th scope="col">Nearby</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${properties}" var="property">
            <tr>
                <td>${property.getPropertyName() }</td>
<%--                <td> <span class="${mega }">${app.getPname()}</span>  </td>--%>
                <td>${property.getSellerName() }</td>
                <td>${property.getPrice() }</td>
                <td>${property.getArea() }</td>
                <td>${property.getNearby() }</td>
                <td>${property.getSellerNumber() }</td>
                <td>
                    <form action="getPropertyDetailsForUpdate">
                        <input type="hidden" name="selelrId" value="${property.getSellerId() }">
                        <input type="hidden" name="sellerName" value="${property.getSellerName() }">
                        <input type="hidden" name="id" value="${property.getId() }}">
                        <input type="hidden" name="propertyName" value="${property.getPropertyName() }">
                        <input type="hidden" name="area" value="${property.getArea() }">
                        <input type="hidden" name="price" value="${property.getPrice() }">
                        <input type="hidden" name="nearby" value="${property.getNearby() }">
                        <input type="hidden" name="sellerNumber" value="${property.getSellerNumber() }">
                        <input class="sub" type="submit" value="Update Details" />
                    </form>
                </td>

            </tr>
        </c:forEach>

        </tbody>

    </table>
</div>
</body>
</html>