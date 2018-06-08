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

<link rel="stylesheet" type="text/css" href="css/test.css?ver=3"> 

<body style="background-color:#ffcb4f">
<%

request.setCharacterEncoding("utf-8");
String index = request.getParameter("index");
String value = request.getParameter("1");
String type = request.getParameter("value");
String result="";
String key="";

for(int i = 1 ; i < Integer.parseInt(index) ; i++){
	
	key = request.getParameter(String.valueOf(i));
	result += key+"/";
}


request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String password = request.getParameter("password");

//로그인 체크


	
	
	
String filePath = application.getRealPath("/WEB-INF/n"+type+".txt");
	

File file = new File(filePath);

FileReader filereader = new FileReader(file);
BufferedReader bufReader = new BufferedReader(filereader);

String info="";
String values[];
String result1="";
boolean chk = false;


	while(true){
		
	
		
		info =bufReader.readLine();
	
		
		if(info == null){
			
			break;
			
		}else{
			
			
			values=info.split("/");
			result1 += values[1]+" "+values[2]+"/";	
		}
			
		
	}
	
	
	String checkInfo[] = result.split("/");// 문제표
	String checkInfo2[] = result1.split("/"); // 정답효

	
	int okay=0;
	
for(int i = 0 ; i < checkInfo.length ;i++){
	
	
	if(checkInfo[i].equals(checkInfo2[i])){
		
		okay++;
		
	}
	
}
	

%>

<script>
	alert("총 "+<%=checkInfo2.length%>+" 문제중, 맞은 갯수는 "+<%=okay%>+"입니다.");
</script>


<div id="resultFrame" style="display:inline-block; margin:300px 700px;" align="center">
	<h2> 정답표 확인</h2>
	<%= result%> <br>
	<%= result1 %><br><br>
	
	<%="총 "+checkInfo2.length+" 문제중, 맞은 갯수는 "+okay+"입니다." %><br>
	
	<input type="submit" value="뒤로가기"  id="button" onclick="location.href='remember.jsp'">
	
</div>
</body>
</html>