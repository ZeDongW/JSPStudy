<%--
  Created by IntelliJ IDEA.
  User: ZeDongW
  Date: 2019/5/28 0028
  Time: 9:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>javabean</title>
</head>
<body>
    <jsp:useBean id="stu" class="cn.zedongw.entity.Students"></jsp:useBean>
    <jsp:setProperty name="stu" property="name" value="jack"></jsp:setProperty>
    <jsp:getProperty name="stu" property="name"/>
</body>
</html>
