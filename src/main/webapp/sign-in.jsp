<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Sign in</title>
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


<form action="user" method="post">

    <input type="hidden" name="command" value="sign-in">

    <input name="username" type="text" id="username" placeholder="Username" required>
    <input name="password" type="password" id="password" placeholder="Password" required>

    <input type="submit" value="Sign in">

</form>

</body>
</html>
