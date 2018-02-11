<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="include/header.jsp" %>
		<div class="main">
			<div class="banner">
				<div class="pic"><img src="/resources/brand/images/main_banner01.jpg" alt="" /></div>
				<div class="txt-area">
					<div class="inner">
						<h3>EVENT</h3>
						<h4>
							에이스홈센터 한국 론칭!<br />
							지금 바로 금천점을 방문하세요.
						</h4>
						<p class="txt">
							전 세계 5,000여 개 매장에서 많은 사랑을 받고 있는<br />
							에이스홈센터가 한국에 론칭 합니다.<br />
							지금 바로 금천점에서 세계 최고의 공구 스토어를<br />
							만나보세요!
						</p>

						<div class="thumb">
							<ul>
								<li>

								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="store">
				<dl class="info01">
					<dt>
						<strong>에이스 홈센터 금천점</strong>
						<p>또다른 에이스 홈센터를 기대해 주세요!</p>
					</dt>
					<dd class="txt01">
						에이스홈센터 금천점은<br />
						아시아 최대 크기의<br />
						에이스 홈센터입니다.
					</dd>
					<dd class="txt02">
						금천구청역에서 10분!<br />
						독산역에서 14분!<br />
						가산디지털단지역에서 21분!
						<a href="" class="btn">위치 확인하기</a>
					</dd>
				</dl>
				<dl class="info02">
					<dt>
						방문 시 전문 상담사를 통해<br />
						지금 나에게 필요한 공구가 무엇인지<br />
						상담 받을 수 있습니다.
						<strong>상담 시 오픈 기념 포인트 증정</strong>
					</dt>
					<dd><img src="/resources/brand/images/main_store_img01.png" alt="" /></dd>
				</dl>
				<dl class="info03">
					<dt>
						에이스 홈센터 금천점은<br />
						아시아 최대 규모를 자랑합니다.<br />
						지금 방문하세요!
						<strong>500여 종 브랜드 보유</strong>
					</dt>
					<dd><img src="/resources/brand/images/main_store_img02.png" alt="" /></dd>
				</dl>
			</div>

			<div id="promotion" class="promotion">
				<div class="title">
					<h3>에이스 홈센터가 정답</h3>
					<h4>에이스 홈센터의 프로모션을 살펴보세요!</h4>
				</div>
				<div class="txt01">
					"작은 나사 하나까지 가장 좋은 서비스로"
				</div>
				<div class="tag">
					#에이스홈센터프로모션<br />
					#에이스홈센터기획전
				</div>
				<div class="txt02">
					에이스홈센터에서 제일 잘 나가니까<br />
					할인 들어갑니다!
				</div>
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							<strong>공구의 기본! 망치 특별전!</strong>
						</div>
					</div>
					<div class="swiper-pagination"></div>
				</div>
			</div>
			<script type="text/javascript">
				var swiperNotice = new Swiper("promotion .swiper-container", {
					pagination: "promotion .swiper-pagination",
					slidesPerView: 1,
					paginationClickable: true,
					spaceBetween: 0,
					loop: true,
					autoplay: 4000
				});
			</script>


			<div id="introduce" class="introduce">
				<div class="title">
					<h3>에이스 홈센터가 어떤 곳인지 궁금하신가요?</h3>
				</div>
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							<strong>공부의 기본! 망치 특별전!</strong>
						</div>
					</div>
					<div class="swiper-pagination"></div>
				</div>
			</div>
			<script type="text/javascript">
				var swiperNotice = new Swiper("introduce .swiper-container", {
					pagination: "introduce .swiper-pagination",
					slidesPerView: 1,
					paginationClickable: true,
					spaceBetween: 0,
					loop: true,
					autoplay: 4000
				});
			</script>
		</div>
<%@ include file="include/footer.jsp" %>