<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Update Contest</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/contests.css">
</head>
<body>

<jsp:include page="/nav.jsp"/>

<form action="contests-management" method="get">
    <h2>Create contest</h2>
    <input type="hidden" name="command" value="update">
    <input type="hidden" name="id" value="<%= request.getParameter("id") %>">
    <input type="text" name="year" placeholder="Year">
    <input type="submit" value="Create" id="submit">
</form>

</body>
</html>
