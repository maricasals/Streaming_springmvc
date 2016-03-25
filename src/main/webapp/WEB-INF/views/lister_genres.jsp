<%-- 
    Document   : lister_films
    Created on : 25 mars 2016, 11:55:06
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:forEach items="${mesGenres}" var="monGenre">
            ${monGenre.genre};
        </c:forEach>
    </body>
</html>
