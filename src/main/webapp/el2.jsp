<%--
  Created by IntelliJ IDEA.
  User: ZeDongW
  Date: 2019/5/22 0022
  Time: 18:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" language="java" import="cn.zedongw.entity.Students" isELIgnored="false" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<html>
<head>
    <title>EL表达式</title>
</head>
<body>
    <%
        Students student = new Students("jack", 20);
        pageContext.setAttribute("student",student);

        ArrayList<Students> list = new ArrayList<>();
        list.add(new Students("jack", 20));
        list.add(new Students("nacy", 30));
        list.add(new Students("rose", 40));
        list.add(new Students("tom", 25));
        pageContext.setAttribute("list",list);

        HashMap<String, Students> map = new HashMap<>();
        map.put("110",new Students("jack", 20));
        map.put("220",new Students("nacy", 30));
        map.put("330",new Students("rose", 40));
        map.put("440",new Students("tom", 25));
        pageContext.setAttribute("map",map);
    %>
    姓名：${student.name}- 年龄：${student.age}
    <hr>
    姓名：${list[0].name}- 年龄：${list[0].age}  <br>
    姓名：${list[1].name}- 年龄：${list[1].age}  <br>
    姓名：${list[2].name}- 年龄：${list[2].age}  <br>
    姓名：${list[3].name}- 年龄：${list[3].age}  <br>
    <hr>
    姓名：${map["110"].name}- 年龄：${map["110"].age}  <br>
    姓名：${map["220"].name}- 年龄：${map["220"].age}  <br>
    姓名：${map["330"].name}- 年龄：${map["330"].age}  <br>
    姓名：${map["440"].name}- 年龄：${map["440"].age}  <br>
</body>
</html>
