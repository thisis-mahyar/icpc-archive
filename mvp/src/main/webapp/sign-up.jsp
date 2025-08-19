<%@ page contentType = "text/html;charset=UTF-8" %>
<html>
<head>
    <title>Sign up</title>
</head>
<body>
<form action = "user" method = "post">

    <input type = "hidden" name = "command" value = "sign-up">

    <label for = "user">
        User:
        <input name = "username" type = "text" id = "user">
    </label>

    <label for = "email">
        Email:
        <input name = "email" type = "email" id = "email">
    </label>

    <label for = "password">
        Password:
        <input name = "password" type = "password" id = "password">
    </label>

    <label for = "confirm-password">
        Confirm Password:
        <input name = "confirm_password" type = "password" id = "confirm-password">
    </label>

    <input type = "submit" value = "Submit">

</form>

</body>
</html>
