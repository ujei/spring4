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
					<h1><a href="#"><img src="/resources/brand/images/logo.png" alt="ACE Home Center" /></a></h1>
					<nav>
						<ul>
							<li><a href="#">에이스 홈센터 소개</a></li>
							<li><a href="#">상품소개</a></li>
							<li><a href="#">이벤트</a></li>
							<li><a href="#">공지사항</a></li>
							<li><a href="#">매장 안내</a></li>
							<li><a href="#">고객센터</a></li>
							<li><a href="#"></a></li>
						</ul>
					</nav>
					<menu>
						<a href="#" class="btn-login">로그인</a>
						<a href="#">회원가입</a>
						<a href="#"><strong>홈데이몰 바로가기</strong></a>
					</menu>
				</div>
			</div>
			<div id="notice" class="notice">
				<div class="inner">
					<h3>에이스 홈센터 공지사항</h3>
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<div class="swiper-slide"><a href="#">북토크가 론칭합니다! 다양한 론칭기념 이벤트와 경품을 지금 바로 확인하세요1</a></div>
							<div class="swiper-slide"><a href="#">북토크가 론칭합니다! 다양한 론칭기념 이벤트와 경품을 지금 바로 확인하세요2</a></div>
							<div class="swiper-slide"><a href="#">북토크가 론칭합니다! 다양한 론칭기념 이벤트와 경품을 지금 바로 확인하세요3</a></div>
							<div class="swiper-slide"><a href="#">북토크가 론칭합니다! 다양한 론칭기념 이벤트와 경품을 지금 바로 확인하세요4</a></div>
							<div class="swiper-slide"><a href="#">북토크가 론칭합니다! 다양한 론칭기념 이벤트와 경품을 지금 바로 확인하세요5</a></div>
						</div>
						<div class="swiper-pagination"></div>
					</div>
					<script type="text/javascript">
						var swiperNotice = new Swiper("#notice .swiper-container", {
							pagination: "#notice .swiper-pagination",
							loop: true,
							autoplay: 4000
						});
					</script>
				</div>
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