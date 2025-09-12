<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
    <title>Profile</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/profile.css">
</head>
<body>
<jsp:include page="/nav.jsp" />

<h2>
    <c:if test="${sessionScope.user == null}">
        WHY ARE YOU NULL?
    </c:if>
    <c:if test="${sessionScope.user != null}">
        ${sessionScope.user.username}
    </c:if>
</h2>

</body>
</html>
