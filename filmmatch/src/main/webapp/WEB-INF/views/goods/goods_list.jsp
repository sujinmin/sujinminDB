<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="../image/ban.png" />
<link rel="apple-touch-icon" href="../image/ban.png" />
<link rel="apple-touch-icon" sizes="180x180" href="../image/ban.png">
<link rel="icon" type="image/png" sizes="32x32" href="../image/ban.png">
<link rel="icon" type="image/png" sizes="16x16" href="../image/ban.png">
<link rel="manifest" href="../image/ban.png">
<meta name="theme-color" content="#ffffff">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="${ pageContext.request.contextPath }/js/goods/goods.js"></script>

<link href="${ pageContext.request.contextPath }/css/goods/goods.css" rel="stylesheet" type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link href="${ pageContext.request.contextPath }/css/goods/giftstore.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div id="boxx">
		<span class="film">Film</span><span class="match">Match</span>&emsp; <a id="cate" href="${ pageContext.request.contextPath }/product/list.do?c_idx=1">영화</a>&emsp; <a id="cate" href="${ pageContext.request.contextPath }/product/list.do?c_idx=2">책</a>&emsp; <a id="cate" href="${ pageContext.request.contextPath }/product/list.do?c_idx=3">TV프로그램</a>&emsp; <a id="cate" href="${ pageContext.request.contextPath }/product/list.do?c_idx=4">웹툰</a>&emsp; <a class="box1"> <input id="se" type="text" placeholder="콘텐츠, 인물, 컬렉션, 유저를 검색해보세요."> <img id="im" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png" onclick="">
		</a> <input type="button" id="btn1" value="로그인" onclick="" /> <input type="button" id="btn2" value="회원가입" onclick="" />
	</div>


	<div>
		<form class="form-inline">
			<div id="box">
				<div id="product_box">
					<!-- 등록된 사진이 없으면  -->
					<%-- <c:if test="${ empty list }">
						<div
							style="color: red; text-align: center; margin-top: 190px; font-weight: bold;">
							등록된 사진이 없습니다</div>
					</c:if> --%>

					<%-- <c:forEach begin="1"  end="20"> --%>
					<!-- for(productVo vo : list) 동일  -->

					<div class="category_product_list_wrap">
						<strong class="category_product_list_title">굿즈<span>센스있는 선물의 정석</span></strong> <input type="button" value="상품등록" onclick="insert_form();">
						<ul class="com_list_style" style="list-style-type: none">
							<c:forEach var="vo" items="${map.goods_contents}">
							

								<li class="state_giftcard">
								<a href="goods_view.do?goods_idx=${vo.goods_idx}" class="btn_category_product"> 
								<span class="com_list_img_wrap"> 
									<img src="${ pageContext.request.contextPath }/upload/sezhime.jpg" alt="스즈메의 문단속" style="height: 300px">
										</span> 
											<span class="com_list_text_wrap"> 
											<span class="com_list_text_title">스즈메의 문단속</span> 
											<span class="com_list_text_name">의자</span>
											<span class="com_list_sale_price_wrap"> 
											<span class="com_list_text_name">어쩌구저쩌구</span>
										</span>
								</span>
								</a> 
								<a href="#none" class="btn_category_product_gift"></a>
								<a href="#none" class="btn_category_product_buy"></a>
								</li>

							
							</c:forEach>
						</ul>

		</form>
	</div>

</body>
</html>