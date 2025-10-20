<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String msg=request.getParameter("msg");
    String fno=request.getParameter("fno");
    String id=(String)session.getAttribute("id");
    String name=(String)session.getAttribute("name");
    // session에 저장 => 모든 JSP에서 사용이 가능 
    
%>