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
	<h2>수정할 주소록 보기 (dogInfo.jsp)</h2>
	<hr>
	
	<jsp:useBean id="ddao" class="ddog.Dao"/>
	
	<%
		//어떤 주소 데이터를 수정할지 데이터 가져오기 
		int num=Integer.parseInt(request.getParameter("num"));
		
		//dao에서 getOneDog()이용하여 num에 해당되는 데이터 가져오기
		Do ddo=ddao.getOneDog(num);
		
	%>
	<table border="1">
		<tr height="50" align="center">
			<td width="100"> 이름 </td>
			<td width="300">
				<%=ddo.getName() %>
			</td>
		</tr>
		<tr height="50" align="center">
			<td width="100"> 연락처 </td>
			<td width="300">
				<%=ddo.getTel() %>
			</td>
		</tr>
		<tr height="50" align="center">
			<td width="100"> 이메일 </td>
			<td width="300">
				<%=ddo.getEmail() %>
			</td>
		</tr>
		<tr height="50" align="center">
			<td width="100"> 거주지 </td>
			<td width="300">
				<%=ddo.getResidence() %>
			</td>
		</tr>
		<tr height="50" align="center">
			<td width="100"> 반려견 종 </td>
			<td width="300">
				<%=ddo.getSpecies() %>
			</td>
		</tr>
		<tr height="50" align="center">
			<td width="100"> 잃어버린 장소 </td>
			<td width="300">
				<%=ddo.getLostplace() %>
			</td>
		</tr>
		<tr height="50" align="center">
			<td width="100"> 생김새 </td>
			<td width="300">
				<%=ddo.getAppearance() %>
			</td>
		</tr>
		<tr height="50" align="center">
			<td width="100"> 상세정보 </td>
			<td width="300">
				<%=ddo.getDetail() %>
			</td>
		</tr>
	
		<tr height="50" align="center">
			<td colspan="2" align="center">
				<input type="button" value="수정하기"
				onclick="location.href='dogModify.jsp?num=<%=ddo.getNum() %>'">
				<input type="button" value="삭제하기"
				onclick="location.href='dogDelete.jsp?num=<%=ddo.getNum() %>'">
				<input type="button" value="목록보기"
				onclick="location.href='dogList.jsp'">
			</td>
		</tr>
	</table>	
</body>
</html>