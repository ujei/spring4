<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="include/header.jsp" %>
		<div class="join">
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
								<div class="ti">이메일 주소</div>
								<div class="txt">
									yichoongghi@gmail.com
									<div class="essential">
										사용 가능
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="inner">
								<div class="ti">성명</div>
								<div class="txt">김선수</div>
							</div>
						</li>
						<li>
							<div class="inner">
								<div class="ti">휴대전화 번호</div>
								<div class="txt">01042432080</div>
							</div>
						</li>
						<li>
							<div class="inner">
								<div class="ti">생년월일</div>
								<div class="txt">1985년 12월 22일</div>
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
									(13903)<br />
									<span>도로명주소</span>
									<p>
										경기도 안양시 만안구 연현로79번길 56<br />
										(LG빌리지아파트), 411-501
									</p>
									<span>지번주소</span>
									<p>
										경기도 안양시 만안구 석수동 415-1, LG빌리지아파트, 411-501
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
					<div class="title">
						<div class="inner">
							부가정보
						</div>
					</div>
					<ul>
						<li>
							<div class="inner">
								<div class="ti">거주형태</div>
								<div class="txt">아파트</div>
							</div>
						</li>
						<li>
							<div class="inner">
								<div class="ti">방문경로</div>
								<div class="txt">지인소개</div>
							</div>
						</li>
						<li>
							<div class="inner">
								<div class="ti">관심풍목</div>
								<div class="txt">배관</div>
							</div>
						</li>
					</ul>
				</div>
				<div class="btn-area">
					<button class="c-button c-button--gray" type="button" onclick="location.href='join_step02.html'">
						<div class="c-ripple js-ripple"><span class="c-ripple__circle"></span></div>
						수정하기
					</button>
					<button class="c-button c-button--red" type="button" onclick="location.href='join_step04.html'">
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
<%@ include file="include/footer.jsp" %>