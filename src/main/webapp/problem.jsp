<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Problem</title>
    <link rel = "stylesheet" href = "${pageContext.request.contextPath}/css/main.css">
    <link rel = "stylesheet" href = "${pageContext.request.contextPath}/css/problem.css">
</head>
<body>
<jsp:include page = "nav.jsp"/>
<main>
    <div class = "problem">
        <div class = "label-title">
            <h2>${problem.label}</h2>
            <h2>${problem.title}</h2>
        </div>
        <p>${problem.description}</p>
        <h3>Input</h3>
        <p>${problem.input}</p>
        <h3>Output</h3>
        <p>${problem.output}</p>
        <form action = "${pageContext.request.contextPath}/judge" method = "get">
            <h3>Source Code</h3>
            <textarea name = "source_code" cols = "50" rows = "20"></textarea>
            <input id = "submit" type = "submit" value = "Submit">
        </form>
    </div>
</main>

<script>
    window.MathJax = {
        tex: {
            inlineMath: [['$', '$'], ['\\(', '\\)']]
        }
    };
</script>
<script defer src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"></script>

</body>
</html>
