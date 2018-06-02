<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<%

String contentPage = request.getParameter("CONTENTPAGE");
String loginPage = request.getParameter("LOGINPAGE");
%>
</head>

<link rel="stylesheet" type="text/css" href="css/basic.css?ver=3"> 





<body style="background-color: #ffcb4f">



	<table id="basicFrame" align="center" style="margin-top:50px;">
		<tr>
			<td colspan="2" id="basicTitle">
				JLPT 한자 학습 프로그램
			</td>
		</tr>
		<tr>
			<td colspan="2" >			
				<jsp:include page="top.jsp"></jsp:include>
			</td>
		</tr>
		<tr>
		
			
			
			<td style="width:1200px" colspan="2">
				
				
					<jsp:include page="<%= contentPage %>"></jsp:include>
				
				
			</td>
			
				
			
		
		</tr>
	
	</table>

	
	
</body>
</html>