<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Users page</title>
    <link href="resources/style.css" rel="stylesheet">
</head>
<body>
<div class="block">
    <div class="header">
        //Administrator ${user.name}
    </div>
    <div class="content">
        <table>
            <tr>
                <th>id</th>
                <th>name</th>
                <th>surname</th>
                <th>photo</th>
                <th>       </th>
                <th>       </th>
            </tr>
            <c:forEach var="user" items="${users}">
                <tr>
                    <td><input type="text" name="key" value="${user.key}"></td>
                    <td><input type="text" name="key" value="${user.name}"></td>
                    <td><input type="text" name="key" value="${user.surname}"></td>
                    <td><img src="${user.photoPath}" width="40" alt="no photo"> </td>
                    <td><a href="Front?command=remove_user&key=${user.key}">remove</a></td>
                    <td><a href="Front?command=edit_user&key=${user.key}">edit</a></td>
                </tr>
                <input type="hidden" name="type" value="${user.className}">
            </c:forEach>

<%--            <tr>--%>
<%--               <td> <form method="post" action="admin/addUser.jsp">--%>
<%--                    <input type="hidden" name="command" value="addUser">--%>

<%--                    "create new user"&nbsp;&nbsp;&nbsp;&nbsp;--%>
<%--                    <input type="submit" value="add">--%>
<%--                </form>--%>
<%--               </td>--%>
<%--            </tr>--%>
        </table><br/><br/>
        <a href="addUser.jsp">add user</a >
    </div>
    <div class="footer">
        <a href="Front?command=logout">Logout</a>
    </div>
</div>
</body>
</html>