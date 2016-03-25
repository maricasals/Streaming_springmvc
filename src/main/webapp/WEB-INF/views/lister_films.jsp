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
        <div><a href="<c:url value="/new_film"/>" style="text-align: right">New Film</a></div>
        <br/>
        <div style="font-size: 40px; text-align: center">Liste des Films disponibles en ligne</div>
        <br/>
        <c:forEach items="${mesFilms}" var="monFilm">
            <table style="align-items: center" style="font-size: 20px; text-align: center">
                <tr>
                    <td>
                       ${monFilm.id}.
                    </td>
                    <td>
                        <a href="<c:url value="/id/${monFilm.id}/titre/${monFilm.titre}"/>">${monFilm.titre}</a>
                    </td>
                </tr>
            </table>
            <br/>
        </c:forEach>
    </body>
</html>
