<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2> 새로운 주소 정보 입력폼(dogForm.jsp)</h2>
<form action="dogProc.jsp" method="get"> 
	<table border="1">
		<tr height="50" align="center">
			<td width="120"> 이름 </td>
			<td width="350">
				<input type="text" name="name">
			</td>
		</tr>
		<tr height="50" align="center">
			<td width="120"> 연락처 </td>
			<td width="350">
				<input type="text" name="tel">
			</td>
		</tr>
		<tr height="50" align="center">
			<td width="120"> 이메일 </td>
			<td width="350">
				<input type="text" name="email">
			</td>
		</tr>
		<tr height="50" align="center">
			<td width="120"> 거주지 </td>
			<td width="350">
				<select name="residence">
					<option value="서울">서울</option>
					<option value="경기도">경기도</option>
					<option value="강원도">강원도</option>
					<option value="충청북도">충청북도</option>
					<option value="충청남도">충청남도</option>
					<option value="경상북도">경상북도</option>
					<option value="경상남도">경상남도</option>
					<option value="전라북도">전라북도</option>
					<option value="전라남도">전라남도</option>
					<option value="제주도">제주도</option>
					</select>
			</td>
		</tr>
		<tr height="50" align="center">
			<td width="120"> 반려견 종 </td>
			<td width="350">
				<input type="text" name="species">
			</td>
		</tr>
		<tr height="50" align="center">
			<td width="120"> 잃어버린 장소 </td>
			<td width="350">
				<select name="lostplace">
					<option value="서울">서울</option>
					<option value="경기도">경기도</option>
					<option value="강원도">강원도</option>
					<option value="충청북도">충청북도</option>
					<option value="충청남도">충청남도</option>
					<option value="경상북도">경상북도</option>
					<option value="경상남도">경상남도</option>
					<option value="전라북도">전라북도</option>
					<option value="전라남도">전라남도</option>
					<option value="제주도">제주도</option>
					</select>
			</td>
		</tr>
		<tr height="50" align="center">
			<td width="120"> 생김새 </td>
			<td width="350">
				<input type="text" name="appearance">
			</td>
		</tr>
		<tr height="70" align="center">
			<td width="120"> 상세정보 </td>
			<td width="350">
				<input type="text" name="detail" >
			</td>
		</tr>
		
		<tr height="50" align="center">
			<td colspan="2">
				<input type="submit" value="등록">
				<input type="reset" value="취소">
			</td>
			</tr>
	</table>
	</form>
</body>
</html>