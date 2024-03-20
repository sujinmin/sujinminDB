<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/member/sign_up.css">
<!-- Font -->
<link href="https://fonts.googleapis.com/css?family=Montserrat:500,800" rel="stylesheet">
<!-- JS code -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script>
    $(document).ready(function(){
    let signup = $(".links").find("li").find("#signup") ; 
    let signin = $(".links").find("li").find("#signin") ;
    let reset  = $(".links").find("li").find("#reset")  ; 
    let first_input = $("form").find(".first-input");
    let hidden_input = $("form").find(".input__block").find("#repeat__password");
    let signin_btn  = $("form").find(".signin__btn");
  
    //----------- sign up ---------------------
    signup.on("click",function(e){
      e.preventDefault();
      $(this).parent().parent().siblings("h1").text("SIGN UP");
      $(this).parent().css("opacity","1");
      $(this).parent().siblings().css("opacity",".6");
      first_input.removeClass("first-input__block").addClass("signup-input__block");
      hidden_input.css({
        "opacity" : "1",
        "display" : "block"
      });
      signin_btn.text("Sign up");
    });
    
  
   //----------- sign in ---------------------
   signin.on("click",function(e){
      e.preventDefault();
      $(this).parent().parent().siblings("h1").text("SIGN IN");
      $(this).parent().css("opacity","1");
      $(this).parent().siblings().css("opacity",".6");
      first_input.addClass("first-input__block")
        .removeClass("signup-input__block");
      hidden_input.css({
        "opacity" : "0",
        "display" : "none"
      });
      signin_btn.text("Sign in");
    });
   
   //----------- reset ---------------------
   reset.on("click",function(e){
     e.preventDefault();
     $(this).parent().parent().siblings("form")
     .find(".input__block").find(".input").val("");
   })
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
        <form action="" method="post">
            <!-- email input -->
            <div class="first-input input__block first-input__block">
                <input type="text" placeholder="Email" class="input" id="ID" />
            </div>
            <!-- password input -->
            <div class="input__block">
                <input type="password" placeholder="Password" class="input" id="password" />
            </div>
            <!-- repeat password input -->
            <div class="input__block">
                <input type="password" placeholder="Repeat password" class="input repeat__password" id="repeat__password" />
            </div>
            <!-- 주소 -->
            <div class="input__block">
                <input type="text" placeholder="addr" class="input mem_addr" id="mem_addr" />
            </div>
            <!-- sign in button -->
            <button class="signin__btn">
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