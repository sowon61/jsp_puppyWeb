<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
<div class="container"
		style="max-width: 600px; 
		border: 2px solid #ccc; 
		border-radius: 6px; 
		margin-top: 50px; 
		box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3); 
		padding: 20px;">
		
		<p class="text-start fw-bold fs-1">Login</p>
		<form action="dogRequestProcBoot.jsp" method="post">
		
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label fs-4">Username</label>
				<input type="name" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="username">
			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label fs-4">Password</label>
				<input type="password" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="password">
			</div>

			<button type="submit" class="btn btn-primary">확인</button>
			<button type="reset" class="btn btn-primary">취소</button>
		</form>
	</div>
</body>
</html>