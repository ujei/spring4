<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi" />
	<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/lib/swiper.min.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/mobile/common.css">
	<script type="text/javascript" src="/resources/js/lib/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="/resources/js/lib/swiper.min.js"></script>
	<script type="text/javascript" src="/resources/js/lib/jquery-fakeform-0.5.js"></script>
	<script type="text/javascript" src="/resources/js/common.js"></script>
	<title>에이스 홈센터 오프라인 가입</title>
</head>
<body>
	<div class="ace">
		<header>
			<div class="inner">
				<h1><a href="#"><img src="/resources/img/logo.png" alt="ACE Home Center" /></a></h1>
				<p>에이스 홈센터 오프라인 가입</p>
			</div>
		</header>
		<div class="content">
			<div class="step">
				<div class="step-list">
					<ol>
						<li><strong>1</strong><span>본인인증</span></li>
						<li><strong>2</strong><span>개인정보 입력</span></li>
						<li><strong>3</strong><span>가입 정보 확인</span></li>
						<li class="active"><strong>4</strong><span>가입 완료</span></li>
					</ol>
				</div>
			</div>
			<div class="title hide">
				<div class="inner">
					<strong>4</strong><span>가입 완료</span>
				</div>
			</div>
			<div class="result">
				<div class="inner">
					<div class="bg"></div>
					<div class="txt"><span>"작은 나사 하나까지</span><span>가장 좋은 서비스로"</span></div>
					<strong>에이스 홈센터 오프라인 가입이<br />완료 되었습니다.</strong>
				</div>
			</div>
			<div id="banner" class="banner">
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							<div class="inner">
								<span>에이스하드웨어는?</span>
								<strong>최상의 작업 도구!</strong>
								에이스하드웨어는 지금 바로 필요한 도구를 종류에 가리지 않고<br />
								모두 구매할 수 있습니다. 또한 합리적인 가격으로 여러분께 다가갑니다.<br />
								최상의 서비스, 최고의 품질!<br />
								에이스홈센터에 지금 방문하세요.
							</div>
						</div>
						<div class="swiper-slide">
							<div class="inner">
								<span>에이스하드웨어는?</span>
								<strong>최상의 작업 도구!</strong>
								에이스하드웨어는 지금 바로 필요한 도구를 종류에 가리지 않고<br />
								모두 구매할 수 있습니다. 또한 합리적인 가격으로 여러분께 다가갑니다.<br />
								최상의 서비스, 최고의 품질!<br />
								에이스홈센터에 지금 방문하세요.
							</div>
						</div>
						<div class="swiper-slide">
							<div class="inner">
								<span>에이스하드웨어는?</span>
								<strong>최상의 작업 도구!</strong>
								에이스하드웨어는 지금 바로 필요한 도구를 종류에 가리지 않고<br />
								모두 구매할 수 있습니다. 또한 합리적인 가격으로 여러분께 다가갑니다.<br />
								최상의 서비스, 최고의 품질!<br />
								에이스홈센터에 지금 방문하세요.
							</div>
						</div>
					</div>
					<div class="swiper-pagination"></div>
					<div class="swiper-button-next"></div>
					<div class="swiper-button-prev"></div>
				</div>
				<script type="text/javascript">
					var swiperNotice = new Swiper(".banner .swiper-container", {
						pagination: {
							el: ".banner .swiper-pagination",
							type: "fraction",
						},
						navigation: {
							nextEl: '.swiper-button-next',
							prevEl: '.swiper-button-prev',
						},
						slidesPerView: 1,
						effect: "fade",
						spaceBetween: 0,
						loop: true,
						autoplay: 4000
					});
				</script>
			</div>
			<div class="btn-area">
				<button class="c-button c-button--red btn-home" type="button" onclick="location.href='/offline/'">
					<div class="c-ripple js-ripple"><span class="c-ripple__circle"></span></div>
					첫 화면으로 돌아가기
				</button>
			</div>
			<div class="caution">
				<p>이메일 주소(로그인 계정 이름), 비밀번호는 브랜드 웹사이트에서<br />기입 할 수 있습니다.</p>
				<p>에이스 홈센터 브랜드 웹사이트에서는 에이스 홈센터의 구체적인 정보와<br />다양한 이벤트 등 실속있는 정보를 제공해 드립니다.</p>
			</div>
			<footer>Copyrightⓒ Ace Home Center Korea Co., Ltd. All Rights Reserved.</footer>
		</div>
	</div>
</body>
</html>