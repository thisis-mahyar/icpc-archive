<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Contest</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
</head>
<body>
<jsp:include page="/nav.jsp" />
<h2>${contest.year} ICPC Asia Tehran Regional Contest</h2>
<table>
    <c:forEach items = "${contest_problems}" var = "problem">
        <tr>
            <td class = "label">${problem.label}</td>
            <td class = "title"><a href = "/problem/${problem.id}">${problem.title}</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
