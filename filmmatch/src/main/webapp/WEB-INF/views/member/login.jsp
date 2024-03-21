<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/js/member/login.js">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/member/login.css">
<!-- Font -->
<link href="https://fonts.googleapis.com/css?family=Montserrat:500,800" rel="stylesheet">
<!-- JS code -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- DAUM 주소검색 API -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
$(document).ready(function(){
    // 주어진 요소들을 숨기도록 설정합니다.
    $("#repeat__password, #mem_name, #mem_email, #mem_zipcode, .button, #mem_addr").hide();

    // "Sign In" 버튼을 클릭했을 때 해당 요소들을 보이도록 설정합니다.
    $("#signup").on("click", function(e) {
        e.preventDefault();
        //$("#repeat__password, #mem_name, #mem_email, #mem_zipcode, .button, #mem_addr").show();
		$(this).parent().parent().siblings("h1").text("SIGN UP");
      $(this).parent().css("opacity","1"); //투명도를 없앤다, 가입로고 강조
      $(this).parent().siblings().css("opacity",".6"); //투명도를 0.6
      $(first_input).removeClass("first-input__block").addClass("signup-input__block");
      hidden_input.css({ //숨겨진 입력란을 보이게 만든다.
        "opacity" : "1",
        "display" : "block"
      });
      signin_btn.text("Sign up");
      insert.show(); //나머지 요소들을 보이게 함
    });
	//----------- sign up ---------------------
    signup.on("click",function(e){
      e.preventDefault(); //페이지세로고침 막음
      $(this).parent().parent().siblings("h1").text("SIGN UP");
      $(this).parent().css("opacity","1"); //투명도를 없앤다, 가입로고 강조
      $(this).parent().siblings().css("opacity",".6"); //투명도를 0.6
      first_input.removeClass("first-input__block").addClass("signup-input__block");
      hidden_input.css({ //숨겨진 입력란을 보이게 만든다.
        "opacity" : "1",
        "display" : "block"
      });
      signin_btn.text("Sign up");
      insert.show(); //나머지 요소들을 보이게 함
    });
});

</script>

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
                <input type="password" placeholder="Password" class="input" id="password" />
            </div>
            <!-- repeat password input -->
            <div class="input__block">
                <input type="password" placeholder="Repeat password" class="input repeat__password" id="repeat__password" />
            </div>
            <!-- 이름 -->
            <div class="input__block">
                <input type="text" placeholder="name" id="mem_name" />
            </div>
            <!-- 이메일 -->
            <div class="input__block">
                <input type="text" placeholder="email" id="mem_email" />
            </div>
            <!-- 주소 -->
            <div class="input__block" style="text-align: left;">
                <input type="text" placeholder="우편번호" class="input mem_addr" id="mem_zipcode" style="width: 30%;text-align: left;"/>
            </div>
            <!-- 버튼 -->
            <input class="button" type="button" value="주소검색" onclick="find_addr();">

            <div class="input__block">
                <input type="text" placeholder="주소" class="input mem_addr" id="mem_addr" />
            </div>
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