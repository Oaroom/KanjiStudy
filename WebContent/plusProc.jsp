<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<link rel="stylesheet" type="text/css" href="css/plus.css?ver=3"> 

<body>

<%

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
<div id="plusFrame">

	<font id="title">&nbsp; 단 어 추 가  &nbsp;   </font><br><br>
	<font id="sub"> 더 나은 서비스를 위해! 본 서비스에 없는 한자를 추가해주세요.</font><br>


	<div id="plusTable" align="center">
		
		<form action="plusChk.jsp" method="post">	
			
			<table>
			
				<tr>
					<td colspan="2" class="str">
						* 기본 한자에 대한 정보를 입력해주세요
					</td>
				</tr>
			
				<tr>
					<td>
						한자(형)
					</td>
					<td>
						<input type="text" placeholder="ex) 月, 水, 木" name="shape" required> 
					</td>
				</tr>
				
				<tr>
					<td>
						뜻(의)
					</td>
					<td>
						<input type="text" placeholder="ex) 달, 물, 나무" name="value"  required> 
					</td>
				</tr>
				
				<tr>
					<td>
						소리(음)
					</td>
					<td>
						<input type="text" placeholder="ex) 월, 수, 목" name="sound"  required>
					</td>
				</tr>
		
				
				<tr height="50px" style="vertical-align:bottom ">
					<td colspan="2"  class="str">
						* 해당 한자에 관련된 일단어에 대한 정보를 입력해주세요
					</td>
				</tr>
			
				<tr>
					<td>
						일어 단어
					</td>
					<td>
						<input type="text" placeholder="ex) 行く,　話す" name="jp" required>
					</td>
				</tr>
				
				<tr>
					<td>
						후리가나
					</td>
					<td>
						<input type="text" placeholder="ex) いく, はなす" name="huri" required>
					</td>
				</tr>
				
				<tr>
					<td>
						일단어 뜻
					</td>
					<td>
					<input type="text" placeholder="ex) 가다, 말하다" name="jpvalue" required>
					</td>
				</tr>
			
				<tr>
					<td colspan="2" align="center" >
					
						<input type="submit" value="추가하기">
						
					</td>
				</tr>
			</table>
			
			
	</form>
	
	</div>
</div>

<%

	}


%>

</body>
</html>