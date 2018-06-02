<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>


<link rel="stylesheet" type="text/css" href="css/login.css?ver=3"> 

<body align="center" style="background-color:#ffcb4f">





<form action="signChk.jsp" method="post">


	<div class="loginFrame">
	
	<h3>SIGNUP</h3>
	<table align="center">
	
		<tr>
			<td>
				<input type="text" placeholder="이름" name="name" autofocus>
			</td>
		</tr>
		<tr>
			<td>
				<input type="text" placeholder="아이디" name="id" >
			</td>
		</tr>
		<tr>
			<td>
				<input type="password" placeholder="패스워드" name="password">
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="회원가입">
			</td>
		</tr>
		
	</table>
</div>

</form>




</body>
</html>