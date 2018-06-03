<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.PrintWriter"%>
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
<body>

<%

	request.setCharacterEncoding("utf-8");
	String shape = request.getParameter("shape");
	String value = request.getParameter("value");
	String sound = request.getParameter("sound");
	
	String jp = request.getParameter("jp");
	String huri = request.getParameter("huri");
	String jpvalue = request.getParameter("jpvalue");
	
	
	
	
	
	String filePath = application.getRealPath("/WEB-INF/kanji.txt");
		
	
	File file = new File(filePath);


	PrintWriter writer = null;
	
try {

	BufferedWriter bw = new BufferedWriter(new FileWriter(filePath,true));
	PrintWriter pw = new PrintWriter(bw,true);


	pw.printf(shape+"/"+value+"/"+sound+"/"+jp+"/"+huri+"/"+jpvalue);


	bw.newLine();
	pw.flush();
	pw.close();
	
	
	%>
	
	
		<script>
		
		alert("한자등록 성공!");
		
		
		</script>
	<meta http-equiv='refresh' content='0; url=content.jsp'>
	
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