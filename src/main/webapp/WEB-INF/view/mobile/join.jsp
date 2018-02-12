<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
	<script type="text/javascript">
window.name ="Parent_window";

$(document).ready(function() {
	$('.ipin').click(function() {
		$.ajax({
			method: "POST",
			url: "/auth/ipin"
		}).done(function(data) {
			document.form_ipin.enc_data.value = data;
			window.open('', 'popupIPIN2', 'width=450, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no');
			document.form_ipin.target = "popupIPIN2";
			document.form_ipin.action = "https://cert.vno.co.kr/ipin.cb";
			document.form_ipin.submit();
		});
	});
	
	$('.phone').click(function() {
		$.ajax({
			method: "POST",
			url: "/auth/phone"
		}).done(function(data) {
			document.form_chk.EncodeData.value = data;
			window.open('', 'popupChk', 'width=500, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no');
			document.form_chk.action = "https://nice.checkplus.co.kr/CheckPlusSafeModel/checkplus.cb";
			document.form_chk.target = "popupChk";
			document.form_chk.submit();
		});
	});
});
	</script>
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
			<form action="">
				<div class="step">
					<div class="step-list">
						<ol>
							<li class="active"><strong>1</strong><span>본인인증</span></li>
							<li><strong>2</strong><span>개인정보 입력</span></li>
							<li><strong>3</strong><span>가입 정보 확인</span></li>
							<li><strong>4</strong><span>가입 완료</span></li>
						</ol>
					</div>
				</div>
				<div class="title">
					<div class="inner">
						<strong>1</strong><span>본인인증</span>
					</div>
				</div>
				<div class="caution">
					<p>본인인증을 통해 가입하는 경우, 주민등록번호 기재 없이 하단 인증을 통해<br />회원가입이 진행됩니다.</p>
				</div>
				<div class="confirm-type">
					<div class="inner">
						<div class="ipin">
							<div class="pic"><img src="/resources/img/ipin.jpg" alt="아이핀 인증" /></div>
							<p>아이핀 인증</p>
						</div>
						<div class="phone">
							<div class="pic"><img src="/resources/img/phone.jpg" alt="휴대전화 인증" /></div>
							<p>휴대전화 인증</p>
						</div>
					</div>
				</div>
				<div class="caution">
					<p>본인 인증 중 오류 발생 시 문의 <strong>나이스평가정보 1600-1522</strong></p>
				</div>
				<div class="btn-area">
					<button class="c-button c-button--gray" type="button" onclick="location.href='/input'">
						<div class="c-ripple js-ripple"><span class="c-ripple__circle"></span></div>
						건너뛰기
					</button>
					<button class="c-button c-button--red" type="button" onclick="location.href='/input'">
						<div class="c-ripple js-ripple"><span class="c-ripple__circle"></span></div>
						다음 단계
					</button>
				</div>
			</form>
			<footer>Copyrightⓒ Ace Home Center Korea Co., Ltd. All Rights Reserved.</footer>
		</div>
	</div>
<form name="form_chk" method="post">
	<input type="hidden" name="m" value="checkplusSerivce">						<!-- 필수 데이타로, 누락하시면 안됩니다. -->
	<input type="hidden" name="EncodeData">		<!-- 위에서 업체정보를 암호화 한 데이타입니다. -->
</form>

<form name="form_ipin" method="post">
	<input type="hidden" name="m" value="pubmain">						<!-- 필수 데이타로, 누락하시면 안됩니다. -->
    <input type="hidden" name="enc_data">		<!-- 위에서 업체정보를 암호화 한 데이타입니다. -->
    
    <!-- 업체에서 응답받기 원하는 데이타를 설정하기 위해 사용할 수 있으며, 인증결과 응답시 해당 값을 그대로 송신합니다.
    	 해당 파라미터는 추가하실 수 없습니다. -->
    <input type="hidden" name="param_r1" value="">
    <input type="hidden" name="param_r2" value="">
    <input type="hidden" name="param_r3" value="">
</form>


<form name="info" id="info" method="get" action="/input">
	<input id="eData" type="hidden" name="eData" />
</form>
</body>
</html>