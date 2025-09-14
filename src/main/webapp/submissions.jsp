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
    <th>Token</th>
    <th>Language</th>
    <th>Submission Time</th>
    <th>Username</th>
    <th>Problem</th>

    <c:forEach items="${submissions}" var="submission">
        <tr>
            <td>${submission.token}</td>
            <td>${submission.language}</td>
            <td>${submission.submissionTime}</td>
            <td>${submission.user.username}</td>
            <td>${submission.problem.title}</td>
            <td><a href="${pageContext.request.contextPath}/submissions?command=delete&id=${submission.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
