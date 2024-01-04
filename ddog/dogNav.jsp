<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- CSS 라이브러리 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- JS 라이브러리 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
<%
	String logout = request.getParameter("logout");
	//logout 변수에 값이 들어있으면, 
	//로그아웃 버튼이 눌려지면,
	if(logout!=null){
		//session.setAttribute("id",null);
		session.setAttribute("username",null);//username으로 저장했기때문에 id를 username으로 바꿔줘야한다. 
	}
	//session에 저장되어 있는 id 값을 가져오기 
	//String id=(String)session.getAttribute("id");
	String id=(String)session.getAttribute("username"); //여기도 마찬가지로 username.
	if (id==null){
		id="사용자";
	}
	
	%>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
  	
  	<!-- 주석:블록지정하고, ctrl+shift+/ -->
  	<!-- <a class="navbar-brand" href="#">Navbar</a> -->
    <a class="navbar-brand" href="#">
    <img src="./assets/dogheart.jpg" width="35" height="24" class="inline-block align-text-top">
   	Find our puppy
    </a>
    
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled">Disabled</a>
        </li>
      </ul>
      <!-- <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form> -->
      <%
      	if(id.equals("사용자")){
      %>
      	<%=id %>님 <input class="btn btn-outline-success"
      						type="button"
      						value="로그인"
      						onclick="location.href='dogRequestFormBoot.jsp'"
      						style="margin-left:20px;">
      <%
      	}
      	else{
      %>
      	<%=id %>님 <input class="btn btn-outline-success"
      						type="button"
      						value="로그아웃"
      						onclick="location.href='dogMain.jsp?logout=1'" 
      						style="margin-left:20px;">
      <%
      	}
      %>
    </div>
  </div>
</nav>
</body>
</html>