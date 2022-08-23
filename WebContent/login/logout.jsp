<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1) 현재 세션(ID)를 무효화  ( 둘 중 하나만 해줌 )
	//session.invalidate();
	
	//2) 세션에 저장된 애트리뷰트 삭제
	session.removeAttribute("user");
	
	response.sendRedirect("../index.jsp");
	//response 객체 이용해서 새로운 url 요청 보내기
	//forward 객체는 전달, 위임 역할
%>