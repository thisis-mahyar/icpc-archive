<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
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


<h2>OUTPUT</h2>
${output.stdout}

</body>
</html>
