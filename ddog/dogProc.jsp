<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <%
      //한글깨짐방지
      request.setCharacterEncoding("utf-8");
   %>
   
   <!-- 입력된 값을 DO에 한방에 받음 -->
   <jsp:useBean id="ddo" class="ddog.Do" />
   <jsp:setProperty property="*" name="ddo" />
   
   <!-- dao 클래스 이용하여 입력값 저장(insertAddr()) -->
   <jsp:useBean id="ddao" class="ddog.Dao" /> <!-- 데이터는 다 dao? -->
   
   <% ddao.insertDog(ddo); %>
	<table border="2">
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
				<%= ddo.getSpecies()%>
			</td>
		</tr>
		<tr height="50" align="center">
			<td width="100"> 잃어버린 장소 </td>
			<td width="300">
				<%= ddo.getLostplace()%>
			</td>
		</tr>
		<tr height="50" align="center">
			<td width="100"> 생김새 </td>
			<td width="300">
				<%= ddo.getAppearance()%>
			</td>
		</tr>
		<tr height="50" align="center">
			<td width="100"> 상세정보 </td>
			<td width="300">
				<%= ddo.getDetail()%>
			</td>
		</tr>
	</table>	
	<a href="dogList.jsp"> 전체 주소록 보기 </a>
</body>
</html>