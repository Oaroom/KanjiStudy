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

<link rel="stylesheet" type="text/css" href="css/main.css?ver=3"> 

<%




%>


</head>
<body>


<div id="mainPage">
	
	

	<table id="mainTable" align="center" >
		<tr>
			<form action="content.jsp">
				<td>
					<input type=submit value="전체" id="all" name="main">
				</td>
			</form>
			
			<form action="show.jsp" method="get">
			<td>
				<input type=submit value="n1" id="n1" name="bt">
			</td>
			
			<td>
				<input type=submit value="n2" id="n2" name="bt">
			</td>
			
			<td>
				<input type=submit value="n3" id="n3" name="bt">
			</td>
			
			<td>
				<input type=submit value="n4" id="n4" name="bt">
			</td>
			
			<td>
				<input type=submit value="n5" id="n5" name="bt">
			</td>
			</form>	
		</tr>
	</table>

	
	<br>
	
	
	
	
		<%
			
		String index[] ={"n1.txt","n2.txt","n3.txt","n4.txt","n5.txt"};
		String name[] ={"item1","item2","item3","item4","item5"};
		String info;
		String value[];

		
	

			
			for(int i = 0 ; i < 5 ;i++){
			
			String filePath = application.getRealPath("/WEB-INF/"+index[i]);
			File file = new File(filePath);
			FileReader filereader = new FileReader(file);
			BufferedReader bufReader = new BufferedReader(filereader);
			
			while(true){
				
				info = bufReader.readLine();
				
	
				
				if(info == null){
					
					break;
					
				}
				
			
				value = info.split("/");
				
				%>
				
				<div id="<%=name[i]%>" onclick="location.href='card.jsp?type=<%=index[i]%>&value=<%= value[0]%>'">
					<%=value[0] %>
				</div>
				
				<% 
				
				
				}
			
				}
			
		
			
		%>
	</div>
	

</body>
</html>