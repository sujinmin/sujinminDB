<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>

		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login_insert_form.css">
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
		<meta charset="EUC-KR">
		<title>Insert title here</title>


		<script type="text/javascript">

			

		</script>

	</head>

	<body>

		<!-- LOGIN FORM -->
		<div class="box">
		<div class="inner_box">
			<!-- LOGO -->
			<div class="logo">
				<a href="../movie_main.do"><img src="../image/Banner.png" alt=""></a>
			</div>
			

			<!-- FORM -->
			<div class="form-wrap">
				<!-- TABS -->
				<div class="tabs">
					<h3 class="signup-tab">
						<span class="sign-up active">Sign Up</span>
					</h3>
				</div>
				<!-- TABS CONTENT SIGNUP -->
				<div id="form">
					<form class="signup-form" action="" method="post"><br>
						<input type="email" class="input" id="user_email" autocomplete="off" placeholder="Email"> <br>
						<input type="text" class="input" id="user_name" autocomplete="off" placeholder="Username"> <br>
						<input type="password" class="input" id="user_pass" autocomplete="off" placeholder="Password"><br>
						<input type="submit" class="button" value="Sign Up">
					</form>
					<div class="help-action">
						<p>회원가입을 하시면, 당사의 이용약관에 동의하게 됩니다.</p>
						<p>
							<i class="fa fa-arrow-left" aria-hidden="true"></i>
							<a class="agree" href="#">Terms of service</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>


	</body>

	</html>