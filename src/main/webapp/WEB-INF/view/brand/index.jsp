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
								<li class="active">
									<a href="#">
										<img src="/resources/brand/images/main_banner01_thumb.jpg" alt="" />
										<p class="stxt">
											오픈 기념<br />
											포인트 듬뿍
										</p>
									</a>
								</li>
								<li>
									<a href="#">
										<img src="/resources/brand/images/main_banner02_thumb.jpg" alt="" />
										<p class="stxt">
											오픈 기념<br />
											포인트 듬뿍
										</p>
									</a>
								</li>
								<li>
									<a href="#">
										<img src="/resources/brand/images/main_banner03_thumb.jpg" alt="" />
										<p class="stxt">
											첫 방문<br />
											빅 이벤트
										</p>
									</a>
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

			<div id="slide" class="slide">
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<div class="swiper-slide"><a href="#"><img src="/resources/brand/images/main_slide01.jpg" alt="" /></a></div>
						<div class="swiper-slide"><a href="#"><img src="/resources/brand/images/main_slide02.jpg" alt="" /></a></div>
					</div>
					<div class="swiper-pagination"></div>
				</div>
				<script type="text/javascript">
					var swiperSlide = new Swiper("#slide .swiper-container", {
						pagination: "#slide .swiper-pagination",
						loop: true,
						effect: "fade",
						autoplay: 4000
					});
				</script>
			</div>

			<div class="acehomecenter-slide-area">
				<div class="inner">
					<h4>에이스 홈센터가 어떤 곳인지 궁금하신가요?</h4>
					<div id="acehomecenter-slide" class="acehomecenter-slide">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<img src="/resources/brand/images/acehomecenter_slide01.jpg" alt="" />
									<div class="txt">
										<div class="title">에이스하드웨어는?</div>
										<h5>최상의 작업 도구!</h5>
										<p>
											에이스하드웨어는 지금 바로 필요한 도구를<br />
											종류에 가리지 않고 모두 구매할 수 있습니다.<br />
											또한 합리적인 가격으로 여러분께 다가갑니다.<br />
											최상의 서비스, 최고의 품질!<br />
											에이스홈센터에 지금 방문하세요.
										</p>
										<a href="" class="btn">우리의 이야기를 들어보세요</a>
									</div>
								</div>
							</div>
							<div class="swiper-pagination"></div>
							<div class="swiper-button-next"></div>
							<div class="swiper-button-prev"></div>
						</div>
						<script type="text/javascript">
							var swiperAcehomecenterSlide = new Swiper("#acehomecenter-slide .swiper-container", {
								pagination: {
									el: "#acehomecenter-slide .swiper-pagination",
									type: "fraction",
								},
								navigation: {
									nextEl: '.swiper-button-next',
									prevEl: '.swiper-button-prev',
								},
								slidesPerView: 1,
								effect: "fade",
								spaceBetween: 0,
								loop: true,
								autoplay: 4000
							});
						</script>
					</div>
				</div>
			</div>

			<div class="banner-btm">
				<div class="inner">
					<img src="/resources/brand/images/main_banner_btm.jpg" alt="" />
					<div class="txt">
						<div class="title">
							에이스 홈센터 오픈 기념!
						</div>
						<p>에이스 홈센터에 방문하여 인증샷을 SNS에 남겨 주신다면 무술년 행운을 나눠 드립니다.</p>
					</div>
				</div>
			</div>
		</div>
<%@ include file="include/footer.jsp" %>