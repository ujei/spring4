<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="include/header.jsp" %>
		<div class="join">
			<div class="step">
				<div class="step-list">
					<ol>
						<li><strong>1</strong><span>본인인증</span></li>
						<li class="active"><strong>2</strong><span>개인정보 입력</span></li>
						<li><strong>3</strong><span>가입 정보 확인</span></li>
						<li><strong>4</strong><span>가입 완료</span></li>
					</ol>
				</div>
			</div>
			<div class="title">
				<div class="inner">
					<strong>2</strong><span>개인정보 입력</span>
				</div>
			</div>
			<form action="">
				<div class="info">
					<div class="stitle">
						<div class="inner">
							<strong>기본 정보</strong>
							<div class="essential"><span>*</span> 필수 기입 항목</div>
						</div>
					</div>
					<ul>
						<li>
							<div class="inner">
								<div class="ti">이메일 주소</div>
								<div class="txt">
									<input type="text" class="input-red" placeholder="이메일 주소는 아이디로 사용 됩니다." />
									<div class="essential">
										사용 가능
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="inner">
								<div class="ti">비밀번호</div>
								<div class="txt">
									<input type="text" class="input-red" placeholder="비밀번호를 입력하세요." />
									<div class="essential yes">
										강력한 암호입니다.
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="inner">
								<div class="ti">비밀번호 확인</div>
								<div class="txt">
									<input type="text" class="input-red" placeholder="비밀번호를 한번 더 입력하세요." />
									<div class="essential yes">
										암호가 일치합니다.
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="inner">
								<div class="ti">성명</div>
								<div class="txt">
									김태욱
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
									01042432080
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
									1985년 12월 22일
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
								<div class="ti">주소검색 <span>*</span></div>
								<div class="txt">
									<a href="#" class="btn-post">주소검색</a>
								</div>
							</div>
						</li>
						<li class="hide">
							<div class="inner">
								<div class="ti">우편번호</div>
								<div class="txt">우편번호1</div>
							</div>
						</li>
						<li class="hide">
							<div class="inner">
								<div class="ti">도로명주소</div>
								<div class="txt">주소1</div>
							</div>
						</li>
						<li class="hide">
							<div class="inner">
								<div class="ti">지번주소</div>
								<div class="txt">주소2</div>
							</div>
						</li>
						<li class="hide">
							<div class="inner">
								<div class="ti">상세 주소 <span>*</span></div>
								<div class="txt">
									<input type="text" class="input-red" placeholder="상세 주소를 이곳에 기입해 주세요." />
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
					<ul>
						<li>
							<div class="inner">
								<div class="ti">거주형태</div>
								<div class="txt">
									<input type="radio" id="house-apt" name="house" checked="checked">
									<label for="house-apt">아파트</label>
									<input type="radio" id="house-detached" name="house">
									<label for="house-detached">단독주택</label>
									<input type="radio" id="house-multiplex" name="house">
									<label for="house-multiplex">다세대주택</label>
									<input type="radio" id="house-officehotel" name="house">
									<label for="house-officehotel">오피스텔</label>
								</div>
							</div>
						</li>
						<li>
							<div class="inner">
								<div class="ti">방문경로</div>
								<div class="txt">
									<input type="checkbox" id="visitpath-friend" name="visitpath">
									<label for="visitpath-friend">지인소개</label>
									<input type="checkbox" id="visitpath-online" name="visitpath">
									<label for="visitpath-online">온라인광고</label>
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
								<div class="ti">관심품목</div>
								<div class="txt">
									<input type="checkbox" id="interest01" name="interest">
									<label for="interest01">배관</label>
									<input type="checkbox" id="interest02" name="interest">
									<label for="interest02">인테리어성자재</label>
									<input type="checkbox" id="interest03" name="interest">
									<label for="interest03">차량용품</label>
									<input type="checkbox" id="interest04" name="interest">
									<label for="interest04">생활용품</label>
									<input type="checkbox" id="interest05" name="interest">
									<label for="interest05">가전</label>
									<input type="checkbox" id="interest06" name="interest">
									<label for="interest06">아웃도어</label><br />
									<input type="checkbox" id="interest07" name="interest">
									<label for="interest07">공구</label>
									<input type="checkbox" id="interest08" name="interest">
									<label for="interest08">하드웨어</label>
									<input type="checkbox" id="interest09" name="interest">
									<label for="interest09">전기,조명</label>
									<input type="checkbox" id="interest10" name="interest">
									<label for="interest10">케미컬,페인트</label>
									<input type="checkbox" id="interest11" name="interest">
									<label for="interest11">애완용품</label><br />
									<input type="checkbox" id="interest12" name="interest">
									<label for="interest12">원예용품</label>
									<input type="checkbox" id="interest13" name="interest">
									<label for="interest13">건축자재</label>
									<input type="checkbox" id="interest14" name="interest">
									<label for="interest14">건축용 잡자재</label>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<div class="btn-area">
					<button class="c-button c-button--gray" type="button" onclick="location.href='join_step01.html'">
						<div class="c-ripple js-ripple"><span class="c-ripple__circle"></span></div>
						이전 단계
					</button>
					<button class="c-button c-button--disable" type="button">
						<div class="c-ripple js-ripple"><span class="c-ripple__circle"></span></div>
						필수 항목을 기입하세요.
					</button>
					<button class="c-button c-button--red hide" type="button" onclick="location.href='join_step03.html'">
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
<%@ include file="include/footer.jsp" %>