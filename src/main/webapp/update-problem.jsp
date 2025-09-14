<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Update Problem</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/contests.css">
</head>
<body>

<jsp:include page="/nav.jsp"/>

<form action="problems-management" method="get">
    <h2>Update problem</h2>
    <input type="hidden" name="command" value="update">
    <input type="hidden" name="problem-id" value="<%= request.getParameter("id") %>">
    <input type="text" name="label" placeholder="Label">
    <input type="text" name="title" placeholder="Title">
    <input type="text" name="description" placeholder="Description">
    <input type="text" name="input" placeholder="Input">
    <input type="text" name="output" placeholder="Output">
    <input type="submit" value="Add" id="submit">
</form>

</body>
</html>
