<%@page import="ddog.Dao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- <h2> dogModifyProc.jsp(수정된 주소록 데이터 저장 부분) </h2> -->
	<hr>
	
	<%
		request.setCharacterEncoding("utf-8");
	%>
	
	<jsp:useBean id="ddo" class="ddog.Do"/>
	<jsp:setProperty property="*" name="ddo"/>
	
	<jsp:useBean id="ddao" class='ddog.Dao'/>
	<%
		//입력된 수정 데이터 확인
		out.println("name"+ddo.getName());
		ddao.modifyDog(ddo);
		
		//업데이트 처리가 완료되면, 바로 전체 리스트 보기로 이동
		response.sendRedirect("dogList.jsp");
	%>
</body>
</html>