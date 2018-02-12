<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="include/header.jsp" %>
		<script type="text/javascript">
			var pageName = "product";
		</script>
		<div class="product">
			<div class="category">
				<div class="inner">
					<a href="#">페인트 및 케미컬 제품</a>
					<a href="#" class="active">공구</a>
					<a href="#">전기 / 조명</a>
					<a href="#">배관자재</a>
					<a href="#">하드웨어</a>
					<a href="#">생활용품 / 아웃도어 / 가전</a>
					<a href="#">원예용품 / 애완</a>
					<a href="#">자동차용품 / 충동상품</a>
					<a href="#">인테리어성자재</a>
					<a href="#">건축용 잡자재</a>
					<a href="#">건축자재</a>
				</div>
			</div>
			<div class="page-title category02">
				<div class="inner">
					<h2>공구</h2>
					<span class="amount">17</span>
					<span class="stxt">* 제품군 수</span>
				</div>
			</div>
			<div class="banner" style="background:#000 url('/resources/brand/images/product_banner01.jpg') no-repeat 100% 0;">
				<div class="inner">
					전 세계에서 모인 최고의 공구 제품들을<br />
					가장 합리적인 가격에 구매 하세요.
				</div>
			</div>
			<div class="category-sub">
				<div class="inner">
					<a href="#">공구함</a>
					<a href="#">도배공구</a>
					<a href="#">도장공구</a>
					<a href="#">목공공구</a>
					<a href="#">배관공구</a>
					<a href="#">산업공구</a>
					<a href="#">수공구</a>
					<a href="#">에어, 유압공구</a>
					<a href="#">엔진공구</a>
					<a href="#">용접공구</a>
					<a href="#">원예공구</a>
					<a href="#">충전원예공구</a>
					<a href="#">전동공구</a>
					<a href="#">충전공구</a>
					<a href="#">절삭, 연마공구</a>
					<a href="#" class="active">작업공구</a>
					<a href="#">측정공구</a>
				</div>
			</div>
			<div class="introduce">
				<div class="inner">
					<div class="txt01">
						<div class="title">작업공구</div>
						<h5>
							국내 최대 규모의<br />
							작업 공구를 전시 및 판매 중입니다.
						</h5>
						<p>
							빠른 속도로 발전하는 가운데 아날로그 감성을 느낄 수 있고, 믿음직한 파트너와 같은 것이 작업 공구입니다.<br />
							에이스 홈센터는 에이스 하드웨어를 비롯해 보쉬, 스탠리, 디월트 등 세계 최고의 작업 공구를 보유하고 있습니다.<br />
							지금 방문한다면친절한 상담과 함께 최고의 쇼핑 시설에서 필요로 하시는 작업 공구를 구매하실 수 있습니다.<br />
							여러분이 알지 못했지만, 사실 지금 여러분에게 꼭 필요한 믿음직한 도구를 만날 수 있을 것입니다.
						</p>
					</div>
					<div class="txt02">
						<div class="title">측정 공구</div>
						<h5>
							일반적인 측정 공구는 물론,<br />
							가장 정밀한 측정 공구까지 만날 수 있습니다.
						</h5>
						<p>
							적당히 해내서 좋은 것은 없습니다. 측정 공구는 정밀함과 아날로그 감성을 느낄 수 있는 믿음직한 파트너입니다.<br />
							에이스 홈센터는 에이스 하드웨어를 비롯해 보쉬, 스탠리, 디월트 등 세계 최고의 작업 공구를 보유하고 있습니다.<br />
							지금 방문한다면친절한 상담과 함께 최고의 쇼핑 시설에서 필요로 하시는 작업 공구를 구매하실 수 있습니다.<br />
							여러분이 알지 못했지만, 사실 지금 여러분에게 꼭 필요한 믿음직한 도구를 만날 수 있을 것입니다.
						</p>
					</div>
				</div>
			</div>
			<div id="slide" class="slide">
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<div class="swiper-slide"><a href="#"><img src="/resources/brand/images/product_slide01.jpg" alt="" /></a></div>
						<div class="swiper-slide"><a href="#"><img src="/resources/brand/images/product_slide02.jpg" alt="" /></a></div>
					</div>
					<div class="swiper-pagination"></div>
				</div>
				<script type="text/javascript">
					var swiperSlide = new Swiper("#slide .swiper-container", {
						pagination: "#slide .swiper-pagination",
						loop: true,
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
		</div>
<%@ include file="include/footer.jsp" %>