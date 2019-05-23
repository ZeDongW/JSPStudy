<%--
  Created by IntelliJ IDEA.
  User: ZeDongW
  Date: 2019/5/17 0017
  Time: 8:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" pageEncoding="UTF-8" %>
<html>
<head>
    <title>系统错误</title>
</head>
<body>
    亲，服务器崩溃了，正在紧急修复中，错误原因：
   <%=
       exception.getMessage()
   %>
</body>
</html>
