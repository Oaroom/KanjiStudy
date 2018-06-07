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
<body>

<link rel="stylesheet" type="text/css" href="css/test.css?ver=3">

<%

request.setCharacterEncoding("utf-8");
String value = request.getParameter("value");



%>

<div id="Frame">

<h2>해당 한자를 음과 훈으로 읽으세요.</h2>

<form action="testChk.jsp?value=<%=value %>" method="post">
<%
			
			int index=1;
			String info;
			String values[];
	
			String filePath = application.getRealPath("/WEB-INF/n"+value+".txt");
			File file = new File(filePath);
			FileReader filereader = new FileReader(file);
			BufferedReader bufReader = new BufferedReader(filereader);
			
		

			while(true){
				
				info = bufReader.readLine();
				
			
				
				if(info == null){
					
					break;
					
				}
				
				values=info.split("/");
				
				%>
			
			
				<div class="testForm">
					<table>
						<tr>
							<td>
								<h2><%= index %>) <%= values[0] %></h2>
							</td>
							<td style="padding-left:30px">
								<input type="text" name=<%=index %>>
							</td>
							<td style="padding-left:30px">
								<div class=hint>HINT</div>
							</td>
						</tr>
					</table>
				
				</div>
			
		
				<% 
				index++;
				}
			

		%>

	<input type="hidden" value="<%=index%>" name="index">
	
	<input type="submit" value="제출하기" id="submit">
	</form>
</div>
</body>
</html>