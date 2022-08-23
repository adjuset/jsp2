<%@page import="board.vo.PageVo"%>
<%@page import="java.time.LocalDate"%>
<%@page import="board.vo.Freeboard"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="board.dao.FreeboardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	int pageNo;		//패이지번호를 파라미터로 받습니다    pageNo =1,2,3,4,5 
	FreeboardDao dao = FreeboardDao.getInstance();
	
	if(request.getParameter("page") == null)		pageNo=1;
	else	pageNo = Integer.parseInt(request.getParameter("page"));
	
	//한페이지에 몇개의 글개수를 보여줄까? 아래 2줄 명령은  pageVo객체로 대체
	int pageSize = 10;
	//int startNo = (pageNo-1)*pageSize + 1;		//startNo =? 1 11 21 31
	//int endNo = startNo +(pageSize-1);			//endNo=? 10 20 30
			
	PageVo pages = new PageVo(pageNo,dao.getCount(),pageSize); 			
			
	Map<String,Integer> map = new HashMap<>();
	map.put("startNo", pages.getStartNo());
	map.put("endNo", pages.getEndNo());
	
	List<Freeboard> list = dao.getPageList(map);
	request.setAttribute("list", list);
	request.setAttribute("today", LocalDate.now());

	
	//페이지 번호를 애트리뷰트로 저장
	request.setAttribute("page", pageNo);	//pageVo 작성하면 아래 pagelist로 대체할 수 있음
	request.setAttribute("pagelist", pages);
	pageContext.forward("listView.jsp");
%>

<%-- 실행방법 : http://localhost:8081/jsp2/board/listAction.jsp?page=2 --%>