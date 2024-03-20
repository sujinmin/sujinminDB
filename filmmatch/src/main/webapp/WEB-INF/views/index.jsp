<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta name="robots" content="index, follow, max-image-preview:large, max-snippet:-1, max-video-preview:-1"><meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"><link rel="stylesheet" href="${ pageContext.request.contextPath }/css/main/main.css">
<script src="${ pageContext.request.contextPath }/js/main/jquery.min.js"></script><script src="${ pageContext.request.contextPath }/js/main/skel.min.js"></script><script src="${ pageContext.request.contextPath }/js/main/util.js"></script><script src="${ pageContext.request.contextPath }/js/main/main.js"></script></body></html>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="${ pageContext.request.contextPath }/image/ban.png" />
<link rel="apple-touch-icon" href="${ pageContext.request.contextPath }/image/ban.png" />
<link rel="apple-touch-icon" sizes="180x180" href="${ pageContext.request.contextPath }/image/ban.png">
<link rel="icon" type="image/png" sizes="32x32" href="${ pageContext.request.contextPath }/image/ban.png">
<link rel="icon" type="image/png" sizes="16x16" href="${ pageContext.request.contextPath }/image/ban.png">
<link rel="manifest" href="${ pageContext.request.contextPath }/image/ban.png">
<meta name="theme-color" content="#ffffff">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<script src="${ pageContext.request.contextPath }/js/goods/goods.js"></script>

<link href="${ pageContext.request.contextPath }/css/goods/goods.css" rel="stylesheet" type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link href="${ pageContext.request.contextPath }/css/goods/giftstore.css" rel="stylesheet" type="text/css" />
</head>

<body>


		<!-- Header -->
			<header id="header"><div class="inner">
					<a href="index.html" class="logo">introspect</a>
					<nav id="nav"><a href="index.html">Home</a>
						<a href="generic.html">Generic</a>
						<a href="elements.html">Elements</a>
					</nav></div>
			</header><a href="#menu" class="navPanelToggle"><span class="fa fa-bars"></span></a>

		<!-- Banner -->
			<section id="banner"><div class="inner">
					<h1>Introspect: <span>A free + fully responsive<br>
					site template by TEMPLATED</span></h1>
					<ul class="actions"><li><a href="#" class="button alt">Get Started</a></li>
					</ul></div>
			</section><!-- One --><section id="one"><div class="inner">
					<header><h2>Magna Etiam Lorem</h2>
					</header><p>Suspendisse mauris. Fusce accumsan mollis eros. Pellentesque a diam sit amet mi ullamcorper vehicula. Integer adipiscin sem. Nullam quis massa sit amet nibh viverra malesuada. Nunc sem lacus, accumsan quis, faucibus non, congue vel, arcu, erisque hendrerit tellus. Integer sagittis. Vivamus a mauris eget arcu gravida tristique. Nunc iaculis mi in ante.</p>
					<ul class="actions"><li><a href="#" class="button alt">Learn More</a></li>
					</ul></div>
			</section><!-- Two --><section id="two"><div class="inner">
					<article><div class="content">
							<header><h3>Pellentesque adipis</h3>
							</header><div class="image fit">
								<img src="${ pageContext.request.contextPath }/image/pic01.jpg" alt="" width="473" height="220"></div>
							<p>Cumsan mollis eros. Pellentesque a diam sit amet mi magna ullamcorper vehicula. Integer adipiscin sem. Nullam quis massa sit amet lorem ipsum feugiat tempus.</p>
						</div>
					</article><article class="alt"><div class="content">
							<header><h3>Morbi interdum mol</h3>
							</header><div class="image fit">
								<img src="${ pageContext.request.contextPath }/image/pic02.jpg" alt="" width="473" height="220"></div>
							<p>Cumsan mollis eros. Pellentesque a diam sit amet mi magna ullamcorper vehicula. Integer adipiscin sem. Nullam quis massa sit amet lorem ipsum feugiat tempus.</p>
						</div>
					</article></div>
			</section><!-- Three --><section id="three"><div class="inner">
					<article><div class="content">
							<span class="icon fa-laptop"></span>
							<header><h3>Tempus Feugiat</h3>
							</header><p>Morbi interdum mollis sapien. Sed ac risus. Phasellus lacinia, magna lorem ullamcorper laoreet, lectus arcu.</p>
							<ul class="actions"><li><a href="#" class="button alt">Learn More</a></li>
							</ul></div>
					</article><article><div class="content">
							<span class="icon fa-diamond"></span>
							<header><h3>Aliquam Nulla</h3>
							</header><p>Ut convallis, sem sit amet interdum consectetuer, odio augue aliquam leo, nec dapibus tortor nibh sed.</p>
							<ul class="actions"><li><a href="#" class="button alt">Learn More</a></li>
							</ul></div>
					</article><article><div class="content">
							<span class="icon fa-laptop"></span>
							<header><h3>Sed Magna</h3>
							</header><p>Suspendisse mauris. Fusce accumsan mollis eros. Pellentesque a diam sit amet mi ullamcorper vehicula.</p>
							<ul class="actions"><li><a href="#" class="button alt">Learn More</a></li>
							</ul></div>
					</article></div>
			</section><!-- Footer --><section id="footer"><div class="inner">
					<header><h2>Get in Touch</h2>
					</header><form method="post" action="#">
						<div class="field half first">
							<label for="name">Name</label>
							<input type="text" name="name" id="name"></div>
						<div class="field half">
							<label for="email">Email</label>
							<input type="text" name="email" id="email"></div>
						<div class="field">
							<label for="message">Message</label>
							<textarea name="message" id="message" rows="6"></textarea></div>
						<ul class="actions"><li><input type="submit" value="Send Message" class="alt"></li>
						</ul></form>
				</div>
			</section><div class="copyright">
			Powered by: <a href="https://templated.co/">Templated</a>.
		</div>
</body>
</html>