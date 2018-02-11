<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	<script type="text/javascript" src="/resources/js/common.js"></script>
	<script type="text/javascript">
	$(document).ready(function() {
		$("#postcodify_search_button").postcodifyPopUp();
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
						<li class="active"><strong>2</strong><span>개인정보 입력</span></li>
						<li><strong>3</strong><span>가입 정보 확인</span></li>
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
					<strong>2</strong><span>개인정보 입력</span>
				</div>
			</div>
			<form name="userInfo" id="userInfo" action="">
				<div class="info">
					<input name="di" id="di" type="hidden" value="${di}" />
					<div class="stitle">
						<div class="inner">
							<strong>기본 정보</strong>
							<div class="essential"><span>*</span> 필수 기입 항목</div>
						</div>
					</div>
					<ul>
						<li>
							<div class="inner">
								<div class="ti">성명</div>
								<div class="txt">
									${name}
									<input name="name" id="name" type="hidden" value="${name}" />
									<div class="essential">
										* 변경 불가
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="inner">
								<div class="ti">휴대전화 번호</div>
								<div class="txt">
									${mobileNo}
									<input name="mobileNo" id="mobileNo" type="hidden" value="${mobileNo}" />
									<div class="essential">
										* 변경 불가
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="inner">
								<div class="ti">생년월일</div>
								<div class="txt">
									${birthDay }
									<input name="birthDay" id="birthDay" type="hidden" value="${birthDay}" />
									<div class="essential">
										* 변경 불가
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="inner">
								<div class="ti">성별</div>
								<div class="txt">
									<input type="radio" id="male" name="sex" checked="checked">
									<label for="male">남성</label>
									<input type="radio" id="female" name="sex">
									<label for="female">여성</label>
								</div>
							</div>
						</li>
						<li>
							<div class="inner">
								<div class="ti">주소검색 <span class="essential">*</span></div>
								<div class="txt">
									<a href="#" id="postcodify_search_button" class="btn-post">주소검색</a>
								</div>
							</div>
						</li>
						<li class="hide">
							<div class="inner">
								<div class="ti">우편번호</div>
								<div class="txt">
									<span class="postcodify_postcode5"></span>
									<input type="text" name="postCode" class="postcodify_postcode5" value="" />
								</div>
							</div>
						</li>
						<li class="hide">
							<div class="inner">
								<div class="ti">도로명주소</div>
								<div class="txt">
									<span class="postcodify_address"></span>
									<input type="text" name="address" class="postcodify_address" value="" />
								</div>
							</div>
						</li>
						<li class="hide">
							<div class="inner">
								<div class="ti">지번주소</div>
								<div class="txt">
									<span class="postcodify_jibeon_address"></span>
									<input type="text" name="address" class="postcodify_jibeon_address" value="" />
								</div>
							</div>
						</li>
						<li class="hide">
							<div class="inner">
								<div class="ti">상세 주소 <span class="essential">*</span></div>
								<div class="txt">
									<span class="postcodify_details"></span>
									<input type="text" name="" class="postcodify_details input-red" value="" placeholder="상세 주소를 이곳에 기입해 주세요." />
								</div>
							</div>
						</li>
						<li>
							<div class="inner">
								<div class="ti">마케팅 수신 동의</div>
								<div class="txt">
									<input type="checkbox" id="marketing-post" name="marketing">
									<label for="marketing-post">우편</label>
									<input type="checkbox" id="marketing-phone" name="marketing">
									<label for="marketing-phone">전화</label>
									<input type="checkbox" id="marketing-sms" name="marketing">
									<label for="marketing-sms">문자</label>
								</div>
							</div>
						</li>
					</ul>
					<div class="stitle">
						<div class="inner">
							<strong>부가 정보</strong>
						</div>
					</div>
					<ul class="add">
						<li>
							<div class="inner">
								<div class="ti">거주형태</div>
								<div class="txt">
									<input type="radio" id="house-apt" name="house" checked="checked">
									<label for="house-apt">아파트</label>
									<input type="radio" id="house-detached" name="house">
									<label for="house-detached">단독주택</label>
									<input type="radio" id="house-multiplex" name="house">
									<label for="house-multiplex">다세대주택</label><br />
									<input type="radio" id="house-officehotel" name="house">
									<label for="house-officehotel">오피스텔</label>
								</div>
							</div>
						</li>
						<li>
							<div class="inner">
								<div class="ti">
									방문경로
									<span class="stxt">* 복수 선택 가능</span>
								</div>
								<div class="txt">
									<input type="checkbox" id="visitpath-friend" name="visitpath">
									<label for="visitpath-friend">지인소개</label>
									<input type="checkbox" id="visitpath-online" name="visitpath">
									<label for="visitpath-online">온라인광고</label><br />
									<input type="checkbox" id="visitpath-leaflet" name="visitpath">
									<label for="visitpath-leaflet">전단</label>
									<input type="checkbox" id="visitpath-tv" name="visitpath">
									<label for="visitpath-tv">TV</label>
									<input type="checkbox" id="visitpath-etc" name="visitpath">
									<label for="visitpath-etc">기타</label>
								</div>
							</div>
						</li>
						<li>
							<div class="inner">
								<div class="ti">
									관심풍목
									<span class="stxt">* 복수 선택 가능</span>
								</div>
								<div class="txt">
									<input type="checkbox" id="interest01" name="interest">
									<label for="interest01">건축자재</label>
									<input type="checkbox" id="interest02" name="interest">
									<label for="interest02">생활용품</label>
									<input type="checkbox" id="interest03" name="interest">
									<label for="interest03">아웃도어</label><br />
									<input type="checkbox" id="interest04" name="interest">
									<label for="interest04">애완용품</label>
									<input type="checkbox" id="interest05" name="interest">
									<label for="interest05">원예용품</label>
									<input type="checkbox" id="interest06" name="interest">
									<label for="interest06">차량용품</label><br />
									<input type="checkbox" id="interest07" name="interest">
									<label for="interest07">하드웨어</label>
									<input type="checkbox" id="interest08" name="interest">
									<label for="interest08">가전</label>
									<input type="checkbox" id="interest09" name="interest">
									<label for="interest09">공구</label>
									<input type="checkbox" id="interest10" name="interest">
									<label for="interest10">배관</label><br />
									<input type="checkbox" id="interest11" name="interest">
									<label for="interest11">전기, 조명</label>
									<input type="checkbox" id="interest12" name="interest">
									<label for="interest12">케미컬, 페인트</label><br />
									<input type="checkbox" id="interest13" name="interest">
									<label for="interest13">건축용 잡자재</label>
									<input type="checkbox" id="interest14" name="interest">
									<label for="interest14">인테리어성 잡자재</label>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<div class="btn-area">
					<button class="c-button c-button--gray" type="button" onclick="location.href='step01.html'">
						<div class="c-ripple js-ripple"><span class="c-ripple__circle"></span></div>
						이전 단계
					</button>
					<button class="c-button c-button--disable" type="button">
						<div class="c-ripple js-ripple"><span class="c-ripple__circle"></span></div>
						필수 항목을 기입하세요.
					</button>
					<button class="c-button c-button--red hide" type="button" onclick="location.href='step03.html'">
						<div class="c-ripple js-ripple"><span class="c-ripple__circle"></span></div>
						다음 단계
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