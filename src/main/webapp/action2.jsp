<%--
  Created by IntelliJ IDEA.
  User: ZeDongW
  Date: 2019/5/23 0023
  Time: 6:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>动作标签</title>
</head>
<body>
    ${name}- ${password}
    <br>
    <%=request.getAttribute("name")%>-<%=request.getAttribute("password")%> <br>
    <%=request.getParameter("name")%>-<%=request.getParameter("password")%>
</body>
</html>
