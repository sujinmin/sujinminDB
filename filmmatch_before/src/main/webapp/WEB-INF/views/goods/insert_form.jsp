<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="ko">
<head>
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

<link href="${ pageContext.request.contextPath }/css/goods/goods_insert.css" rel="stylesheet" type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>상품 등록</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="//cdn.ckeditor.com/4.19.0/full/ckeditor.js"></script>
<link href="${ pageContext.request.contextPath }/css/goods/goods.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
$(document).ready(function() {
	// 사용자가 이미지를 임시로 업로드 했을 경우, 임시로 보여주는 코드
       $('#fileInput').change(function(event) {
        const file = event.target.files[0];
        if (file) {
            const reader = new FileReader();
            reader.onload = function() {
                const imagePreview = $('#imagePreview');
                imagePreview.empty();
                const imgElement = $('<img>');
                imgElement.attr('src', reader.result);
                imgElement.css('width', '300px'); // 너비 고정
                imgElement.css('height', '300px'); // 높이 고정
                imagePreview.append(imgElement);
            }
            reader.readAsDataURL(file);
        } else {
            // 파일이 선택되지 않았을 때, 기본 이미지.
            const imagePreview = $('#imagePreview');
            imagePreview.empty();
            const imgElement = $('<img id="upload_img">');
            imgElement.attr('src', '${pageContext.request.contextPath}/upload/No-image-found.jpg');
            imgElement.css('width', '300px'); // 너비 고정
            imgElement.css('height', '300px'); // 높이 고정
            imagePreview.append(imgElement);
        }
    });
    
    $(function() {
		CKEDITOR.replace('goods_contents',{
			filebrowserUploadUrl : '${pageContext.request.contextPath}/adm/fileupload.do',
			removePlugyins:'save'
		});
		

	
	});
});
	
	function send(f) {
		// let goods_contents = CKEDITOR.instances.goods_contents.getData();
		
		f.action = "/goods/insert.do"; // PhotoInsertAction
		f.submit();
	}
	
	

</script>
<meta charset="utf-8">
<title>굿즈 상품 등록</title>

</head>
<body>
<div id="boxx">
		<span class="film">Film</span><span class="match">Match</span>&emsp; <a id="cate" href="${ pageContext.request.contextPath }/product/list.do?c_idx=1">영화</a>&emsp; <a id="cate" href="${ pageContext.request.contextPath }/product/list.do?c_idx=2">책</a>&emsp; <a id="cate" href="${ pageContext.request.contextPath }/product/list.do?c_idx=3">TV프로그램</a>&emsp; <a id="cate" href="${ pageContext.request.contextPath }/product/list.do?c_idx=4">웹툰</a>&emsp; <a class="box1"> <input id="se" type="text" placeholder="콘텐츠, 인물, 컬렉션, 유저를 검색해보세요."> <img id="im" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png" onclick="">
		</a> <input type="button" id="btn1" value="로그인" onclick="" /> <input type="button" id="btn2" value="회원가입" onclick="" />
	</div>


	<div>
<div id="insert_box">
	<h1>상품 등록</h1>
	<form method="POST" enctype="multipart/form-data">
	<table class="table">
	<tr>
	<th>제목</th><td colspan="5"><input type="text" name="goods_name" id="goods_name" style="width: 80%"></input></td>
	
	</tr>
	<tr>
		<td colspan="6"><textarea name="goods_contents" id="goods_contents"></textarea></td>
	</tr>	
	<tr>
		<th style="text-align: right;">상품가</th>
		<td><input type="text" style="width: 30%" name="goods_price"></td>
		<th style="text-align: right;"> 상품 출시일자</th>
		<td style="text-align: left;"><input type="date" style="width: 50%" name="release_date"></td>
		<th style="text-align: right;"> 제조사(임시)</th>
		<td style="text-align: left;"><input type="text" style="width: 50%" name="goods_brand"></td>
	</tr>
	<tr>
	<th>대표이미지</th>
	<td><input type="file" id="fileInput" name="image_url"></td>
	<td colspan="5"><div id="imagePreview" ><img id="upload_img" src="${pageContext.request.contextPath}/upload/No-image-found.jpg"></div></td>
	</tr>
	<tr>
	
	</tr>
		
	<tr>
	<td colspan="6" style="text-align: right;">
	<p>
			<input type="button" class="btn btn-primary" value="상품 등록" onclick='send(this.form);'>
		</p>
	</td>
	</tr>	
		
		</table>
	</form>
</div>
</body>
</html>