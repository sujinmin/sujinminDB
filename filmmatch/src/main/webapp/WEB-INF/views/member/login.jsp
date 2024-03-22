<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>   
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- <link href="../js/member/login.js"> -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/member/login.css">
<!-- Font -->
<link href="https://fonts.googleapis.com/css?family=Montserrat:500,800" rel="stylesheet">
<!-- JS code -->
 <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>  -->
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
 <script src="${ pageContext.request.contextPath }/js/member/login.js"></script>

 <!-- DAUM 주소검색 API -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>



</head>
<body>
    <header id="header">
        <a href="../movie_main.do"><span class="film">Film</span><span class="match">Match</span>&emsp;</a>
    </header>

    <div class="container">
        <!-- Heading -->
        <h1>SIGN IN</h1>
    
        <!-- Links -->
        <ul class="links">
            <li>
                <a href="#" id="signin">SIGN IN</a>
            </li>
            <li>
                <a href="#" id="signup">SIGN UP</a>
            </li>
            <li>
                <a href="../movie_main.do" id="Home">Home</a>
            </li>
        </ul>
    
        <!-- Form -->
        <form>
            <!-- ID input -->
            <div class="first-input input__block first-input__block">
                <input type="text" placeholder="ID" class="input" id="ID" />
            </div>
            <!-- password input -->
            <div class="input__block">
                <input type="password" placeholder="Password" class="input" id="password" class="show" />
            </div>
            <!-- repeat password input -->
            <div class="input__block">
                <input type="password" placeholder="Repeat password" class="input repeat__password show" id="repeat__password" />
            </div>
            <!-- 이름 -->
            <div class="input__block">
                <input type="text" placeholder="name" id="mem_name" class="show" />
            </div>
            <!-- 이메일 -->
            <div class="input__block">
                <input type="text" placeholder="email" id="mem_email" class="show" />
            </div>
            <!-- 주소 -->
            <div class="signup">
				<input class="show input__block button" type="button" value="주소검색" onclick="find_addr();">
				<input type="text" placeholder="우편번호" class="input__block show zipcode" id="mem_zipcode"/>
				<input type="text" placeholder="주소" class="input input__block show addr" id="mem_addr" />
            </div>
            
            
            <!-- 버튼 -->

            <!-- sign in button -->
            <button class="signin__btn" onclick="location.href='/member/login.do'">
                Sign in
            </button>
        </form>
        <!-- separator -->
        <div class="separator">
            <p>OR</p>
        </div>
        <!-- google button -->
        <button class="google__btn">
            <i class="fa fa-google"></i>
            Sign in with Google
        </button>
        <!-- google button -->
        <button class="github__btn">
            <i class="fa fa-github"></i>
            Sign in with GitHub
        </button>
    </div>
    
    <footer>
       
    </footer>
</body>
</html>