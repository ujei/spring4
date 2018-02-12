<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi" />
	<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
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
						<li class="active"><strong>3</strong><span>가입 정보 확인</span></li>
						<li><strong>4</strong><span>가입 완료</span></li>
					</ol>
				</div>
			</div>
			<div class="title">
				<div class="inner">
					<strong>3</strong><span>가입 정보 확인</span>
				</div>
			</div>
			<form action="">
				<div class="info">
					<ul>
						<li>
							<div class="inner">
								<div class="ti">성명</div>
								<div class="txt">${name }</div>
							</div>
						</li>
						<li>
							<div class="inner">
								<div class="ti">휴대전화 번호</div>
								<div class="txt">${mobileNo }</div>
							</div>
						</li>
						<li>
							<div class="inner">
								<div class="ti">생년월일</div>
								<div class="txt">${birthDay }</div>
							</div>
						</li>
						<li>
							<div class="inner">
								<div class="ti">성별</div>
								<div class="txt">남성</div>
							</div>
						</li>
						<li class="address">
							<div class="inner">
								<div class="ti">주소</div>
								<div class="txt">
									(${postCode })<br />
									<span>도로명주소</span>
									<p>
										${addr1 }
									</p>
									<span>지번주소</span>
									<p>
										${addr2 }
									</p>
								</div>
							</div>
						</li>
						<li>
							<div class="inner">
								<div class="ti">마케팅 수신 동의</div>
								<div class="txt">우편, 전화, 문자</div>
							</div>
						</li>
					</ul>
				</div>
				<div class="btn-area">
					<button class="c-button c-button--gray" type="button" onclick="location.href='/input'">
						<div class="c-ripple js-ripple"><span class="c-ripple__circle"></span></div>
						수정하기
					</button>
					<button class="c-button c-button--red" type="button" onclick="location.href='/complete'">
						<div class="c-ripple js-ripple"><span class="c-ripple__circle"></span></div>
						가입 완료
					</button>
				</div>
				<div class="caution">
					<p>
						가입 정보는 브랜드 웹사이트에서 변경 가능합니다.<br />
						매장 할인 정보 등 유용한 정보를 엄선해 동의 항목으로 보내 드립니다.<br />
						마케팅 수신 동의 여부는 브랜드 웹사이트에서 변경 가능합니다.
					</p>
				</div>
			</form>
			<footer>Copyrightⓒ Ace Home Center Korea Co., Ltd. All Rights Reserved.</footer>
		</div>
	</div>
</body>
</html>