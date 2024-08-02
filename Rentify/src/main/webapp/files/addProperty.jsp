<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Property</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/all.min.css">
    <style type="text/css">
        <%@include file="style.css" %>
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Merriweather+Sans&family=Montserrat:wght@200;300;700&family=Sacramento&family=Ubuntu:wght@700&display=swap" rel="stylesheet">
</head>
<body>

<h1 class="head">
    Rentify <i class="fa-solid fa-bolt-lightning"></i>
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

<main class="signup-main">
    <div class="register">
        <form class="form" action="addProperty" method="post" enctype="multipart/form-data">
            <table>
                <tr>
                    <td><label for="name">Property Name:</label></td>
                    <td><input class="field" type="text" id="name" name="propertyName" required></td>
                </tr>
                <tr>
                    <td><label for="sellerName">Seller Name:</label></td>
                    <td>
                        <input class="field" type="text" id="sellerName" name="sellerName" required>
                        <input type="hidden" name="sellerId" value="${sellerId}">
                        <input type="hidden" name="firstName" value="${firstName}">
                        <input type="hidden" name="sellerName" value="${firstName}">
                        <input type="hidden" name="sellerNumber" value="${sellerNumber}">
                    </td>
                </tr>
                <tr>
                    <td><label for="location">Location:</label></td>
                    <td><input class="field" type="text" id="location" name="area" required></td>
                </tr>
                <tr>
                    <td><label for="price">Price:</label></td>
                    <td><input class="field" type="text" id="price" name="price" required></td>
                </tr>
                <tr>
                    <td><label for="bedrooms">Bedrooms:</label></td>
                    <td><input class="field" type="number" id="bedrooms" name="bedrooms" required></td>
                </tr>
                <tr>
                    <td><label for="bathrooms">Bathrooms:</label></td>
                    <td><input class="field" type="number" id="bathrooms" name="bathrooms" required></td>
                </tr>
                <tr>
                    <td><label for="nearby">Nearby Spots:</label></td>
                    <td><textarea class="field" id="nearby" name="nearby" required></textarea></td>
                </tr>
                <tr>
                    <td><label for="sellerNumber">Seller Contact:</label></td>
                    <td><input class="field" type="number" id="sellerNumber" name="sellerNumber" required></td>
                </tr>
                <tr>
                    <td><label for="file">Image File:</label></td>
                    <td><input type="file" name="file" id="file" accept="image/*" required></td>
                </tr>
            </table>
            <button class="calc c1" type="submit">
                <i class="fa-solid fa-circle-check"></i>
            </button>
            <button class="calc c2" type="reset">
                <i class="fa-solid fa-circle-xmark"></i>
            </button>
        </form>
    </div>
</main>

</body>
</html>





<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Add Property</title>--%>
<%--    <link rel="stylesheet" href="style.css">--%>
<%--    <link rel="stylesheet" href="css/all.min.css">--%>
<%--    <style type="text/css">--%>
<%--        <%@include--%>
<%--                file = "style.css"--%>
<%--        %>--%>
<%--    </style>--%>
<%--    <link rel="stylesheet"--%>
<%--          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">--%>
<%--    <link rel="preconnect" href="https://fonts.googleapis.com">--%>
<%--    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>--%>
<%--    <link href="https://fonts.googleapis.com/css2?family=Merriweather+Sans&family=Montserrat:wght@200;300;700&family=Sacramento&family=Ubuntu:wght@700&display=swap"--%>
<%--          rel="stylesheet">--%>
<%--</head>--%>
<%--<body>--%>

<%--<h1 class="head">--%>
<%--    Rentify <i class="fa-solid fa-bolt-lightning"></i>--%>
<%--</h1>--%>

<%--<div class="log full">--%>
<%--    <form action="sellerHome" >--%>
<%--        <button class="calc full" type="submit">Home <i class="fa-solid fa-user "></i></button>--%>
<%--        <input type="hidden" name="sellerId" value=${sellerId}>--%>
<%--        <input type="hidden" name="firstName" value=${firstName}>--%>
<%--    </form>--%>
<%--    <div class="space"></div>--%>
<%--    <form action="sellerLogout">--%>
<%--        <button class="calc full" type="submit">Logout <i class="fa-solid fa-user-check"></i></button>--%>
<%--    </form>--%>
<%--</div>--%>

<%--    <main class="signup-main">--%>
<%--    <div class="register">--%>
<%--        <form class="form" action="addProperty" method="post">--%>
<%--            <table>--%>
<%--                <tr>--%>
<%--                    <td><label for="name">Property Name:</label></td>--%>
<%--                    <td><input class="field" type="text" id="name" name="propertyName" required></td>--%>
<%--                </tr>--%>
<%--                <tr>--%>
<%--                    <td><label for="sellerName">Seller Name:</label></td>--%>

<%--                    <td><input class="field" type="text" id="sellerName" name="sellerName" required>--%>

<%--                    <input type="hidden" name="sellerId" value=${sellerId}>--%>
<%--                        <input type="hidden" name="firstName" value=${firstName}>--%>
<%--                        <input type="hidden" name="sellerName" value=${firstName}>--%>
<%--                        <input type="hidden" name="sellerNumber" value=${sellerNumber}>--%>
<%--                    </td>--%>
<%--                </tr>--%>
<%--                <tr>--%>
<%--                    <td><label for="location">Location:</label></td>--%>
<%--                    <td><input class="field" type="text" id="location" name="area" required></td>--%>
<%--            </tr>--%>
<%--                <tr>--%>
<%--                    <td><label for="price">Price:</label></td>--%>
<%--                    <td><input class="field" type="text" id="price" name="price" required></td>--%>
<%--            </tr>--%>
<%--                <tr>--%>
<%--                    <td><label for="bedrooms">Bedrooms:</label></td>--%>
<%--                    <td><input class="field" type="number" id="bedrooms" name="bedrooms" required></td>--%>
<%--            </tr>--%>
<%--                <tr>--%>
<%--                    <td><label for="bathrooms">Bathrooms:</label></td>--%>
<%--                    <td><input class="field" type="number" id="bathrooms" name="bathrooms" required></td>--%>
<%--            </tr>--%>
<%--                <tr>--%>
<%--                    <td><label for="nearby">Nearby Spots:</label></td>--%>
<%--                    <td><textarea class="field" id="nearby" name="nearby" required></textarea></td>--%>
<%--                </tr>--%>

<%--                <tr>--%>
<%--                    <td><label for="sellerNumber">Seller Contact:</label></td>--%>
<%--                    <td><input class="field" type="number"  id="sellerNumber" name="sellerNumber" required></td>--%>
<%--                </tr>--%>

<%--                <tr>--%>
<%--                    <td><label for="file">Image File:</label></td>--%>
<%--                    <td><input type="file" name="file" id="file" accept="image/*" required></td>--%>
<%--                </tr>--%>

<%--            </table>--%>
<%--            <button class="calc c1" type="submit">--%>
<%--                <i class="fa-solid fa-circle-check"></i>--%>
<%--            </button>--%>
<%--            <button class="calc c2" type="reset">--%>
<%--                <i class="fa-solid fa-circle-xmark"></i>--%>
<%--            </button>--%>
<%--        </form>--%>
<%--    </div>--%>
<%--    </main>--%>

<%--</body>--%>
<%--</html>--%>
