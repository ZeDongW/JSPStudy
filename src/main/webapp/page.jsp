<%--
  Created by IntelliJ IDEA.
  User: ZeDongW
  Date: 2019/5/17 0017
  Time: 8:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
    <%
        for (int i = 0 ; i < 1; i++) {
            out.write("a");
        }
//        out.flush();
        out.write("   " + out.getBufferSize());
        out.write("   " + out.getRemaining());
        response.getWriter().write("123");

    %>
