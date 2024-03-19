<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet"
			href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Bootstrap 3.x -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
		
</script>
<script type="text/javascript">
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
	
</script>
		

		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/member/login_form.css">
	</head>

	<body>
		<div id="box">
		<header id="header">
			<a href="../movie_main.do"><span class="film">Film</span><span class="match">Match</span>&emsp;</a>
		</header>
		<br>
		<br>
		

			<div id="box">
				<div class="container">
					<form action="/action_page.php">
						<div class="row">
							<h2 style="text-align:center">
								<div id="text_box">
								<p>환영합니다 <a href="../movie_main.do"><span class="film">Film</span><span class="match">Match</span></a>입니다.</p>
								<br>
							</div>
							</h2>
							<div class="vl">
								<span class="vl-innertext">or</span>
							</div>

							<div class="col">
								<a href="#" class="fb btn">
									<i class="fa fa-facebook fa-fw"></i> Login with Facebook
								</a>
								<a href="#" class="twitter btn">
									<i class="fa fa-twitter fa-fw"></i> Login with Twitter
								</a>
								<a href="#" class="google btn"><i class="fa fa-google fa-fw">
									</i> Login with Google+
								</a>
							</div>

							<div class="col">
								<div class="hide-md-lg">
									<p>Or sign in manually:</p>
								</div>

								<input type="text" name="mem_id" value="${ param.mem_id }" placeholder="Userid" required>
								<input type="password" name="mem_pwd" placeholder="Password" required>
								<input class="btn info" type="button" value="Login" onclick="send(this.form);">
								<br>
								<br>
							</div>

						</div>
					</form>
				</div>


				<div class="bottom-container">
					<div class="row">
						<div class="col">
							<a href="../member/login_insert_form.do" style="color:white" class="btn">Sign up</a>
						</div>
						<div class="col">
							<a href="#" style="color:white" class="btn">Forgot password?</a>
						</div>
					</div>
				</div>
			</div>
		</div><!-- box -->

	</body>

	</html>