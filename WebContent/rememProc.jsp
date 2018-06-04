<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<link rel="stylesheet" type="text/css" href="css/remember.css?ver=3"> 

<body>


	<div id="rememberFrame">
	
		<table align="center" style="text-align:center" id="kanjiTable">
			<tr>
				<td>
					<img src="back.png">
				</td>
				<td id="kanji" style="width:300px; font-size: 150pt;">


		<%
							
				String filePath = application.getRealPath("/WEB-INF/kanji.txt");
				
			
				File file = new File(filePath);
				
				FileReader filereader = new FileReader(file);
				BufferedReader bufReader = new BufferedReader(filereader);
				
				String info;
				String value[];
				boolean chk = false;
				
						info = bufReader.readLine();
						
						value = info.split("/");
					
				
				
			%>
				
				<%= value[0] %>
							
					
					
				
				</td>
				<td>
					<img src="next.png">
				</td>
			</tr>
			<tr>
				<td colspan="3">
					
					
					
					<%= value[1] %>
					
				</td>
			</tr>
			<tr>
				<td colspan="3">
					
					
					
					<%= value[2]+" / "+ value[3]+" / "+value[4] %>
					
				</td>
			</tr>
		</table>
	
	</div>

</body>
</html>