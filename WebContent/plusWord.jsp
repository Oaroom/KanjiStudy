<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.io.File"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.PrintWriter"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

request.setCharacterEncoding("utf-8");
String value = request.getParameter("value");



if(session.getAttribute("loginid") == null){
	%>
	<script>
	
	alert("회원만 가능한 서비스입니다. ");
	history.back();
	
	</script>
	<% 
}else{

String filename = session.getAttribute("loginid")+".txt";
String result;

String filePath = application.getRealPath("/WEB-INF/"+filename);
//out.println(filename);

	PrintWriter writer = null;
	
try {

	BufferedWriter bw = new BufferedWriter(new FileWriter(filePath,true));
	PrintWriter pw = new PrintWriter(bw,true);


	pw.printf(value);


	bw.newLine();
	pw.flush();
	pw.close();
	
	
	%>
	
	
		<script>
		
		alert("저장 성공! ");
		history.back();
		
		</script>
	
	<% 

}catch(Exception e) {
	
	out.println(e);
	out.println("오류발생");
//	result = "fail";
}
}
//response.sendRedirect("boardResult.jsp?choi="+result);
%>

</body>
</html>