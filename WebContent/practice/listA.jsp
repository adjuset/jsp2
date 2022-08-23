<%@page import="java.time.LocalDate"%>
<%@page import="board.vo.Freeboard"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="board.vo.PageVo"%>
<%@page import="board.dao.FreeboardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int pageNo;	//현재페이지 받는 변수
	FreeboardDao dao = FreeboardDao.getInstance();
	
	//page를 넘겨줘야 함
	if(request.getParameter("page") == null)	pageNo =1;
	else 			pageNo = Integer.parseInt(request.getParameter("page"));
	
	int pageSize = 10;
	
	//현재페이지, 글의갯수, 한 페이지에 들어갈 글의 개수
	PageVo pages = new PageVo(pageNo,dao.getCount(),pageSize);
	
	//글의개수 1~10,11~20
	Map<String,Integer> map = new HashMap<>();
	map.put("startNo", pages.getStartNo());
	map.put("endNo", pages.getEndNo());
	
	List<Freeboard> list = dao.getPageList(map);
	request.setAttribute("list", list);
	request.setAttribute("today", LocalDate.now());
	
	request.setAttribute("page", pageNo);
	request.setAttribute("pagelist", pages);
	pageContext.forward("listV.jsp");
	
	
	
%>