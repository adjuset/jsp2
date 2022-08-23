<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>session 애트리뷰트</h3>
<%
	String user = (String)session.getAttribute("session_user");
	out.print("애트리뷰트 : "+user);	
	out.print("session id : ");
	out.print(session.getId());
	out.print("<br>");
%>
<br><a href="session.jsp">세션테스트메인</a>
</body>
</html>