/**
 * 
 */
$(document).ready(function() {
	
	$(".mybtn").click(function(){
	$("#list").slideToggle(1000);
	
});

// 이미지에 마우스오버되면
		// 뿌옇게 보이게 설정
$("#list div").hover(
		function(){
			$(this).css("opacity",0.25);
		}, function(){
			$(this).css("opacity",1);
		});
// li 에 마우스 올라오면 영화정보를 
// 보여주게 설정

$("#list img").hover(function(){
	//$(".movieinfo").show();
	// 마우스 오버된 img의 src속성값얻기
	//var src = $(this).find("img").attr("src");
	//        this의 자식요소(img)알아낸다. 
   
	var src = $(this).attr("src");

	//console.log(src);
	$("#img1").attr("src",src);
}

);

});

function moveImage_left(){
$("#boxb").animate({"left":"-=100"},100, function(){
	// 현재 left속성값 얻기
	var left = parseInt($("#boxb").css("left"));
	console.log(left);
	if(left <  -1394){
		// 오른쪽에서 다시 나오게 하기 
		$("#boxb").css("left","0px");
	}
});
}

function moveImage_right(){
$("#boxb").animate({"left":"+=100"},100, function(){
	// 현재 left속성값 얻기
	var left = parseInt($("#boxb").css("left"));
	console.log(left);
	if(left >  0){
		// 왼쪽에서 다시 나오게 하기 
		$("#boxb").css("left","-1394px");
	}
});
}

function moveImage_leftd(){
$("#boxd").animate({"left":"-=100"},100, function(){
	// 현재 left속성값 얻기
	var left = parseInt($("#boxd").css("left"));
	console.log(left);
	if(left <  -1394){
		// 오른쪽에서 다시 나오게 하기 
		$("#boxd").css("left","0px");
	}
});
}

function moveImage_rightd(){
$("#boxd").animate({"left":"+=100"},100, function(){
	// 현재 left속성값 얻기
	var left = parseInt($("#boxd").css("left"));
	console.log(left);
	if(left >  0){
		// 왼쪽에서 다시 나오게 하기 
		$("#boxd").css("left","-1394px");
	}
});
}

function moveImage_leftf(){
$("#boxf").animate({"left":"-=100"},100, function(){
	// 현재 left속성값 얻기
	var left = parseInt($("#boxf").css("left"));
	console.log(left);
	if(left <  -1394){
		// 오른쪽에서 다시 나오게 하기 
		$("#boxf").css("left","0px");
	}
});
}

function moveImage_rightf(){
$("#boxf").animate({"left":"+=100"},100, function(){
	// 현재 left속성값 얻기
	var left = parseInt($("#boxf").css("left"));
	console.log(left);
	if(left >  0){
		// 왼쪽에서 다시 나오게 하기 
		$("#boxf").css("left","-1394px");
	}
});
}

function change_movie1(){		

$("#frame").attr("src","https://www.youtube.com/embed/4ycxumdqUnY?si=htkiD0ed7QvczNZB" );
$("#im2").html("영화추천 : 콰이어트 플레이스");
$("#im3").html("감독 : 마이클 사노스키 / 개봉일 : 2024.06(예정)");
$("#im4").html("줄거리 : 소리를 내는 순간 공격하는 괴생명체의 출현으로 온 세상이 침묵하게 된 그날, 모든 것의 시작을 그린 이야기");		
}

function change_movie2(){		

$("#frame").attr("src","https://www.youtube.com/embed/uoN1xfl5VZE?si=0N0NR35N889KP4g6" );
$("#im2").html("영화추천 : 마담 웹 / 개봉일 : 2024.03.13");
$("#im3").html("감독 : S.J. 클락슨");
$("#im4").html("줄거리 : 우연한 사고로 미래를 볼 수 있게 된 구급대원 '캐시 웹'이 거미줄처럼 엮인 운명을 마주하며, 같은 예지 능력을 가진 적 '심스'에 맞서 세상을 구할 히어로 '마담 웹'으로 거듭나게 되는 과정을 그린 마블의 NEW 히어로 드라마");
}

function change_movie3(){		

$("#frame").attr("src","https://www.youtube.com/embed/jrQ-pInzXHE?si=82UTFCAkdiJw4vxW" );
$("#im2").html("영화추천 : 범죄도시");
$("#im3").html("감독 : 허명행 / 개봉일 : 2024.04.24");
$("#im4").html("줄거리 : 신종 마약 사건 3년 뒤, 괴물형사 ‘마석도’(마동석)와 서울 광수대는 배달앱을 이용한 마약 판매 사건을 수사하던 중 수배 중인 앱 개발자가 필리핀에서 사망한 사건이 대규모 온라인 불법 도박 조직과 연관되어 있음을 알아낸다. 필리핀에 거점을 두고 납치, 감금, 폭행, 살인 등으로 대한민국 온라인 불법 도박 시장을 장악한 특수부대 용병 출신의 빌런 ‘백창기’(김무열)와 한국에서 더 큰 판을 짜고 있는 IT업계 천재 CEO ‘장동철’(이동휘). ‘마석도’는 더 커진 판을 잡기 위해 ‘장이수’(박지환)에게 뜻밖의 협력을 제안하고 광역수사대는 물론, 사이버수사대까지 합류해 범죄를 소탕하기 시작하는데… 나쁜 놈 잡는데 국경도 영역도 제한 없다! 업그레이드 소탕 작전! 거침없이 싹 쓸어버린다!");
}	

function change_movie4(){	

$("#frame").attr("src","https://www.youtube.com/embed/A131-kmSlF4?si=WwVY2mgk7TszUNja" );	
$("#im2").html("영화추천 : 오멘 저주의 시작");
$("#im3").html("감독 : 아르카샤 스티븐슨 / 개봉일 : 2024.04.03");
$("#im4").html("줄거리 : 수녀가 되기 위해 로마에 가게 된 ‘마거릿’(넬 타이거 프리). 그곳에서 새로운 삶을 시작하려는 그때, 믿음을 뒤흔드는 어둠의 그림자를 마주한다. 서서히 조여오는 끔찍한 공포가 마침내 정체를 드러내기 시작하는데 … 6월 6일 6시 사탄의 아이가 태어나고, 믿음이 향하는 곳이 뒤바뀐다!");
}

function change_movie5(){	
$("#frame").attr("src","https://www.youtube.com/embed/irbm4fTW92A?si=DVGtjtCrlwXHbTBv" );	
$("#im2").html("영화추천 : 플레닛");
$("#im3").html("감독 : 드미트리키셀레브 / 개봉일 : 2024.06(예정)");
$("#im4").html("줄거리 : ‘우주정거장 미르’에서는 24시간 뒤 지나갈 소행성을 추적 중 운석 충돌 가능성을 말하지만 무시되고 만다. 한편. 지구에서는 이러한 영문도 모른 채 지구를 비켜갈 화려한 유성우의 우주쇼를 볼 기대에 들떠 있다. 그 시간, 소행성 뒤 편 사각 지대의 운석 파편들이 핵폭탄 보다 10배 강력한 파워로 우주정거장을 파괴한 후 지구를 향해 나아가고…. 소행성에 강타당한 지구는 모든 건물과 도로가 붕괴되며 대재앙이 펼쳐지는데...");
}

function change_movie6(){	

$("#frame").attr("src","https://www.youtube.com/embed/exiz8yl1TX4?si=9EvWvkfdJHVTCXge&amp;start=12");	
$("#im2").html("영화추천: 파묘");
$("#im3").html("감독 : 장재현 / 개봉일 : 2024. 2. 22");
$("#im4").html("줄거리 : 미국 LA, 거액의 의뢰를 받은 무당 ‘화림’(김고은)과 ‘봉길’(이도현)은 기이한 병이 대물림되는 집안의 장손을 만난다. 조상의 묫자리가 화근임을 알아챈 ‘화림’은 이장을 권하고, 돈 냄새를 맡은 최고의 풍수사 ‘상덕’(최민식)과 장의사 ‘영근’(유해진)이 합류한다. “전부 잘 알 거야… 묘 하나 잘못 건들면 어떻게 되는지” 절대 사람이 묻힐 수 없는 악지에 자리한 기이한 묘. ‘상덕’은 불길한 기운을 느끼고 제안을 거절하지만, ‘화림’의 설득으로 결국 파묘가 시작되고… 나와서는 안될 것이 나왔다.");
}