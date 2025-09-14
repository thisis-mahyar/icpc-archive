<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Update User</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/user-management.css">
</head>
<body>

<jsp:include page="/nav.jsp"/>

<form action="user-management" method="get"> <!-- get is not recommended -->
    <h2>Update</h2>
    <input type="hidden" name="command" value="update">
    <input type="hidden" name="id" value="${user.id}">
    <input type="text" name="username" placeholder="Username">
    <input type="text" name="email" placeholder="Email">
    <input type="text" name="password" placeholder="Password">
    <input type="submit" value="Add" id="submit">
</form>

</body>
</html>
