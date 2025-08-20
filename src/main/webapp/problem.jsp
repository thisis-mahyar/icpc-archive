<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Problem</title>
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


<h1>${problem.label}: ${problem.title}</h1>

<div>
    ${problem.description}
</div>

<h2>Input</h2>

${problem.input}

<h2>Output</h2>

${problem.output}


<form action="${pageContext.request.contextPath}/judge" method="get">
    <label>
        Input:
        <textarea name="input" cols="50" rows="20"></textarea>
    </label>

    <label>
        Source Code:
        <textarea name="source_code" cols="50" rows="20"></textarea>
    </label>
    <input type="submit" value="Submit">

</form>

</body>
</html>
