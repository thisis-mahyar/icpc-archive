<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin.css">
</head>
<body>
<jsp:include page="/nav.jsp"/>

<form action="admin" method="get">
    <h2>Update</h2>
    <input type="hidden" name="command" value="update">
    <input type="hidden" name="id" value="${user.id}">
    <input type="text" name="username" placeholder="Username">
    <input type="text" name="email" placeholder="Email">
    <input type="text" name="password" placeholder="Password">
    <input type="submit" value="Add">
</form>

</body>
</html>
