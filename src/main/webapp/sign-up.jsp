<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Sign up</title>
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

    <input type="hidden" name="command" value="sign-up">

    <input name="username" type="text" id="user" placeholder="Username" required>
    <input name="email" type="email" id="email" placeholder="Email" required>
    <input name="password" type="password" id="password" placeholder="Password" required>
    <input name="confirm_password" type="password" id="confirm-password" placeholder="Confirm Password" required>

    <input type="submit" value="Sign up">

</form>

</body>
</html>
