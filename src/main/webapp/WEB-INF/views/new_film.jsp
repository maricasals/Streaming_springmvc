<%-- 
    Document   : new_film
    Created on : 25 mars 2016, 10:33:48
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form:form modelAttribute="newFilm" action="ajouter_film" method="post">
            <table>
                <tr>
                    <td>
                        <label>Titre</label>
                    </td>
                    <td>
                        <form:input path="titre"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Genre</label>
                    </td>
                    <td>
                        <form:select path="genre.id">
                            <form:options items="${mesGenres}" itemLabel="nom" itemValue="id"/>
                        </form:select>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Synopsis</label>
                    </td>
                    <td>
                        <form:input path="synopsis"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Anne de production</label>
                    </td>
                    <td>
                        <form:input path="anneeProd"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Ajouter">
                    </td>
                </tr>
            </table>
        </form:form>
    </body>
</html>
