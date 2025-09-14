<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">
<head>
    <title>Problem</title>
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/submission.css">
    <link rel="stylesheet" href="css/nav.css">
</head>
<body>
<jsp:include page="/nav.jsp"/>
<main>
    <div class="submission">
        <div class="header">
            <c:if test="${submission_response_dto.status.description eq 'Accepted'}">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 512 512"
                     class="accepted-svg">
                    <path fill="#000" d="M437.3 30L202.7 339.3L64 200.7l-64 64L213.3 478L512 94z"></path>
                </svg>
            </c:if>
            <c:if test="${submission_response_dto.status.description eq 'Wrong Answer'}">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 64 64"
                     class="wrong-answer-svg">
                    <path fill="#000"
                          d="M62 10.571L53.429 2L32 23.429L10.571 2L2 10.571L23.429 32L2 53.429L10.571 62L32 40.571L53.429 62L62 53.429L40.571 32z"></path>
                </svg>
            </c:if>
            <h2>Submission</h2>
        </div>
        <div class="tags">
            <span class="time">${submission_response_dto.time * 1000} ms</span>
            <span class="memory">${submission_response_dto.memory} kB</span>
            <span class="language">${language}</span>
            <span class="passed-tests">12/12</span>
            <span class="contest-year">${contest_year}</span>
            <span class="problem-title">${problem_title}</span>
            <span class="time">${submission_time}</span>
        </div>
    </div>
    <pre class="source-code">${source_code}</pre>
</main>
</body>
</html>
