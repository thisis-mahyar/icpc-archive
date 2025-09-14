<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Contest</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/contest.css">
</head>
<body>
<jsp:include page="/nav.jsp" />
<h2>${contest.year} ICPC Asia Tehran Regional Contest</h2>
<table>
    <c:forEach items = "${contest_problems}" var = "problem">
        <tr>
            <td class = "label"><span>${problem.label}</span></td>
            <td class = "title"><a href = "/problem/${problem.id}">${problem.title}</a></td>
            <c:if test="${sessionScope.user.username == 'admin'}">
                <td class="admin-content">
                    <a href="${pageContext.request.contextPath}/update-problem.jsp?id=${problem.id}">Update</a>
                    <a href="${pageContext.request.contextPath}/problems-management?command=delete&id=${problem.id}">Delete</a>
                </td>
            </c:if>
        </tr>
    </c:forEach>
</table>

<c:if test="${sessionScope.user.username == 'admin'}">

    <form action="problems-management" method="post">
        <h2>Add problem</h2>
        <input type="hidden" name="contest-id" value="${problem.contest.id}">
        <input type="text" name="label" placeholder="Label">
        <input type="text" name="title" placeholder="Title">
        <input type="text" name="description" placeholder="Description">
        <input type="text" name="input" placeholder="Input">
        <input type="text" name="output" placeholder="Output">
        <input type="submit" value="Add" id="submit">
    </form>

</c:if>

</body>
</html>
