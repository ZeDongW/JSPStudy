<%@ taglib prefix="mytag" uri="http://cn.zedongw/jsp/mytag" %>
<%--
  Created by IntelliJ IDEA.
  User: ZeDongW
  Date: 2019/5/28 0028
  Time: 8:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" import="cn.zedongw.entity.Students" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<html>
<head>
    <title>forEach标签</title>
</head>
<body>
    <%
        ArrayList<Students> list = new ArrayList<>();
        list.add(new Students("jack",20));
        list.add(new Students("rose",21));
        list.add(new Students("tom",22));
        list.add(new Students("nacy",23));
        pageContext.setAttribute("list",list);

        HashMap<String, Students> map = new HashMap<>();
        map.put("110",new Students("jack",20));
        map.put("111",new Students("rose",21));
        map.put("112",new Students("tom",22));
        map.put("113",new Students("nacy",23));
        pageContext.setAttribute("map",map);

    %>

    <mytag:forEach items="${list}" var="student" step="1" end="4" begin="0">
        姓名：${student.name} - 年龄：${student.age} <br>
    </mytag:forEach>

    <hr>

    <mytag:forEach items="${map}" var="entrySet" end="4" begin="0">
        编号：${entrySet.key} - 姓名：${entrySet.value.name} - 年龄：${entrySet.value.age} <br>
    </mytag:forEach>

</body>
</html>
