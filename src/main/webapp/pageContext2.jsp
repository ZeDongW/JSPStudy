<%--
  Created by IntelliJ IDEA.
  User: ZeDongW
  Date: 2019/5/18 0018
  Time: 10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP四大域对象</title>
</head>
<body>
    page域：<%= pageContext.getAttribute("message",pageContext.PAGE_SCOPE) + "</br>"%>
    request域：<%= pageContext.getAttribute("message",pageContext.REQUEST_SCOPE) + "</br>"%>
    session域：<%= pageContext.getAttribute("message",pageContext.SESSION_SCOPE) + "</br>"%>
    application域：<%= pageContext.getAttribute("message",pageContext.APPLICATION_SCOPE) + "</br>"%>
</body>
</html>
