<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.PrintWriter"%>
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

//회원가입 정보 파일처리

	request.setCharacterEncoding("UTF-8"); //******	
	
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	
	String filename = "info.txt";
	String result;

	String filePath = application.getRealPath("/WEB-INF/"+filename);
	//out.println(filename);
	
		PrintWriter writer = null;
		
	try {

		BufferedWriter bw = new BufferedWriter(new FileWriter(filePath,true));
		PrintWriter pw = new PrintWriter(bw,true);
	
	
		pw.printf(name+" "+id+" "+password);


		bw.newLine();
		pw.flush();
		pw.close();
		
		
		%>
		
		
			<script>
			
			alert("회원가입 성공! ");
			
			
			</script>
		<meta http-equiv='refresh' content='2; url=login.jsp'>
		
		<% 

	}catch(Exception e) {
		
		out.println(e);
		out.println("오류발생");
	//	result = "fail";
	}

	//response.sendRedirect("boardResult.jsp?choi="+result);



	
	
	
%>


</body>
</html>