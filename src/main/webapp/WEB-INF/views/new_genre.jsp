<%-- 
    Document   : new_genre
    Created on : 25 mars 2016, 11:23:57
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div><a href=<c:url value="/new_genre"/> style="text-align: right">New Genre</a></div>
        <form:form modelAttribute="newGenre" action="ajouter_genre" method="post">
            <table>
            <tr>
                <td>
                    <label>Genre</label>
                </td>
                <td>
                    <input type="text" name="genre" id="genre" required="true"/>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Description</label>
                </td>
                <td>
                    <input type="text" name="description" id="description" required="false"/>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" name="ajouter" id="ajouter" value="Ajouter" <c:url value="/ajouter_genre"/>/>
                </td>
            </tr>
        </table>
        </form:form>
    </body>
</html>
