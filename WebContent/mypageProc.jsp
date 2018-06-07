<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.File"%>
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
			String info;
			String value[];
	
			String filePath = application.getRealPath("/WEB-INF/"+session.getAttribute("loginid")+".txt");
			File file = new File(filePath);
			FileReader filereader = new FileReader(file);
			BufferedReader bufReader = new BufferedReader(filereader);
			
		

			while(true){
				
				info = bufReader.readLine();
				
			
				
				if(info == null){
					
					break;
					
				}
				
				count++;
			
				
				}
			

		%>



<%

	

	if(session.getAttribute("loginid") == null){
		
		%>
		<div id="noLogin">
			<img src="lock.png" width="200px" height="200px" style="margin-top:100px">
			<h2>회원만 가능한 서비스입니다.</h2>
			<h2>로그인 및 회원가입을 해주세요</h2>
		<input type="submit" value="로그인" id="loginB" onclick="location.href='login.jsp'">
		
		</div>
		
		<%
	}else{


%>
<div id="mypageFrame">

	<div id="myInfo">
	
		<h2>반갑습니다, <%= session.getAttribute("loginid")+" "%>님</h2>	
		<h3> 총 <%= count %>개의 단어가 저장되어있습니다.</h3>
	</div>
	
	<br>

<%

			
		File file1 = new File(filePath);
		FileReader filereader1 = new FileReader(file1);
		BufferedReader bufReader1 = new BufferedReader(filereader1);

			while(true){
				
				info = bufReader1.readLine();
				
				if(info == null){
					
					break;
					
				}
				
			
				value = info.split("/");
				
				%>
				
				<div class="myitem">
					<table style="height:150px;">
						<tr >
							<td style="font-size:60pt; padding-left:30px;">
										<%= value[0] %>
							</td>
							<td>
							</td>
						</tr>
					</table>
				</div>
			
				<% 
				
				
				}
			
	
	}


%>
</div>
</body>
</html>