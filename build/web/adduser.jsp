<%-- 
    Document   : adduser
    Created on : May 7, 2017, 12:12:44 PM
    Author     : sunita.joshi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.demo.dao.UserDao" %>
<jsp:useBean id="u" class="com.demo.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  

<%
    int i = UserDao.save(u);
    if (i > 0) {
        response.sendRedirect("adduser-success.jsp");
    } else {
        response.sendRedirect("adduser-error.jsp");
    }
%>  
