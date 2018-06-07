<%@page import="java.io.FileWriter"%>
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
	
	<h1> 학습할 단어팩을 선택하세요. </h1>

	<%
	for(int i = 1 ; i < 6 ; i++){
	%>
	<div class="folder" onclick="location.href='test.jsp?value=<%=i%>'">
		<%="N"+i %>
	</div>
		<%
	} %>
</div>
</body>
</html>