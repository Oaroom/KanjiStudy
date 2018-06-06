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


</head>
<body>


	<div id="mainPage">

	<table id="mainTable" align="center" >
		<tr>
			<td>
				<div id= "n1"> N1 </div>
			</td>
			
			<td>
				<div id= "n2"> N2 </div>
			</td>
			
			<td>
				<div id= "n3"> N3 </div>
			</td>
			
			<td>
				<div id= "n4"> N4 </div>
			</td>
			
			<td>
				<div id= "n5"> N5 </div>
			</td>
		</tr>
	</table>
	
	
	<br>
	
		<div id="maintitle">
		
		<%
			String index[] ={"n1","n2","n3","n4","n5"};
			String name[] ={"item1","item2","item3","item4","item5"};
			int i = 0;
			String info;
			String value[];
	
			
			String filePath = application.getRealPath("/WEB-INF/n3.txt");
			
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
				
				<div id="item3">
					<%=value[0] %>
				</div>
				
				<% 
				
				
			}
		
		%>
		
		
		</div>
	</div>
	

</body>
</html>