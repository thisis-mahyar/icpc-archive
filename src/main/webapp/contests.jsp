<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Contests</title>
    <link rel="stylesheet" href="css/main.css">
</head>
<body>
<jsp:include page="nav.jsp"/>
<h2>Contests</h2>
<table>
    <c:forEach items="${contests}" var="contest">
        <tr>
            <td>
                <img src="icon/contest.svg" alt="Contest">
            </td>
            <td>
                <a href="/contest/${contest.id}">
                        ${contest.year} ICPC Asia Tehran Regional Contest
                </a>
                <span>X Problems</span>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
