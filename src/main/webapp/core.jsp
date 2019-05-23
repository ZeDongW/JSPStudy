<%--
  Created by IntelliJ IDEA.
  User: ZeDongW
  Date: 2019/5/23 0023
  Time: 7:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" import="cn.zedongw.entity.Students" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>JSP核心标签库</title>
</head>
<body>
    <c:set var="msg" value="jack" scope="page"></c:set>
    ${msg}
    <hr>
    <%
        String msg = null;
        pageContext.setAttribute("msg",msg);
    %>
    <c:out value="${msg}" default="<h3>标题</h3>" escapeXml="false"></c:out>
    <hr>
    <c:if test="${empty msg}">
        条件成立
    </c:if>
    <hr>
    <c:set var="score" value="100"></c:set>
    <c:choose>
        <c:when test="${score >= 90 && score <= 100}">
            优秀
        </c:when>
        <c:when test="${score >= 80 && score < 90}">
            良好
        </c:when>
        <c:when test="${score >= 70 && score < 80}">
            一般
        </c:when>
        <c:when test="${score >= 60 && score < 70}">
            及格
        </c:when>
        <c:otherwise>
            不及格
        </c:otherwise>
    </c:choose>
    <hr>
    <%
        //List
        List<Students> list = new ArrayList<Students>();
        list.add(new Students("rose",18));
        list.add(new Students("jack",28));
        list.add(new Students("lucy",38));
        //放入域中
        pageContext.setAttribute("list",list);

        //Map
        Map<String,Students> map = new HashMap<String,Students>();
        map.put("100",new Students("mark",20));
        map.put("101",new Students("maxwell",30));
        map.put("102",new Students("narci",40));
        //放入域中
        pageContext.setAttribute("map",map);
    %>
    <c:forEach begin="0" items="${list}" step="1" var="student" varStatus="varSta">
        序号：${varSta.count}- 姓名：${student.name}- 年龄：${student.age} <br>
    </c:forEach>
    <hr>
    <C:forEach items="${map}" var="entry">
        ${entry.key}- 姓名：${entry.value.name}- 年龄：${entry.value.age} <br>
    </C:forEach>
    <hr>
    <%
        String str = "java-php-net-平面";
        pageContext.setAttribute("str",str);
    %>
    <C:forTokens items="${str}" delims="-" var="s">
        ${s} <br>
    </C:forTokens>
    <hr>
    <C:redirect url="https://www.baidu.com"></C:redirect>
</body>
</html>
