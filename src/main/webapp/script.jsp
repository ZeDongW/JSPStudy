<%@ page import="java.util.Random" %><%--
  Created by IntelliJ IDEA.
  User: ZeDongW
  Date: 2019/5/14 0014
  Time: 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>JSP语法</title>
</head>
<body>
    <%-- jsp表达式 --%>
    <%
        String name= "jack";
        int a = 10;
        int b = 20;
    %>

    姓名<%=name%>
    <br>
    a+b=<%=a+b%>
    <br>
    a-b=<%=a-b%>
    <%-- jsp脚本 --%>
    <%
        Random random = new Random();
        float v = random.nextFloat();
    %>
    <hr/>
    <%=v%>
    <%
        for(int i =1; i<=6; i++){
    %>
            <h<%=i%>>标题</h<%=i%>>

    <%
        }
    %>
    <hr>
    <%-- 练习： 使用脚本和html代码显示99乘法表 --%>
    <center>九九乘法口诀表</center>
    <%
        for(int i= 1; i<=9; i++){
            for(int j = 1; j<=i; j++){
    %>
        <%=j%>*<%=i%>=<%=i*j%>&nbsp;&nbsp;&nbsp;&nbsp;
    <%
            }
    %>
    <br>
    <%
        }
    %>
    <%-- jsp声明 --%>
    <%!
        String name = "jack";
        public String  getName(){
            return name;
        }
        //jsp声明中不能重复定义翻译好的一些方法
        /*public void _jspInit(){

        }*/
    %>
    <%--  jsp脚本中不能声明方法
    <%
        public String  getName(){
        return name;
        }
    %>
    --%>
    <%-- html注释 --%>
    <%-- jsp表达式 --%>
</body>
</html>
