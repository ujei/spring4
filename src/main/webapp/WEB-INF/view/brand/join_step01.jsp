<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="include/header.jsp" %>
		<div class="join">
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
					<p>오프라인 매장에서 회원가입 하신 경우, 본인 인증 후 ID, 비밀번호 입력 후 최종 가입 완료 가능합니다.</p>
				</div>
				<div class="caution">
					<p>본인인증을 통해 가입하는 경우, 주민등록번호 기재 없이 하단 인증을 통해 회원가입이 진행됩니다.</p>
				</div>
				<div class="confirm-type">
					<div class="inner">
						<div class="ipin">
							<div class="pic"><img src="/resources/brand/images/ipin.jpg" alt="아이핀 인증" /></div>
							<p>아이핀 인증</p>
						</div>
						<div class="phone">
							<div class="pic"><img src="/resources/brand/images/phone.jpg" alt="휴대전화 인증" /></div>
							<p>휴대전화 인증</p>
						</div>
					</div>
				</div>
				<div class="caution">
					<p>본인 인증 중 오류 발생 시 문의 <strong>나이스평가정보<span>│</span>1600-1522</strong></p>
				</div>
				<div class="btn-area">
					<button class="c-button c-button--gray" type="button" onclick="location.href='join_step02.html'">
						<div class="c-ripple js-ripple"><span class="c-ripple__circle"></span></div>
						건너뛰기
					</button>
					<button class="c-button c-button--red" type="button" onclick="location.href='join_step02.html'">
						<div class="c-ripple js-ripple"><span class="c-ripple__circle"></span></div>
						다음 단계
					</button>
				</div>
			</form>
		</div>
<%@ include file="include/footer.jsp" %>