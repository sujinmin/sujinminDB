<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
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
<link rel="apple-touch-icon" href="${ pageContext.request.contextPath }/image/Banner.png"/>
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
<!-- Header -->
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