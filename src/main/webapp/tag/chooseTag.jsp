<%--
  Created by IntelliJ IDEA.
  User: ZeDongW
  Date: 2019/5/28 0028
  Time: 7:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="mytag" uri="http://cn.zedongw/jsp/mytag"%>
<html>
<head>
    <title>choose标签</title>
</head>
<body>
    <%
        int scop = 45;
        request.setAttribute("scop",scop);
    %>
    <mytag:choose>
        <mytag:when test="${90 <= scop && scop <= 100 }">
            优秀
        </mytag:when>
        <mytag:when test="${80 <= scop && scop < 90}">
            良好
        </mytag:when>
        <mytag:when test="${70 <= scop && scop < 80}">
            一般
        </mytag:when>
        <mytag:when test="${60 <= scop && scop < 70}">
            及格
        </mytag:when>
        <mytag:otherWise>
            不及格
        </mytag:otherWise>
    </mytag:choose>
</body>
</html>
