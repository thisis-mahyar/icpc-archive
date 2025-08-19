<%@ page contentType = "text/html;charset=UTF-8" %>
<html>
<head>
    <title>Sign in</title>
</head>
<body>

<form action = "user" method = "post">

    <input type = "hidden" name = "command" value = "sign-in">

    <label for = "user">
        User
        <input type = "text" id = "user">
    </label>
    <label for = "password">
        Password
        <input type = "password" id = "password">
    </label>
    <input type = "submit" value = "Submit">

</form>

</body>
</html>
