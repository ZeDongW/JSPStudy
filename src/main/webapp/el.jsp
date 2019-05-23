<%--
  Created by IntelliJ IDEA.
  User: ZeDongW
  Date: 2019/5/22 0022
  Time: 18:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>EL表达式</title>
</head>
<body>
    <%
        pageContext.setAttribute("name","jack",pageContext.APPLICATION_SCOPE);
        pageContext.setAttribute("name","rose");
    %>
    ${pageContext.request.contextPath}
    <br>
    EL表达式： ${applicationScope.name}
</body>
</html>
