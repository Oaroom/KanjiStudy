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

<link rel="stylesheet" type="text/css" href="css/card.css?ver=3"> 

<body>


<%

request.setCharacterEncoding("utf-8");
String value = request.getParameter("value");
String type = request.getParameter("type");


String filePath = application.getRealPath("/WEB-INF/"+type);
	

File file = new File(filePath);
FileReader filereader = new FileReader(file);
BufferedReader bufReader = new BufferedReader(filereader);

String info="";
String values[]={,};
String result="";

while(true){
	
	info=bufReader.readLine();
	
	if(info == null){
		
		break;
		
	}else{
		
		values=info.split("/");
		
		if(value.equals(values[0])){
		
			break;
			
		}
		
	}
}



%>

<div id="cardFrame">

<table align="center" width="1000px">
	<tr>
		<td id="card">
			<%= value %>
		</td>
		<td rowspan="2" >
			
			
			<table id="info" border align="center">
				<tr>
					<th>
						음독
					</th>
					<td>
						<%= values[1] %>
					</td>
				</tr>
				
				<tr>
					<th>
						훈독
					</th>
					<td>
						<%= values[2] %>
					</td>
				</tr>
				
				<tr>
					<th>
						일단어
					</th>
					<td>
						<%= values[3] %>
					</td>
				</tr>
				
				
				<tr>
					<th>
						후리가나
					</th>
					<td>
						<%= values[4] %>
					</td>
				</tr>

				<tr>
					<th>
						뜻
					</th>
					<td>
						<%= values[5] %>
					</td>
				</tr>

			</table>
		
		
		</td>
	</tr>
	<tr>
		<td id="cardName"><%= values[1]+" "+values[2] %></td>
		
	</tr>
	<tr>
					<td colspan="2" align="center" >
					
						<input type="submit" value="추가하기" id="goMy" onclick="location.href='plusWord.jsp?value=<%=info%>'">
						
					</td>
				</tr>
</table>

</div>

</body>
</html>