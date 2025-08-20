<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Contest</title>
    <script src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"></script>
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


<h1>${contest.year}</h1>

<table>

    <tr>
        <th>Label</th>
        <th>Title</th>
    </tr>

    <c:forEach items="${contest-problems}" var="problem">

        <tr>
            <td>${problem.label}</td>
            <td><a href="/icpc_archive_war_exploded/problem/${problem.id}">${problem.title}</a></td>
        </tr>

    </c:forEach>

</table>

</body>
</html>
