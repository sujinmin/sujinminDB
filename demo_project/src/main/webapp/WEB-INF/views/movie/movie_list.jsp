<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 	uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="icon" href="../image/Banner.png" />
<link rel="apple-touch-icon" href="../image/Banner.png" />
<link rel="apple-touch-icon" sizes="180x180" href="../image/Banner.png">
<link rel="icon" type="image/png" sizes="32x32" href="../image/Banner.png">
<link rel="icon" type="image/png" sizes="16x16" href="../image/Banner.png">
<link rel="manifest" href="../image/Banner.png">
<meta name="theme-color" content="#ffffff">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/css/layout1.css">
<script src="../js/vidio_scrole.js"></script>


<title>FilmFlow - 영화, 책 ,TV프로그램 추천 및 평가 서비스</title>
 
</head>
<body>
<div id="boxx">
	<span class="film">Film</span><span class="flow">Flow</span>&emsp;
	<a id="cate" href="${ pageContext.request.contextPath }/product/list.do?c_idx=1">영화</a>&emsp;
	<a id="cate" href="${ pageContext.request.contextPath }/product/list.do?c_idx=2">책</a>&emsp;
	<a id="cate" href="${ pageContext.request.contextPath }/product/list.do?c_idx=3">TV프로그램</a>&emsp;
	<a id="cate" href="${ pageContext.request.contextPath }/product/list.do?c_idx=4">웹툰</a>&emsp;	
   	<a class="box1">
 	<input id="se" type="text" placeholder="콘텐츠, 인물, 컬렉션, 유저를 검색해보세요." >
 	<img id="im" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png" onclick="">
  	</a>	
  	<input type="button"  id="btn1"  value="로그인" onclick="location.href='member/login_form.do'"/>
  	<input type="button"  id="btn2"  value="회원가입" onclick="location.href='member/login_insert_form.do'"/>
</div>	
<div id="posterBox">
<div id="im1">
<div id= movie>
<input type="button"   value="MV1" onclick="change_movie1();"/><div id=movie1 ><iframe width="150" height="100" src="https://www.youtube.com/embed/4ycxumdqUnY?si=htkiD0ed7QvczNZB" 	title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div>
<input type="button"   value="MV2" onclick="change_movie2();"/><div id=movie2 ><iframe width="150" height="100" src="https://www.youtube.com/embed/uoN1xfl5VZE?si=0N0NR35N889KP4g6" 	title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div>
<input type="button"   value="MV3" onclick="change_movie3();"/><div id=movie3 ><iframe width="150" height="100" src="https://www.youtube.com/embed/jrQ-pInzXHE?si=82UTFCAkdiJw4vxW" 	title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div>
<input type="button"   value="MV4" onclick="change_movie4();"/><div id=movie4 ><iframe width="150" height="100" src="https://www.youtube.com/embed/A131-kmSlF4?si=WwVY2mgk7TszUNja" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div>
<input type="button"   value="MV5" onclick="change_movie5();"/><div id=movie5 ><iframe width="150" height="100" src="https://www.youtube.com/embed/irbm4fTW92A?si=DVGtjtCrlwXHbTBv" 	title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div>
<input type="button"   value="MV6" onclick="change_movie6();"/><div id=movie5 ><iframe width="150" height="100" src="https://www.youtube.com/embed/exiz8yl1TX4?si=9EvWvkfdJHVTCXge&amp;start=12" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div>
</div>
 <div id="im5">
 <div id="im2">영화추천: 파묘</div>
  <div id="im3">감독 : 장재현 / 개봉일 : 2024. 2. 22</div>
   <div id="im4">줄거리 : 미국 LA, 거액의 의뢰를 받은 무당 ‘화림’(김고은)과 ‘봉길’(이도현)은 기이한 병이 대물림되는 집안의 장손을 만난다. 
   조상의 묫자리가 화근임을 알아챈 ‘화림’은 이장을 권하고, 돈 냄새를 맡은 최고의 풍수사 ‘상덕’(최민식)과 장의사 ‘영근’(유해진)이 합류한다. 
   “전부 잘 알 거야… 묘 하나 잘못 건들면 어떻게 되는지” 절대 사람이 묻힐 수 없는 악지에 자리한 기이한 묘. ‘상덕’은 불길한 기운을 느끼고 제안을 거절하지만, 
   ‘화림’의 설득으로 결국 파묘가 시작되고… 나와서는 안될 것이 나왔다.</div>
   </div>
   <div id=change >
    <iframe id="frame" width="1300" height="500" src="https://www.youtube.com/embed/exiz8yl1TX4?si=9EvWvkfdJHVTCXge&amp;start=12" 
    title="YouTube video player" frameborder="0" 
    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
    allowfullscreen></iframe></div>
   
</div>

<div id="text">
	<h1 >박스 오피스 순위</h1>
</div>

<div id="boxa">
<div id="boxb">
	<ul>
	<li><img src="../image/a.jpg"   onclick=""	/></li>
	<li><img src="../image/b.jpg" 	onclick=""  	/></li>
	<li><img src="../image/c.jpg"  	 onclick="" 	/></li>
	<li><img src="../image/d.jpg" 	 onclick="" 	/></li>
	<li><img src="../image/e.jpg" 	 onclick="" 	/></li>
	
	<li><img src="../image/a.jpg" 	onclick="" 	 /></li>
	<li><img src="../image/b.jpg" 	onclick="" /></li>
	<li><img src="../image/c.jpg"   onclick=""  /></li>
	<li><img src="../image/d.jpg" 	onclick="" /></li>
	<li><img src="../image/e.jpg" 	onclick="" /></li>
	</ul>
</div>
	<div>
			<a class="carousel-control-prev" href="#demo" data-slide="prev">
		 	<i class="material-icons" style="font-size:70px;color:black"onclick="moveImage_left();">fast_rewind</i></a>&emsp;&emsp;
			<a class="carousel-control-next" href="#demo" data-slide="next">
			<i class="material-icons" style="font-size:70px;color:black"onclick="moveImage_right();">fast_forward</i></a>
	</div>
	</div>
<div id="text1">
	<h1 >OTT서비스 순위</h1>
</div>
<div id="boxc">
<div id="boxd">
<ul>
	<li><img src="${ pageContext.request.contextPath }/image/a1.jpg"   onclick="" /></li>
	<li><img src="${ pageContext.request.contextPath }/image/b1.jpg"   onclick="" /></li>
	<li><img src="${ pageContext.request.contextPath }/image/c1.jpg"   onclick="" /></li>
	<li><img src="${ pageContext.request.contextPath }/image/d1.jpg"   onclick="" /></li>
	<li><img src="${ pageContext.request.contextPath }/image/e1.jpg"   onclick="" /></li>
	
	<li><img src="${ pageContext.request.contextPath }/image/a1.jpg"   onclick="" /></li>
	<li><img src="${ pageContext.request.contextPath }/image/b1.jpg"   onclick="" /></li>
	<li><img src="${ pageContext.request.contextPath }/image/c1.jpg"   onclick="" /></li>
	<li><img src="${ pageContext.request.contextPath }/image/d1.jpg"   onclick="" /></li>
	<li><img src="${ pageContext.request.contextPath }/image/e1.jpg"   onclick="" /></li>
	</ul>
</div>
<div>
			<a class="carousel-control-prev" href="#demo" data-slide="prev">
		 	<i class="material-icons" style="font-size:70px;color:black"onclick="moveImage_leftd();">fast_rewind</i></a>&emsp;&emsp;
			<a class="carousel-control-next" href="#demo" data-slide="next">
			<i class="material-icons" style="font-size:70px;color:black"onclick="moveImage_rightd();">fast_forward</i></a>
	</div>
	</div>
<div id="text2">
	<h1 >평균별점이 높은 순위</h1>
</div>
<div id="boxe">
<div id="boxf">
<ul>
	<li><img src="${ pageContext.request.contextPath }/image/a2.jpg" onclick="" /></li>
	<li><img src="${ pageContext.request.contextPath }/image/b2.jpg"  onclick="" /></li>
	<li><img src="${ pageContext.request.contextPath }/image/c2.jpg"   onclick="" /></li>
	<li><img src="${ pageContext.request.contextPath }/image/d2.jpg" onclick="" /></li>
	<li><img src="${ pageContext.request.contextPath }/image/e2.jpg"  onclick="" /></li>
	
	<li><img src="${ pageContext.request.contextPath }/image/a2.jpg"  onclick="" /></li>
	<li><img src="${ pageContext.request.contextPath }/image/b2.jpg"   onclick=""/ ></li>
	<li><img src="${ pageContext.request.contextPath }/image/c2.jpg"  onclick="" /></li>
	<li><img src="${ pageContext.request.contextPath }/image/d2.jpg" onclick="" /></li>
	<li><img src="${ pageContext.request.contextPath }/image/e2.jpg"   onclick="" /></li>
	</ul>
</div>
<div>
			<a class="carousel-control-prev" href="#demo" data-slide="prev">
		 	<i class="material-icons" style="font-size:70px;color:black"onclick="moveImage_leftf();">fast_rewind</i></a>&emsp;&emsp;
			<a class="carousel-control-next" href="#demo" data-slide="next">
			<i class="material-icons" style="font-size:70px;color:black"onclick="moveImage_rightf();">fast_forward</i></a>
	</div>
	</div>
	</div>
<br>
<hr>
	<section id="footer">
						<footer class="container-fluid text-center" id="footer">
							<p id="foo">FilmFlow</p>
							<p>대표자 : 임대표 대표전화: 02-746-8867 | 주 소 : 서울시 서초구 서초대로77길 41</p>
							<p>
								<a href="footer/personaldata.jsp">개인정보사용방침</a> | <a href="footer/use.jsp">이용약관</a> | <a href="footer/protect.jsp">청소년보호정책</a>
							</p>
						</footer>
					</section>
</body>
</html>















