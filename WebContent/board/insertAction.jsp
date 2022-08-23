<%@page import="board.vo.Freeboard"%>
<%@page import="board.dao.FreeboardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String subject = request.getParameter("subject");
	String writer = request.getParameter("writer");
	String password = request.getParameter("password");
	String content = request.getParameter("content");
	String ip = request.getRemoteAddr();

	FreeboardDao dao = FreeboardDao.getInstance();
	Freeboard vo = new Freeboard(0,writer,password,subject,content,0,null,ip,0);

	int result = dao.insert(vo);
	out.print("<script>");
	if(result == 1){
		out.print("alert('성공했습니다');");
	}else{
		out.print("alert('실패했습니다');");
	}
	out.print("</script>");	
	response.sendRedirect("listAction.jsp");	//페이지수정

%>