<%@page import="ddog.Do"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> dogModify.jsp 수정하기 </h2>
	<jsp:useBean id="ddao" class="ddog.Dao"/>
	
	<%
		//어떤 주소 데이터를 수정할지 데이터 가져오기 
		int num=Integer.parseInt(request.getParameter("num"));
		
		//dao에서 getOneAddr()이용하여 num에 해당되는 데이터 가져오기
		Do ddo=ddao.getOneDog(num);
		
	%>
	<form action="dogModifyProc.jsp" method="get">
	<table border="1">
		<tr height="50" align="center">
			<td width="100"> 이름 </td>
			<td width="300">
				<input type="text" value="<%=ddo.getName() %>" name="name">
			</td>
		</tr>
		<tr height="50" align="center">
			<td width="100"> 연락처 </td>
			<td width="300">
				<input type="text" value="<%=ddo.getTel() %>" name="tel">
			</td>
		</tr>
		<tr height="50" align="center">
			<td width="100"> 이메일 </td>
			<td width="300">
				<input type="text" value="<%=ddo.getEmail() %>" name="email">
			</td>
		</tr>
		<tr height="50" align="center">
			<td width="100"> 거주지 </td>
			<td width="300">
				<input type="text" value="<%=ddo.getResidence() %>" name="residence">
			</td>
		</tr>
		<tr height="50" align="center">
			<td width="100"> 반려견 종 </td>
			<td width="300">
				<input type="text" value="<%=ddo.getSpecies() %>" name="species">
			</td>
		</tr>
		<tr height="50" align="center">
			<td width="100"> 잃어버린 장소 </td>
			<td width="300">
				<input type="text" value="<%=ddo.getLostplace() %>" name="lostplace">
			</td>
		</tr>
		<tr height="50" align="center">
			<td width="100"> 생김새 </td>
			<td width="300">
				<input type="text" value="<%=ddo.getAppearance() %>" name="appearance">
			</td>
		</tr>
		<tr height="50" align="center">
			<td width="100"> 상세정보 </td>
			<td width="300">
				<input type="text" value="<%=ddo.getDetail() %>" name="detail">
			</td>
		</tr>
		
		<tr height="50" align="center">
			<td colspan="2" align="center">
				<input type="hidden" name="num" value="<%=ddo.getNum() %>">
				<input type="submit" value="수정하기">
				<input type="button" value="목록보기"
				onclick="location.href='dogList.jsp'">
			</td>
		</tr>
	</table>
	</form>
</body>
</html>