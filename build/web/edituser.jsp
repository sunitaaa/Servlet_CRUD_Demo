<%-- 
    Document   : edituser
    Created on : May 7, 2017, 12:13:35 PM
    Author     : sunita.joshi
--%>

<%@page import="com.demo.dao.UserDao"%>  
<jsp:useBean id="u" class="com.demo.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%
    int i = UserDao.update(u);
    response.sendRedirect("viewusers.jsp");
%>  