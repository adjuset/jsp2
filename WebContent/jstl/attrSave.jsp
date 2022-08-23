<%@page import="test.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<String> list = 
	new ArrayList<>();
	list.add("첫째");
	list.add("둘째");
	list.add("셋째");
	
	User user = new User(23,"삼백이");
	request.setAttribute("list", list);
	request.setAttribute("String", "viviz");
	request.setAttribute("age", 23);
	request.setAttribute("user", user);
	pageContext.forward("attrGet.jsp");
%>