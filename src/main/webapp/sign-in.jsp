<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">
<head>
    <title>Sign in</title>
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/form.css">
</head>
<body>
<jsp:include page="nav.jsp"/>
<main class="container">
    <form action="user" method="post">
        <h2>Sign in</h2>
        <input name="command" type="hidden" value="sign-in">
        <div>
            <label for="user">Username</label>
            <input id="user" name="username"
                   placeholder="thisis_mahyar"
                   required
                   type="text">
        </div>
        <div>
            <label for="password">Password</label>
            <input id="password" name="password" placeholder="********"
                   required type="password">
        </div>
        <input id="submit" type="submit" value="Sign in">
    </form>
</main>
</body>
</html>
