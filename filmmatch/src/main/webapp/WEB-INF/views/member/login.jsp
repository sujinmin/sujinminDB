<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
    let signup = $(".links").find("li").find("#signup") ; 
    let signin = $(".links").find("li").find("#signin") ;
    let home  = $(".links").find("li").find("#home")  ; 
    let insert = $(".input__block").slice(3); // 네 번째 요소부터 끝까지 모든 요소
    let first_input = $("form").find(".first-input");
    let hidden_input = $("form").find(".input__block").find("#repeat__password");
    let signin_btn  = $("form").find(".signin__btn");
  
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
    
  
   //----------- sign in ---------------------
   signin.on("click",function(e){
      e.preventDefault();
      $(this).parent().parent().siblings("h1").text("SIGN IN");
      $(this).parent().css("opacity","1");
      $(this).parent().siblings().css("opacity",".6");
      first_input.addClass("first-input__block").removeClass("signup-input__block");
      hidden_input.css({ //투명도를 주어 안보이게 만든다.
        "opacity" : "0",
        "display" : "none"
      });
      signin_btn.text("Sign in");
      insert.hide();
    });
   

});
</script>

<script type="text/javascript">
	function send(f) {
		//ID/PWD체크
		let mem_id = f.mem_id.value.trim();
		let mem_pwd = f.mem_pwd.value.trim();
		
		if (mem_id=='') {
			alert('아이디를 입력하세요');
			f.mem_id.value='';
			f.mem_id.focus();	
			return;
		}
		if (mem_pwd=='') {
			alert('비밀번호를 입력하세요');
			f.mem_pwd.value='';
			f.mem_pwd.focus();
			return;
		}
		
		f.action="login.do" //MemberLoginAction
		f.submit();
		
	}
		

	//$(document).ready(); //jquery $
	window.onload=function(){
		show_message();
		setTimeout(show_message,100); //0.1초
		
	};
	function show_message() {
		
		//login_form.do?reason=fail_id
		if ("${ param.reason eq 'fail_id'}"=="true") { // El $ '문자열'의 true
			alert("아이디가 틀렸습니다.");

		} 
		//login_form.do?reason=fail_pwd
		if ("${ param.reason eq 'fail_pwd'}"=="true") { // El $ '문자열'의 true
			alert("비밀번호가 틀렸습니다.");

		} 
		 
	} 
	
// 회원가입 자바스크립트----------------------------------
$(document).ready(function(){
	  
	  //ID입력창에서 키가눌렸다 떼어지면
	  $("#mem_id").keyup(function(event){
		
		  //가입버튼 기능을 disabled
		  $("#btn_register").attr("disabled",true); //비활성화
		  
		  let mem_id = $(this).val();
		  //console.log(mem_id);
		  if(mem_id.length<3){
			  $("#id_msg").html("아이디는 3자리 이상입력하세요").css("color","red");
			  return;
		  }
		  
		  //Ajax이용해서 중복아이디 체크
		  $.ajax({
			  url	:	"check_id.do",      //MemberCheckIdAction
			  data	:	{"mem_id": mem_id}, //parameter  -> check_id.do?mem_id=one
			  dataType	: "json",           //결과값의 Data Type
			  success	: function(res_data){
				  // res_data = {"result": true}  or {"result": false}
				  if(res_data.result){
					  //사용가능한 아이디
					  $("#id_msg").html("사용가능한 아이디입니다").css("color","blue");
					  
					  //가입버튼을 활성화
					  $("#btn_register").attr("disabled",false);
				  }else{
					  //이미사용중인 아이디
					  $("#id_msg").html("이미 사용중인 아이디입니다").css("color","red");
				  }
			  },
			  error		: function(err){
				  
				  alert(err.responseText);  
			  } 
		  });
  
	  });//end :  keyup
	  
  })//end: $(document).ready()

	function find_addr() {
		new daum.Postcode({
	        oncomplete: function(data) { //json
	        	//data = {"zonecode":"13529", "address":"경기 성남시 분당구",..."}
	        	// 주소창에서 선택된 주소값을 입력창에 넣어준다
	        	$("#mem_zipcode").val(data.zonecode);
	        	$("#mem_addr").val(data.roadAddress);
	        
	        }
	    }).open();
	}//end: fine_addr()
  	
	//이메일 정규식
	const regular_email = /^[a-zA-Z0-9+-\_.]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/;
	function send(f) {
		
		
		//폼에서 입력된값 체크...
		let mem_name = f.mem_name.value.trim();
		let mem_pwd = f.mem_name.value.trim();
		let mem_email = f.mem_email.value;
		let mem_zipcode = f.mem_zipcode.value;
		let mem_addr = f.mem_addr.value;
		
		if (mem_name=='') {
			alert('이름을 입력하세요!')
			f.mem_name.value='';
			f.mem_name.focus();
			return;
		}
		
		if (mem_pwd=='') {
			alert('비밀번호을 입력하세요!')
			f.mem_pwd.value='';
			f.mem_pwd.focus();
			return;
		}
		
		if (regular_email.test(mem_email)==false) {
			alert('이메일을 입력하세요! \n 옳바른 형식으로 입력하세요!')
			f.mem_email.value='';
			f.mem_email.focus();
			return;
		}
		
		if (mem_zipcode=='') {
			alert('우편번호을 입력하세요!')
			f.mem_zipcode.value='';
			f.mem_zipcode.focus();
			return;
		}
		if (mem_addr=='') {
			alert('주소을 입력하세요!')
			f.mem_addr.value='';
			f.mem_addr.focus();
			return;
		}
		alert('인간들이... 데이터 낭비 하지 마세요\n자기스스로 만든 데이터는 스스로 지우고 가자')
		f.action = "insert.do"; //MemberInsertAction
		f.submit();				//전송	
	}
  
  
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
            <!-- email input -->
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
            <input class="btn btn-info" type="button" value="주소검색" onclick="find_addr();">

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