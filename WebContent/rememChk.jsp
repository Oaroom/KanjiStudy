<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

	request.setCharacterEncoding("utf-8");
	String value = request.getParameter("plusButton");
	
	String file = session.getAttribute("loginid")+".txt";
	String Path = application.getRealPath("/WEB-INF/"+file);
	File f= new File(Path);
	f.createNewFile();

	PrintWriter writer = null;
	
	try {

		BufferedWriter bw = new BufferedWriter(new FileWriter(Path,true));
		PrintWriter pw = new PrintWriter(bw,true);
	
	
		pw.printf(value);


		bw.newLine();
		pw.flush();
		pw.close();
		
		
		%>
		
		
			<script>
			
			alert("저장성공");
			
			
			</script>
		<meta http-equiv='refresh' content='2; url=content.jsp'>
		
		<% 

	}catch(Exception e) {
		
		out.println(e);
		out.println("오류발생");
	//	result = "fail";
	}
		
			
			
%>

</body>
</html>