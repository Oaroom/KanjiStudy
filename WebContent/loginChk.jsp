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
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	//로그인 체크
	
	
		
		
		
	String filePath = application.getRealPath("/WEB-INF/info.txt");
		
	
	File file = new File(filePath);
	
	FileReader filereader = new FileReader(file);
	BufferedReader bufReader = new BufferedReader(filereader);
	
	String info;
	String value[];
	boolean chk = false;
	

		while(true){
			
			
			info =bufReader.readLine();
			
			if(info == null) { 
				
				break; 	
			
			} else {
				
				info.trim();
				value=info.split(" ");
				
				
				if(value[1].equals(id) && value[2].equals(password)){
					
					chk = true;
					session.setAttribute("loginid",id);
					
					%>
					
					<script type="text/javascript">
					
						alert("반갑습니다");
					
					</script>
					
					<meta http-equiv='refresh' content='0; url=content.jsp'>
					
					<%
					
					
					break;
				}
				
				
			}	
				

		}
		
		
		if(chk == false){
			
			%>
			
			<script type="text/javascript">
			
				alert("아이디와 패스워드가 맞지 않습니다.");
			
			</script>
			
			<meta http-equiv='refresh' content='2; url=content.jsp'>
			
			<%
			
			
		}

	%>
		
	
	
	
	

</body>
</html>