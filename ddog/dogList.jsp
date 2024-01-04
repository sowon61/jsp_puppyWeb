<%@page import="ddog.Do"%>
<%@page import="ddog.Dao"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<hr>
	<tr height="60" align="right">
			<td colspan="5" align="center">
				<input type="button" value="잃어버린 반려견 등록하기"
				onclick="location.href='dogForm.jsp'">
			</td>
		</tr>
	<!-- <a href="dogForm.jsp"> 잃어버린 반려견 추가하기 </a> -->
	<table width="1300" border="2">
		<tr height="40">
			<td width="250" align="center"> 번호 </td>
			<td width="250" align="center"> 이름 </td>
			<td width="400" align="center"> 연락처 </td>
			<td width="350" align="center"> 이메일 </td>
			<td width="350" align="center"> 거주지 </td>
			<td width="400" align="center"> 반려견 종 </td>
			<td width="600" align="center"> 잃어버린 장소 </td>
			<td width="350" align="center"> 생김새 </td>
			<td width="500" align="center"> 상세정보 </td>
		</tr>
		
		<jsp:useBean id="ddao" class="ddog.Dao" ></jsp:useBean>
		<%
			ArrayList<Do> aList=ddao.getAllDog();
			for(int i=0; i < aList.size(); i++){
				Do ddo=aList.get(i);	
		%>
		<tr height="40">
			<td width="150" align="center">
			<a href="dogInfo.jsp?num=<%=ddo.getNum()%>">
					<%=ddo.getNum()%>
				</a>  
			</td>
			<td width="150" align="center"> <%=ddo.getName() %> </td>
			<td width="150" align="center"> <%=ddo.getTel() %> </td>
			<td width="150" align="center"> <%=ddo.getEmail() %> </td>
			<td width="150" align="center"> <%=ddo.getResidence() %> </td>
			<td width="150" align="center"> <%=ddo.getSpecies() %> </td>
			<td width="450" align="center"> <%=ddo.getLostplace() %> </td>
			<td width="450" align="center"> <%=ddo.getAppearance() %> </td>
			<td width="550" align="center"> <%=ddo.getDetail() %> </td>
		</tr>
		<%		
			}
		%>
	</table>
</body>
</html>