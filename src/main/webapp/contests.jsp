<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Contests</title>
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/contests.css">
</head>
<body>
<jsp:include page="nav.jsp"/>
<h2>Contests</h2>
<table>
    <c:forEach items="${contests}" var="contest">
        <tr>
            <td class="icon">
                <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 512 512">
                    <path fill="#000"
                          d="M320 32H192a32 32 0 0 0-32 32v412a4 4 0 0 0 4 4h184a4 4 0 0 0 4-4V64a32 32 0 0 0-32-32m144 160h-72a8 8 0 0 0-8 8v272a8 8 0 0 0 8 8h80a24 24 0 0 0 24-24V224a32 32 0 0 0-32-32M48 128a32 32 0 0 0-32 32v296a24 24 0 0 0 24 24h80a8 8 0 0 0 8-8V136a8 8 0 0 0-8-8Z"></path>
                </svg>
            </td>
            <td class="content">
                <a href="/contest/${contest.id}">
                        ${contest.year} ICPC Asia Tehran Regional Contest
                </a>
                <span>${contest.questionNo} Problems</span>
            </td>
            <c:if test="${sessionScope.user.username == 'admin'}">
                <td class="admin-content">
                    <a href="${pageContext.request.contextPath}/update-contest.jsp?id=${contest.id}">Update</a>
                    <a href="${pageContext.request.contextPath}/contests-management?command=delete&id=${contest.id}">Delete</a>
                </td>
            </c:if>
        </tr>
    </c:forEach>
</table>

<c:if test="${sessionScope.user.username == 'admin'}">

    <form action="contests-management" method="post">
        <h2>Create contest</h2>
        <input type="text" name="year" placeholder="Year">
        <input type="submit" value="Add" id="submit">
    </form>

</c:if>

</body>
</html>
