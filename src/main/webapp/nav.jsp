<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>ICPC Tehran</title>
    <link rel="stylesheet" href="css/nav.css">
    <link rel="stylesheet" href="css/main.css">
</head>
<body>
<nav>
    <div class="left">
        <a href="#" id="logo"><img alt="Logo" src="logo/logo.svg"></a>
        <a href="contests">Contests</a>
    </div>
    <div class="right">
        <c:if test="${sessionScope.user == null}">
            <a href="sign-in.jsp">Sign in</a>
            <a href="sign-up.jsp">Sign up</a>
        </c:if>

        <c:if test="${sessionScope.user != null}">
            <a href="profile.jsp">Profile</a>
            <a href="user?command=sign-out">Sign out</a>
        </c:if>
    </div>
</nav>
</body>
</html>
