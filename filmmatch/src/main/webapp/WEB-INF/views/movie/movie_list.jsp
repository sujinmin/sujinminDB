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
<link rel="icon" href="${ pageContext.request.contextPath }/image/Banner.png" />
<link rel="apple-touch-icon" href="${ pageContext.request.contextPath }/image/Banner.png" />
<link rel="apple-touch-icon" sizes="180x180" href="${ pageContext.request.contextPath }/image/Banner.png">
<link rel="icon" type="image/png" sizes="32x32" href="${ pageContext.request.contextPath }/image/Banner.png">
<link rel="icon" type="image/png" sizes="16x16" href="${ pageContext.request.contextPath }/image/Banner.png">
<link rel="manifest" href="../image/Banner.png">
<meta name="theme-color" content="#ffffff">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/css/main/layout1.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://kit.fontawesome.com/fe320c8d56.js" crossorigin="anonymous"></script>

<script src="${ pageContext.request.contextPath }/js/main/vidio_scrole.js"></script>


<title>FilmFlow - 영화, 책 ,TV프로그램 추천 및 평가 서비스</title>
 
</head>
<body>
<div id="posterBox">
<div id="boxx">
	<span class="film">Film</span><span class="flow">Match</span>
	<a id="cate" href="${ pageContext.request.contextPath }/product/list.do?c_idx=1">장르</a>
	<a id="cate" href="${ pageContext.request.contextPath }/product/list.do?c_idx=2">배우</a>
	<a id="cate" href="${ pageContext.request.contextPath }/product/list.do?c_idx=3">나라</a>
	<a id="cate" href="${ pageContext.request.contextPath }/product/list.do?c_idx=4">극장</a>
	<form class="search-box">
	<input class="search-text" type="text" placeholder="콘텐츠, 인물, 컬렉션, 유저를 검색해보세요." /> 
	<button class="search-btn" value="검색"> <i class="fa-solid fa-magnifying-glass"></i>
	</button>
	</form>	
  	<input type="button"  id="btn1"  value="로그인" onclick=""/>
  	<input type="button"  id="btn2"  value="회원가입" onclick=""/>
</div>	

<div id="im1">
<div id= movie>
<div id=movie1 ><iframe width="150" height="100" src="https://www.youtube.com/embed/4ycxumdqUnY?si=htkiD0ed7QvczNZB" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div>
<div id="mt1" onclick="change_movie1();">
<div id="mt1a">영화 : 콰이어트 플레이스</div>
<div id="mt1b">감독 : 마이클 사노스키 / 개봉일 : 2024.06(예정)</div>
<div id="mt1c">줄거리 : 소리를 내는 순간 공격하는 괴생명체의 출현으로 온 세상이 침묵하게 된 그날, 모든 것의 시작을 그린 이야기</div>
</div>
<div id=movie2 ><iframe width="150" height="100" src="https://www.youtube.com/embed/uoN1xfl5VZE?si=0N0NR35N889KP4g6" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div>
<div id="mt2" onclick="change_movie2();">
<div id="mt2a">영화 : 마담 웹</div>
<div id="mt2b">감독 : S.J. 클락슨 / 개봉일 : 2024.03.13</div>
<div id="mt2c">줄거리 : 우연한 사고로 미래를 볼 수 있게 된 구급대원 '캐시 웹'이 거미줄처럼 엮인 운명을 마주하며, 같은 예지 능력을 가진 적 '심스'에 맞서 세상을 구할 히어로 '마담 웹'으로 거듭나게 되는 과정을 그린 마블의 NEW 히어로 드라마</div>
</div>
<div id=movie3 ><iframe width="150" height="100" src="https://www.youtube.com/embed/jrQ-pInzXHE?si=82UTFCAkdiJw4vxW" 	title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div>
<div id="mt3" onclick="change_movie3();">
<div id="mt3a">영화 : 범죄도시</div>
<div id="mt3b">감독 : 허명행 / 개봉일 : 2024.04.24</div>
<div id="mt3c">줄거리 : 신종 마약 사건 3년 뒤, 괴물형사 ‘마석도’(마동석)와 서울 광수대는 배달앱을 이용한 마약 판매 사건을 수사하던 중 수배 중인 앱 개발자가 필리핀에서 사망한 사건이 대규모 온라인 불법 도박 조직과 연관되어 있음을 알아낸다. 필리핀에 거점을 두고 납치, 감금, 폭행, 살인 등으로 대한민국 온라인 불법 도박 시장을 장악한 특수부대 용병 출신의 빌런 ‘백창기’(김무열)와 한국에서 더 큰 판을 짜고 있는 IT업계 천재 CEO ‘장동철’(이동휘). ‘마석도’는 더 커진 판을 잡기 위해 ‘장이수’(박지환)에게 뜻밖의 협력을 제안하고 광역수사대는 물론, 사이버수사대까지 합류해 범죄를 소탕하기 시작하는데… 나쁜 놈 잡는데 국경도 영역도 제한 없다! 업그레이드 소탕 작전! 거침없이 싹 쓸어버린다!</div>
</div>
<div id=movie4 ><iframe width="150" height="100" src="https://www.youtube.com/embed/A131-kmSlF4?si=WwVY2mgk7TszUNja" 	title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div>
<div id="mt4" onclick="change_movie4();">
<div id="mt4a">영화 : 오멘 저주의 시작</div>
<div id="mt4b">감독 : 아르카샤 스티븐슨 / 개봉일 : 2024.04.03</div>
<div id="mt4c">줄거리 : 수녀가 되기 위해 로마에 가게 된 ‘마거릿’(넬 타이거 프리). 그곳에서 새로운 삶을 시작하려는 그때, 믿음을 뒤흔드는 어둠의 그림자를 마주한다. 서서히 조여오는 끔찍한 공포가 마침내 정체를 드러내기 시작하는데 … 6월 6일 6시 사탄의 아이가 태어나고, 믿음이 향하는 곳이 뒤바뀐다!</div>
</div>
<div id=movie5 ><iframe width="150" height="100" src="https://www.youtube.com/embed/irbm4fTW92A?si=DVGtjtCrlwXHbTBv" 	title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div>
<div id="mt5" onclick="change_movie5();">
<div id="mt5a">영화 : 플레닛</div>
<div id="mt5b">감독 : 드미트리키셀레브 / 개봉일 : 2024.06(예정)</div>
<div id="mt5c">줄거리 : ‘우주정거장 미르’에서는 24시간 뒤 지나갈 소행성을 추적 중 운석 충돌 가능성을 말하지만 무시되고 만다. 한편. 지구에서는 이러한 영문도 모른 채 지구를 비켜갈 화려한 유성우의 우주쇼를 볼 기대에 들떠 있다. 그 시간, 소행성 뒤 편 사각 지대의 운석 파편들이 핵폭탄 보다 10배 강력한 파워로 우주정거장을 파괴한 후 지구를 향해 나아가고…. 소행성에 강타당한 지구는 모든 건물과 도로가 붕괴되며 대재앙이 펼쳐지는데...</div>
</div>
<div id=movie6 ><iframe width="150" height="100" src="https://www.youtube.com/embed/exiz8yl1TX4?si=9EvWvkfdJHVTCXge&amp;start=12" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div>
<div id="mt6" onclick="change_movie6();">
<div id="mt6a">영화: 파묘</div>
<div id="mt6b">감독 : 장재현 / 개봉일 : 2024. 2. 22</div>
<div id="mt6c">줄거리 : 미국 LA, 거액의 의뢰를 받은 무당 ‘화림’(김고은)과 ‘봉길’(이도현)은 기이한 병이 대물림되는 집안의 장손을 만난다. 조상의 묫자리가 화근임을 알아챈 ‘화림’은 이장을 권하고, 돈 냄새를 맡은 최고의 풍수사 ‘상덕’(최민식)과 장의사 ‘영근’(유해진)이 합류한다. “전부 잘 알 거야… 묘 하나 잘못 건들면 어떻게 되는지” 절대 사람이 묻힐 수 없는 악지에 자리한 기이한 묘. ‘상덕’은 불길한 기운을 느끼고 제안을 거절하지만, ‘화림’의 설득으로 결국 파묘가 시작되고… 나와서는 안될 것이 나왔다.</div>
</div>
</div>
 <div id="im5">
 <div id="im2">영화: 파묘</div>
  <div id="im3">감독 : 장재현 / 개봉일 : 2024. 2. 22</div>
   <div id="im4">줄거리 : 미국 LA, 거액의 의뢰를 받은 무당 ‘화림’(김고은)과 ‘봉길’(이도현)은 기이한 병이 대물림되는 집안의 장손을 만난다. 
   조상의 묫자리가 화근임을 알아챈 ‘화림’은 이장을 권하고, 돈 냄새를 맡은 최고의 풍수사 ‘상덕’(최민식)과 장의사 ‘영근’(유해진)이 합류한다. 
   “전부 잘 알 거야… 묘 하나 잘못 건들면 어떻게 되는지” 절대 사람이 묻힐 수 없는 악지에 자리한 기이한 묘. ‘상덕’은 불길한 기운을 느끼고 제안을 거절하지만, 
   ‘화림’의 설득으로 결국 파묘가 시작되고… 나와서는 안될 것이 나왔다.</div>
   </div>
   <div id=change >
    <iframe id="frame" width="1100" height="500" src="https://www.youtube.com/embed/exiz8yl1TX4?si=9EvWvkfdJHVTCXge&amp;start=12" 
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
	<li><img src="${ pageContext.request.contextPath }/image/a.jpg" onclick="" /></li>
	<li><img src="${ pageContext.request.contextPath }/image/b.jpg" onclick="" /></li>
	<li><img src="${ pageContext.request.contextPath }/image/c.jpg" onclick="" /></li>
	<li><img src="${ pageContext.request.contextPath }/image/d.jpg" onclick="" /></li>
	<li><img src="${ pageContext.request.contextPath }/image/e.jpg" onclick="" /></li>
	
	<li><img src="${ pageContext.request.contextPath }/image/a.jpg" onclick="" /></li>
	<li><img src="${ pageContext.request.contextPath }/image/b.jpg" onclick="" /></li>
	<li><img src="${ pageContext.request.contextPath }/image/c.jpg" onclick="" /></li>
	<li><img src="${ pageContext.request.contextPath }/image/d.jpg" onclick="" /></li>
	<li><img src="${ pageContext.request.contextPath }/image/e.jpg" onclick="" /></li>
	</ul>
</div>
	<div>
			<a class="carousel-control-prev" href="#demo" data-slide="prev">
		 	<i class="material-icons" style="font-size:70px;color:white"onclick="moveImage_right();">fast_rewind</i></a>&emsp;&emsp;
			<a class="carousel-control-next" href="#demo" data-slide="next">
			<i class="material-icons" style="font-size:70px;color:white"onclick="moveImage_left();">fast_forward</i></a>
	</div>
	</div>
	
<div id="text3">
	<h1 >평균별점이 높은 순위</h1>
</div>
<div id="boxe">
<div id="boxf">
<ul>
	<li><img src="${ pageContext.request.contextPath }/image/a2.jpg" onclick="" /></li>
	<li><img src="${ pageContext.request.contextPath }/image/b2.jpg" onclick="" /></li>
	<li><img src="${ pageContext.request.contextPath }/image/c2.jpg" onclick="" /></li>
	<li><img src="${ pageContext.request.contextPath }/image/d2.jpg" onclick="" /></li>
	<li><img src="${ pageContext.request.contextPath }/image/e2.jpg" onclick="" /></li>
	
	<li><img src="${ pageContext.request.contextPath }/image/a2.jpg" onclick="" /></li>
	<li><img src="${ pageContext.request.contextPath }/image/b2.jpg" onclick="" /></li>
	<li><img src="${ pageContext.request.contextPath }/image/c2.jpg" onclick="" /></li>
	<li><img src="${ pageContext.request.contextPath }/image/d2.jpg" onclick="" /></li>
	<li><img src="${ pageContext.request.contextPath }/image/e2.jpg" onclick="" /></li>
	</ul>
</div>
<div>
			<a class="carousel-control-prev" href="#demo" data-slide="prev">
		 	<i class="material-icons" style="font-size:70px;color:white;"onclick="moveImage_rightf();">fast_rewind</i></a>&emsp;&emsp;
			<a class="carousel-control-next" href="#demo" data-slide="next">
			<i class="material-icons" style="font-size:70px;color:white"onclick="moveImage_leftf();">fast_forward</i></a>
	</div>
	</div>
	

	<div id="both">
	<div id="news">영화뉴스
	<div id="news1"></div>
	<div id="news2"></div>
	<div id="news3"></div>
	</div>
		
	<div id="review">평론
	<div id="review1"></div>
	<div id="review2"></div>
	<div id="review3"></div>
	</div>
	</div>
	
	<div id="text1"><h1 >굿즈판매</h1></div>
	<div id="goods">
	<div id="product" >
				<img src="${ pageContext.request.contextPath }/image/yo.jpg" id="img1" />
	</div>
	<div id="cat">
			 <div id="list">
			 	<div id="imga"><img src="${ pageContext.request.contextPath }/image/yo.jpg" /></div>
				<div id="img2">1번 제품명: 스타워즈 아기 요다 / 가격 : 26,860원</div>
				<div id="imgb"><img src="${ pageContext.request.contextPath }/image/ban.jpg" /></div>
				<div id="img3">2번 제품명: 베놈 / 가격 : 24,450원</div>
				<div id="imgc"><img src="${ pageContext.request.contextPath }/image/bat.jpg" /></div>
				<div id="img4">3번 제품명: 베트맨 닌자버전 / 가격 : 318,760원</div>
				<div id="imgd"><img src="${ pageContext.request.contextPath }/image/naz.jpg"/></div>
				<div id="img5">4번 제품명: 반지의제왕 나즈굴 / 가격 : 26,580원</div>
			</div>
	</div>
	</div>
	</div>




<br>
<hr>
	<section id="footer">
						<footer class="container-fluid text-center" id="footer">
							<span class="fooa">Film</span><span class="foob">Match</span><br>
							<span class="df">대표자 : 임대표 대표전화: 02-746-8867 | 주 소 : 서울시 서초구 서초대로77길 41</span>
							<p>
								<span class="df" href="footer/personaldata.jsp">개인정보사용방침</span> | <span class="df" href="footer/use.jsp">이용약관</span> | <span class="df" href="footer/protect.jsp">청소년보호정책</span>
							</p>
						</footer>
					</section>
</body>
</html>














