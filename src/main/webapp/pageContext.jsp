<%--
  Created by IntelliJ IDEA.
  User: ZeDongW
  Date: 2019/5/18 0018
  Time: 9:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    response.getWriter().write("out 和 pageContext.out是否相等？" + (out==pageContext.getOut()) + "</br>");
    response.getWriter().write("session 和 pageContext.session是否相等？" + (session==pageContext.getSession()) + "</br>");
%>
<%
    pageContext.setAttribute("message","page's message");
    pageContext.setAttribute("message","request's message", pageContext.REQUEST_SCOPE);
    pageContext.setAttribute("message","session's message", pageContext.SESSION_SCOPE);
    pageContext.setAttribute("message","application's message", pageContext.APPLICATION_SCOPE);
%>

<%= pageContext.getAttribute("message",pageContext.PAGE_SCOPE) + "</br>"%>
<%= pageContext.getAttribute("message",pageContext.REQUEST_SCOPE) + "</br>"%>
<%= pageContext.getAttribute("message",pageContext.SESSION_SCOPE) + "</br>"%>
<%= pageContext.getAttribute("message",pageContext.APPLICATION_SCOPE) + "</br>"%>

<%--
<%= pageContext.findAttribute("message")%>--%>
<%
//    response.sendRedirect(request.getContextPath() + "/pageContext2.jsp");
    request.getRequestDispatcher("/pageContext2.jsp").forward(request, response);
%>
