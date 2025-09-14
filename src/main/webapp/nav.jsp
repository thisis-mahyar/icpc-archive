<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">
<head>
    <title>ICPC Tehran</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/nav.css">
</head>
<body>
<nav>
    <div class="left">
        <a href="${pageContext.request.contextPath}/" id="logo"><img alt="Logo" src="${pageContext.request.contextPath}/logo/logo.svg"></a>
        <a href="${pageContext.request.contextPath}/contests">Contests</a>
        <c:if test="${sessionScope.user.username == 'admin'}">
            <a href="${pageContext.request.contextPath}/user-management">Users</a>
            <a href="${pageContext.request.contextPath}/submissions">Submissions</a>
        </c:if>
    </div>
    <div class="right">
        <c:if test="${sessionScope.user == null}">
            <a href="${pageContext.request.contextPath}/sign-in.jsp">Sign in</a>
            <a href="${pageContext.request.contextPath}/sign-up.jsp">Sign up</a>
        </c:if>

        <c:if test="${sessionScope.user != null}">
            <a href="${pageContext.request.contextPath}/profile.jsp">Profile</a>
            <a href="${pageContext.request.contextPath}/user?command=sign-out">Sign out</a>
        </c:if>
    </div>
</nav>
</body>
</html>
