<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
</head>


<body>


	<table  id="smallMenu" width="1400px" style="margin-top:30px; margin-bottom:10px; font-size:15pt;">
		<tr>
			<td>
			</td>
			<%
			
			if(session.getAttribute("loginid") != null){
				
				%>
				
					<td id="login" width="100px"> <a href="logout.jsp">LOGOUT</a></td>
				
				<% 
				
			
			}else{
			
			%>
			
				<td id="login" width="100px"> <a href="login.jsp">LOGIN</a></td>
			
			
			<%
			
			}
				%>
			
			<td id="signup" width="100px"> <a href="signup.jsp">SIGNUP</a></td>
		</tr>
	</table>
	
	<table  id="mainMenu">
		<tr>
		
			<td style="color:#ffcb4f;">
				<a href="content.jsp">메인화면</a>
			</td>
		
			<td>
				<a href="remember.jsp">단어암기</a>
			</td>
			
			<td>
				<a href="plus.jsp">단어추가</a>
			</td>
			
			<td>
				<a href="mypage.jsp">나의 단어장</a>
			</td>
		
		</tr>
	
	</table>
</div>

</body>
</html>