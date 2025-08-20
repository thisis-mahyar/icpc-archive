<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Problems</title>

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


<h1>Problems</h1>

<table>

    <tr>
        <th>Label</th>
        <th>Title</th>
        <trh>Contest ID</trh>
    </tr>

    <c:forEach items="${problems}" var="problem">

        <tr>
            <td>${problem.label}</td>
            <td><a href="/icpc_archive_war_exploded/problem/${problem.id}">${problem.title}</a></td>
            <td>${problem.contestId}</td>
        </tr>

    </c:forEach>

</table>

</body>
</html>
