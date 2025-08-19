<%@ page contentType = "text/html; charset=UTF-8" pageEncoding = "UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Problem A - Micromasters</title>
    <link rel = "stylesheet" href = "style.css">
</head>
<body>

<h1>Problem A - Micromasters</h1>

<p>
    The Department of Computer Engineering at Sharif University of Technology has recently initiated a professional
    education program known as Micromasters. This program offers a set of courses designed to empower students with
    specialized knowledge and skills in various domains of computer science and engineering. As an incentive to promote
    the program, the department has introduced a referral system wherein individuals who refer other students to the
    Micromasters program receive a 10% discount for each referred student on their own course registrations.
</p>

<p>
    Mina is a talented student who is passionate about spreading the benefits of the Micromasters program. With each
    referral, Mina’s list of discounts grows, and now the following question arises: given the number of students who
    are referred by Mina, how many courses can she enroll in for free?
</p>

<h2>Input</h2>

<p>
    The input consists of a single line containing a single integer n (0 ⩽ n ⩽ 1000), which represents the number of
    students that Mina has referred.
</p>

<h2>Output</h2>

<p>
    Print a single line, containing the number of courses Mina can enroll in for free using the discounts.
</p>

<h2>Example</h2>

<table>
    <tr>
        <th>Standard Input</th>
        <th>Standard Output</th>
    </tr>
    <tr>
        <td>5</td>
        <td>0</td>
    </tr>
</table>

<table>
    <tr>
        <th>Standard Input</th>
        <th>Standard Output</th>
    </tr>
    <tr>
        <td>18</td>
        <td>1</td>
    </tr>
</table>

<form action = "controller" method = "post">

    <label>
        Input:
        <textarea name = "input" cols = "50" rows = "20"></textarea>
    </label>
    <label>
        Source Code:
        <textarea name = "source_code" cols = "50" rows = "20"></textarea>
    </label>
    <input type = "submit" value = "Submit">
</form>

<div>
    ${output}
</div>

</body>
</html>