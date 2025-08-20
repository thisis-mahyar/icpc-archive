<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Contests</title>

</head>
<body>

<a href="contests">Contests</a>
<a href="problems">Problems</a>

<c:if test="${sessionScope.user == null}">
    <a href="sign-in.jsp">SIGN IN</a>
    <a href="sign-up.jsp">SIGN UP</a>
</c:if>

<c:if test="${sessionScope.user != null}">
    <a href="profile.jsp">PROFILE</a>
    <a href="user?command=sign-out">SIGN OUT</a>
</c:if>


<h1>Contests</h1>

<table>

    <tr>
        <th>Year</th>
    </tr>

    <c:forEach items="${contests}" var="contest">

        <tr>
            <td><a href="/icpc_archive_war_exploded/contest/${contest.id}">${contest.year}</a></td>
        </tr>

    </c:forEach>

</table>

</body>
</html>
