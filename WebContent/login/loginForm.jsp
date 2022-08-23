<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인화면 (폼)</title>
</head>
<body>
	<!-- 검색은 get  ,  저장 로그인은 post -->
	<form action="login.jsp?back=${param.back}&idx=${param.mref}&page=${param.page}" method="post">
	<!--  back, idx,page 3개 파라미터는 댓글작성 옆에 로그인 버튼 클릭했을때 , 로그인 후 돌아갈 detailAction.jsp에 필요한 값   -->
		<input name="userid" placeholder="아아디(이메일)을 입력하세요"><br>
		<input name="password" type="password" placeholder="비밀번호를 입력하세요"><br>
 		<button>로그인</button>     <!--submit-->
 		<!-- 상대경로 지정 ../ 는 한단계 위 상위폴더 -->
 		<button type="button" onclick="location.href='../index.jsp'">홈</button>
	</form>
</body>
</html>