<%--
  Created by IntelliJ IDEA.
  User: ZeDongW
  Date: 2019/5/14 0014
  Time: 6:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" import="java.lang.*,java.text.*"  language="java" %>
<%@ page import="java.util.Date" %>
<html>
<head>
    <title>第一个JSP页面</title>
</head>
<body>
    <%
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String currTime = simpleDateFormat.format(new Date());
        out.write("当前时间s：" + currTime);
    %>
</body>
</html>
