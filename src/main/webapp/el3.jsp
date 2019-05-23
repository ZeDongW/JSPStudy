<%--
  Created by IntelliJ IDEA.
  User: ZeDongW
  Date: 2019/5/23 0023
  Time: 6:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>EL表达式计算</title>
</head>
<body>
    <%--
        el算术表达式计算： +  -  *  、  /
    --%>
    5 + 6 = ${5+6} <br>
    5 - 6 = ${5-6} <br>
    5 * 6 = ${5*6} <br>
    5 / 6 = ${5/6} <br>
    <hr>
    <%--
        el比较运算符： >  <  >=  <=  ==   !=
    --%>
    ${10>5 }<br/>
    ${10<5 }<br/>
    ${10!=10 }
    <hr/>
    <%--
       3)逻辑运算
        &&  ||  !
    --%>
    ${true && false }<br/>
    ${true || false }<br/>
    ${!false }<br/>
    <hr/>
    <%--
      4)判空
      null 或 空字符串:  empty
   --%>
    <%
        //String name = "eric";
        //String name = null;
        String name = "";
        pageContext.setAttribute("name",name);
    %>
    判断null： ${name==null }<br/>
    判断空字符： ${name=="" }<br/>
    判空：  ${name==null || name=="" }
    另一种判空写法： ${empty name }
</body>
</html>
