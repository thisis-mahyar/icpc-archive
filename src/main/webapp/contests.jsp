<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Contests</title>
    <link rel = "stylesheet" href = "style.css">
</head>
<body>

<nav>
    <div class = "left">
        <img class="contest-logo" alt = "Logo" src = "logo/logo.svg">
        <a href = "contests">Contests</a>
    </div>

    <div class = "right">
        <c:if test = "${sessionScope.user == null}">
            <a href = "sign-in.jsp">Sign in</a>
            <a href = "sign-up.jsp">Sign up</a>
        </c:if>

        <c:if test = "${sessionScope.user != null}">
            <a href = "profile.jsp">Profile</a>
            <a href = "user?command=sign-out">Sign out</a>
        </c:if>
    </div>
</nav>

<h1>Contests</h1>

<table>

    <c:forEach items = "${contests}" var = "contest">

        <tr>
            <td>
                <img src = "icon/contest.svg" alt = "Contest">
            </td>
            <td>
                <a href = "/contest/${contest.id}">
                        ${contest.year} ICPC Asia Tehran Regional Contest
                </a>
                <span>X Problems</span>
            </td>
        </tr>

    </c:forEach>

</table>

</body>
</html>
