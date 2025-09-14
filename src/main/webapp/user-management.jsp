<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/user-management.css">
</head>
<body>
<jsp:include page="/nav.jsp"/>

<table>
    <th>Name</th>
    <th>Email</th>
    <th>Update</th>
    <th>Delete</th>

    <c:forEach items="${users}" var="user">
        <tr>
            <td>${user.username}</td>
            <td>${user.email}</td>
            <td><a href="${pageContext.request.contextPath}/update.jsp?id=${user.id}">Update</a></td>
            <td><a href="${pageContext.request.contextPath}/user-management?command=delete&id=${user.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>

<form action="user-management" method="post">
    <h2>Add a user</h2>
    <input type="text" name="username" placeholder="Username">
    <input type="text" name="email" placeholder="Email">
    <input type="text" name="password" placeholder="Password">
    <input type="submit" value="Add" id="submit">
</form>

</body>
</html>
