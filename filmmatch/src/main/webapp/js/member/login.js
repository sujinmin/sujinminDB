
	/**
	 * 로그인, 회원가입 클릭시 작동되는 JS
	 */
	$(document).ready(function(){
		show_message();
	 	setTimeout(show_message,100); //0.1초
		let signup = $(".links").find("li").find("#signup"); 
		let signin = $(".links").find("li").find("#signin");
		let home = $(".links").find("li").find("#home");
		let first_input = $("form").find(".first-input");
		let hidden_input = $("form").find(".input__block").find(".show");//find("#repeat__password");
		let signin_btn = $("form").find(".signin__btn");
		let insert = $(".input__block").slice(3); // 네 번째 요소부터 끝까지 모든 요소

		// 페이지가 로드될 때 숨겨진 요소들 설정
		$("#repeat__password, #mem_name, #mem_email, #mem_zipcode, .button, #mem_addr").hide();

		// "Sign Up" 버튼 클릭 시 보이도록 설정
		signup.on("click", function(e) {
			e.preventDefault();
			$("h1").text("SIGN UP");
			$(".links li a").css("opacity", ".6");
			$(this).css("opacity", "1");
			first_input.removeClass("first-input__block").addClass("signup-input__block");
			hidden_input.css({ "opacity": "1", "display": "block" });
			signin_btn.text("Sign up");
			insert.show();
		});

		// "Sign In" 버튼 클릭 시 보이지 않도록 설정
		signin.on("click", function(e) {
			e.preventDefault();
			$("h1").text("SIGN IN");
			$(".links li a").css("opacity", ".6");
			$(this).css("opacity", "1");
			first_input.addClass("first-input__block").removeClass("signup-input__block");
			hidden_input.css({ "opacity": "0", "display": "none" });
			signin_btn.text("Sign in");
			insert.hide();
		});
	});

	/**
	 * ID,PWD 입력체크
	 * @param {*} f 
	 * @returns 
	 */
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
		

	/**
	 * 로그인 오류시 알람
	 */
	//$(document).ready(); //jquery $
	// window.onload=function(){
	// 	show_message();
	// 	setTimeout(show_message,100); //0.1초
		
	// };
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
	
/**
 * 회원가입
 */
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
		f.action = "insert.do"; //MemberInsertAction
		f.submit();				//전송	
	}
