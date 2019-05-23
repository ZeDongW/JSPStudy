<%--
  Created by IntelliJ IDEA.
  User: ZeDongW
  Date: 2019/5/21 0021
  Time: 6:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>数字竞猜游戏</title>
</head>
<body>
    <%
        //从request域中获取信息
        String msg = (String)request.getAttribute("msg");
        if(msg != null && !msg.equals("")){
            out.write("<font color='red'>" + msg + "</font>");
        }
    %>

    <%
        //获取竞猜次数
        Integer times = (Integer)request.getAttribute("times");
        if (times != null){
            out.write(",你还剩余" + (5 - times) + "次机会");
        }
    %>

    <form action="/JSPStudy/guess" method="post" onsubmit="return check()">
        请输入30以下的整数：<input type="text" name="luckyNo" id="luckyNo"/> <br>
        <%
            if (times != null){
        %>
            <input type="hidden" name="times" value="<%=times%>" />
        <%
            }
        %>
        <input type="submit" value="竞猜"/>
    </form>
</body>
    <script type="text/javascript">
        function check(){
            var id = document.getElementById("luckyNo");
            var value = id.value;
            var reg = /^(\d|[1-2]\d)$/i;
            if(reg.test(value)){
                return true;
            } else {
                id.value='';
                return false;
            }
        }
    </script>
</html>
