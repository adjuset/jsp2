<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/freeboard1.css?v=3">
</head>
<body>
<h3>우리동네 커뮤니티</h3>
<hr>
<main>
<div style="margin: auto;">
<ul id="main">
	<li>
		<ul class="row">
			<li>번호</li>
			<li>제목</li>
			<li>작성자</li>
			<li>조회수</li>
			<li>작성일</li>
		</ul>
		<c:forEach var="vo" items="${list }">
		<ul class="row">
			<li>${vo.idx }</li>
			<li><a href="detailA.jsp?idx=${vo.idx}&page=${page}" class="title">${vo.subject }</a>...
			<span style="color:orange;font-size: 80%;">(${vo.commentCount })</li>

		</ul>			
		</c:forEach>
	</li>
</ul>
</div>
</main>
</body>
</html>