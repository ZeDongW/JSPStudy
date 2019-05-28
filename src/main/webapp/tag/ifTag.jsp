<%--
  Created by IntelliJ IDEA.
  User: ZeDongW
  Date: 2019/5/28 0028
  Time: 6:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="mytag" uri="http://cn.zedongw/jsp/mytag" %>
<html>
<head>
    <title>if标签</title>
</head>
<body>
    <mytag:if test="${10 < 5}">1111</mytag:if>
</body>
</html>
