
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(session.getAttribute("UN") != null){
        session.invalidate();
        response.sendRedirect("login.jsp");
    }

%>
