<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<link rel="stylesheet" type="text/css" href="css/mypage.css?ver=3"> 

<body>

<%

	int count=0;

	if(session.getAttribute("loginid") == null){
		
		%>
		<div id="noLogin">
			<img src="lock.png" width="200px" height="200px" style="margin-top:100px">
			<h2>회원만 가능한 서비스입니다.</h2>
			<h2>로그인 및 회원가입을 해주세요</h2>
		<input type="submit" value="로그인" onclick="location.href='login.jsp'">
		
		</div>
		
		<%
	}else{


%>
<div id="mypageFrame">
	<div id="myInfo">
	
		<h2>반갑습니다, <%= session.getAttribute("loginid")+" "%>님</h2>	
		<h3> 총 <%= count %>개의 단어가 저장되어있습니다.</h3>
	</div>
</div>
<%

	}


%>

</body>
</html>