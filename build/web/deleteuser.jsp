<%-- 
    Document   : deleteuser
    Created on : May 7, 2017, 12:13:12 PM
    Author     : sunita.joshi
--%>

<%@page import="com.demo.dao.UserDao"%>  
<jsp:useBean id="u" class="com.demo.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%
    UserDao.delete(u);
    response.sendRedirect("viewusers.jsp");
%>  
