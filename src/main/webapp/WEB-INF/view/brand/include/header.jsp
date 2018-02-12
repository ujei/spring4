<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="ko">
<head>
	<title></title>
	<meta name="generator" content="editplus" />
	<meta name="author" content="" />
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<link rel="stylesheet" type="text/css" href="/resources/brand/css/common.css">
		<link rel="stylesheet" type="text/css" href="/resources/brand/css/swiper.min.css">
	<script type="text/javascript" src="/resources/js/lib/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="/resources/js/lib/swiper.min.js"></script>
	<script type="text/javascript" src="/resources/js/lib/jquery-fakeform-0.5.js"></script>
	<script type="text/javascript" src="/resources/brand/js/common.js"></script>
</head>
<body>
	<div class="ace">
		<header>
			<div class="header">
				<div class="inner">
					<h1><a href="/brand/index"><img src="/resources/brand/images/logo.png" alt="ACE Home Center" /></a></h1>
					<nav>
						<ul>
							<li><a href="/brand/introduce">에이스 홈센터 소개</a></li>
							<li><a href="/brand/product">상품 소개</a></li>
							<li><a href="/brand/event">이벤트</a></li>
							<li><a href="/brand/notice">공지사항</a></li>
							<li><a href="/brand/store">매장 안내</a></li>
							<li><a href="/brand/customer">고객센터</a></li>
						</ul>
					</nav>
					<menu>
						<a href="#" class="btn-login">로그인</a>
						<a href="/brand/join1">회원가입</a>
						<a href="http://www.homedaymall.com/" target="_blank"><strong>홈데이몰 바로가기</strong></a>
					</menu>
				</div>
			</div>
			<div id="notice" class="notice">
				<div class="inner">
					<h3>에이스 홈센터 공지사항</h3>
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<div class="swiper-slide"><a href="#">에이스 홈센터 한국 론칭과 함께 웹사이트를 공개 합니다! 각 매장별 기념 이벤트를 함께 확인하세요.</a></div>
							<div class="swiper-slide"><a href="#">에이스 홈센터 한국 론칭과 함께 웹사이트를 공개 합니다! 각 매장별 기념 이벤트를 함께 확인하세요.</a></div>
						</div>
					</div>
					<div class="swiper-pagination"></div>
				</div>
				<script type="text/javascript">
					var swiperNotice = new Swiper("#notice .swiper-container", {
						pagination: {
							el: "#notice .swiper-pagination",
							type: "fraction",
						},
						effect: "fade",
						loop: true,
						autoplay: 4000
					});
				</script>
			</div>
			<div class="login-layer">
				<div class="login">
					<div class="head">
						<img src="/resources/brand/images/logo_login.png" alt="ACE Home Center" />
						에이스 홈센터 로그인
						<a href="#" class="btn-close">창 닫기</a>
					</div>
					<div class="form-area">
						<form action="">
							<ul>
								<li>
									<strong>아이디</strong>
									<input type="text" placeholder="아이디로 설정한 이메일 주소를 입력하세요." />
								</li>
								<li>
									<strong>비밀번호</strong>
									<input type="password" placeholder="비밀번호를 입력해 주세요." />
								</li>
							</ul>
							<a href="" class="btn-login">로그인</a>
							<p>
								<input type="checkbox" id="marketing-post" name="marketing">
								<label for="marketing-post">아이디 저장</label>
								<a href="#">아이디 / 비밀번호 찾기</a>
							</p>
						</form>
					</div>
					<div class="txt">
						아직 에이스 홈센터 회원이 아니신가요?
						<a href="" class="btn-join">에이스 홈센터 회원가입</a>
					</div>
					<div class="caution">
						<ul>
							<li><p>에이스 홈센터 오프라인 매장에서도 회원가입을 하실 수 있습니다.</p></li>
							<li><p>오프라인 매장에서 회원가입 하신 경우, 본인 인증 후 ID, 비밀번호 입력 후 최종 가입 완료 가능합니다.</p></li>
						</ul>
					</div>
				</div>
			</div>
		</header>
		<aside>
			<div class="btn-homedaymall">
				<span>홈데이몰</span>에서<br />
				제품 구매하기
			</div>
			<a href="http://www.homedaymall.com" target="_blank">
				<ul>
					<li class="txt01">
						홈데이몰에서<br />
						제품 구매하기
					</li>
					<li class="txt02">
						믿을 수 있는 브랜드<br />
						홈데이몰
					</li>
				</ul>
			</a>
		</aside>
