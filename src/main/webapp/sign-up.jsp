<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">
<head>
    <title>Sign up</title>
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/form.css">
</head>
<body>
<jsp:include page="nav.jsp"/>
<main class="container">
    <form action="user" method="post">
        <h2>Sign up</h2>
        <input name="command" type="hidden" value="sign-up">
        <div>
            <label for="user">Username</label>
            <input id="user" name="username"
                   placeholder="thisis_mahyar"
                   required
                   type="text">
        </div>
        <div>
            <label for="email">Email</label>
            <input id="email" name="email"
                   placeholder="mahyarstate@gmail.com" required
                   type="email">
        </div>
        <div>
            <label for="password">Password</label>
            <input id="password" name="password" placeholder="********"
                   required type="password">
        </div>
        <div>
            <label for="confirm-password">Confirm Password</label>
            <input id="confirm-password" name="confirm_password"
                   placeholder="********"
                   required type="password">
        </div>
        <input id="submit" type="submit" value="Sign up">
    </form>
</main>
</body>
</html>
