<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to </title>
</head>
<body>
<p>hello student list</p>
<table border="1">
        <tr>
            <th>Name</td>
            <th>Age</td>
        </tr>
    <g:each in="${students}" status="i" var="stu">
        <tr>
            <td>${stu.name}</td>
            <td>${stu.age}</td>
        </tr>
    </g:each>
</table>
</body>
</html>