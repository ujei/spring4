<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!doctype html>
<html lang="ko">
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi" />
	<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/common.css">
	<script type="text/javascript" src="/resources/js/lib/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="/resources/js/lib/swiper.min.js"></script>
	<script type="text/javascript" src="/resources/js/lib/jquery-fakeform-0.5.js"></script>
	<script type="text/javascript" src="/resources/js/common.js"></script>
<script type="text/javascript">
var t = '${marketing-post}';
$(document).ready(function() {
	$('.join-complete').click(function() {
		var _data = $('#userInfo').serialize();
		$.ajax({
			method: "POST",
			url: "/offline/join/complete",
			data: encodeURI(_data)
		}).done(function(data) {
			location.href = location.protocol + "//" + location.hostname + ":" + location.port + "/offline/complete";
		});
	});
	
	$('.c-button--gray').click(function() {
		history.back();
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
			<div class="step">
				<div class="step-list">
					<ol>
						<li><strong>1</strong><span>본인인증</span></li>
						<li><strong>2</strong><span>개인정보 입력</span></li>
						<li class="active"><strong>3</strong><span>가입 정보 확인</span></li>
						<li><strong>4</strong><span>가입 완료</span></li>
					</ol>
				</div>
				<aside>
					<h4>
						지금,<br />
						<strong>에이스 멤버십</strong>에<br />
						가입하세요!
					</h4>
					<ol>
						<li>
							<strong>혜택 1</strong>
							회원 전용<br />
							특가 상품
						</li>
						<li>
							<strong>혜택 2</strong>
							가입 기념<br />
							3,000P
						</li>
						<li>
							<strong>혜택 3</strong>
							구매 금액<br />
							적립 0.5%
						</li>
						<li>
							<strong>혜택 4</strong>
							할인 정보<br />
							사전 안내
						</li>
					</ol>
				</aside>
			</div>
			<div class="title">
				<div class="inner">
					<strong>3</strong><span>가입 정보 확인</span>
				</div>
			</div>
			<form id="userInfo" name="userInfo">
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
								<div class="txt">
									<c:if test="${marketingPost == 'on'}">우편</c:if>
									<c:if test="${marketingPhone == 'on'}">전화</c:if>
									<c:if test="${marketingSms == 'on'}">문자</c:if>
								</div>
							</div>
						</li>
					</ul>
					<div class="title">
						<div class="inner">
							부가정보
						</div>
					</div>
					<ul>
						<li>
							<div class="inner">
								<div class="ti">거주형태</div>
								<div class="txt"></div>
							</div>
						</li>
						<li>
							<div class="inner">
								<div class="ti">방문경로</div>
								<div class="txt"></div>
							</div>
						</li>
						<li>
							<div class="inner">
								<div class="ti">관심풍목</div>
								<div class="txt"></div>
							</div>
						</li>
					</ul>
				</div>
				<div class="btn-area">
					<button class="c-button c-button--gray" type="button">
						<div class="c-ripple js-ripple"><span class="c-ripple__circle"></span></div>
						수정하기
					</button>
					<button class="join-complete c-button c-button--red" type="button">
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
		</div>
		<footer>
			<div class="copyright">
				<div class="inner">
					<img src="/resources/img/logo_footer.png" alt="ACE Home Center" />
					ⓒ ACE Home Center. All rights reserved.
				</div>
			</div>
			<div class="inner">
				<p class="txt">
					<span>상호명 │ 유진기업(주)</span>
					<span>사업자 등록번호 │ 130-81-22624</span>
					<span>대표자명 │ 최종성</span>
					<span>소재지 │ 경기도 부천시 오정구 석천로 457(삼정동)</span>
					<span>개인정보 관리책임자 │ 이병우</span>
				</p>
			</div>
		</footer>
	</div>
</body>
</html>