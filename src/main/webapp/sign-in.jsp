<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html lang = "en">
<head>
    <meta charset = "UTF-8">
    <meta content = "width=device-width, initial-scale=1" name = "viewport">
    <title>Sign in</title>
    <link href = "style.css" rel = "stylesheet">
</head>
<body>
<nav>
    <div class = "left">
        <img alt = "Logo" src = "logo/logo.svg">
        <a href = "contests">Contests</a>
    </div>

    <div class = "right">
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

<div class = "form-container">

    <form action = "user" method = "post">
        <h2>Sign in</h2>
        <input name = "command" type = "hidden" value = "sign-in">

        <div>
            <label for = "user">Username</label>
            <input id = "user" name = "username"
                   placeholder = "thisis_mahyar"
                   required
                   type = "text">
        </div>

        <div>
            <label for = "password">Password</label>
            <input id = "password" name = "password" placeholder = "********"
                   required type = "password">
        </div>

        <input id = "submit" type = "submit" value = "Sign in">

    </form>

</div>

</body>
</html>
