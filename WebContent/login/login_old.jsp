<%@page import="vo.BookMember"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="dao.BookMemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userid = request.getParameter("userid");
	String password = request.getParameter("password");
	
	BookMemberDao dao = BookMemberDao.getInstance();
	Map<String,String> map = new HashMap<>();
	map.put("email", userid);
	map.put("password", password);
	
	out.print("<script>");
	BookMember vo = dao.login(map);
	
	//인증성공
	if(dao.login(map) != null){
		session.setAttribute("user", vo);
		session.setAttribute("sessionId", session.getId());
		out.print("alert('로그인 했습니다.');");
		out.print("location.href='../index.jsp';");		
	}else{
		//인증실패
		out.print("alert('로그인 계정 정보가 틀립니다.');");
		out.print("location.href='loginForm.jsp';");
	}
	out.print("</script>");

%>