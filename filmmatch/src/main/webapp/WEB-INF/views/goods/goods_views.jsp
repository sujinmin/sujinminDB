<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
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
<script src="${ pageContext.request.contextPath }/js/goods.js"></script>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
 <div id="boxx">
	<span class="film">Film</span><span class="match">Match</span>&emsp;
	<a id="cate" href="${ pageContext.request.contextPath }/product/list.do?c_idx=1">영화</a>&emsp;
	<a id="cate" href="${ pageContext.request.contextPath }/product/list.do?c_idx=2">책</a>&emsp;
	<a id="cate" href="${ pageContext.request.contextPath }/product/list.do?c_idx=3">TV프로그램</a>&emsp;
	<a id="cate" href="${ pageContext.request.contextPath }/product/list.do?c_idx=4">웹툰</a>&emsp;	
   	<a class="box1">
 	<input id="se" type="text" placeholder="콘텐츠, 인물, 컬렉션, 유저를 검색해보세요." >
 	<img id="im" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png" onclick="">
  	</a>	
  	<input type="button"  id="btn1"  value="로그인" onclick=""/>
  	<input type="button"  id="btn2"  value="회원가입" onclick=""/>
</div>
	<div>
	${vo.goods_contents}
	</div>
	
</body>
</html>