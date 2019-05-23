<%--
  Created by IntelliJ IDEA.
  User: ZeDongW
  Date: 2019/5/23 0023
  Time: 6:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>动作标签</title>
</head>
<body>
    <%--
        JSP动作标签
    --%>
    <jsp:forward page="action2.jsp">
        <jsp:param name="name" value="jack"/>
        <jsp:param name="password" value="123456"/>
    </jsp:forward>
</body>
</html>
