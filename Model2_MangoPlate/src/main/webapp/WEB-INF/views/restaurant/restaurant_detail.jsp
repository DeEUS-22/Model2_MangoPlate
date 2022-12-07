<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>식당 상세페이지</title>
<link rel="stylesheet" href="http://localhost:9000/mangoplate/resources/css/restaurant_detail.css">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=69d02d054bc554d77e8ab840092a3b61"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=69d02d054bc554d77e8ab840092a3b61&libraries=services"></script>
<style>
	.location1 {
		margin-top : 20px;
	}
	.location2 {
		color : #ff792a;
		padding : 24px;
		font-size : 23px;
	}
	.third {
		margin-top : 25px;
		margin-bottom : -120px;
	}
	
	.map_wrap {position:relative;overflow:hidden;width:100%;height:450px;}
	.radius_border{border:1px solid #919191;border-radius:5px;}     
	.custom_zoomcontrol {position:absolute;top:50px;right:10px;width:36px;height:80px;overflow:hidden;z-index:1;background-color:#f5f5f5;} 
	.custom_zoomcontrol span {display:block;width:36px;height:40px;text-align:center;cursor:pointer;}     
	.custom_zoomcontrol span img {width:15px;height:15px;padding:12px 0;border:none;}             
	.custom_zoomcontrol span:first-child{border-bottom:1px solid #bfbfbf;}
	
	
	.NearByRestaurantItem__Info {
		margin : 5px 0px 0px 0px;
	}
</style>
</head>
<body>
<!-- header -->
<!-- <iframe src="header.do" width="100%" height="61px" scrolling="no" frameborder=0 ></iframe> -->
<jsp:include page="../header.jsp"></jsp:include>
	<!-- content -->
	<main class="pg-restaurant have-share-sns-another ng-scope"
		ng-controller="mp20_restaurant_controller"
		data-restaurant_key="onGDjypuMJMF" data-restaurant_name="상암회관"
		data-metro_str="마포/공덕" data-subcuisine_code_str="국수 / 면 요리"
		data-price_code_str="만원 미만" data-parking_code_str=""
		data-review_count="9">
		<article class="contents">
			<div class="column-wrapper">
				<div class="column-contents">
					<div class="inner">
						<section class="restaurant-detail">
							<header>
								<div class="restaurant_title_wrap">
									<span class="title">
										<h1 class="restaurant_name">${vo.rname }</h1> <strong
										class="rate-point expected"> <span>4.4</span>
									</strong>

										<p class="branch"></p>
									</span>

									<div class="restaurant_action_button_wrap">
										
										<a href="http://localhost:9000/mangoplate/review_write.do?rid=${vo.rid}">
										<button class="review_writing_button" data-restaurant_key="onGDjypuMJMF">
											<i class="review_writing_button_icon"></i> <span
												class="review_writing_button_text">리뷰쓰기</span>
										</button></a>

										<div class="wannago_wrap">
											<button class="btn-type-icon favorite wannago_btn "
												data-restaurant_uuid="398759" data-action_id=""></button>
											<p class="wannago_txt">가고싶다</p>
										</div>
									</div>
								</div>

							</header>


							<section class="restaurant_introduce_section_mobile only-mobile">
								<div class="RestaurantIntroduceSection">


									<div
										class="RestaurantIntroduceSection__Section CardSlider EatDealFadeSliderSection">
										<div class="SectionLabel SectionLabel--Mint">
											<h3 class="SectionLabel__Label">EAT딜</h3>
										</div>

										<div class="EatDealFadeSliderSection__Content">
											<section class="EatDealIntroduce">
												<i class="EatDealIntroduce__SignatureIcon"></i>
												<h3 class="EatDealIntroduce__Title">EAT딜</h3>
												<p class="EatDealIntroduce__Description">
													할인된 가격으로<br>인기 메뉴를<br>맛볼 수 있는 기회!
												</p>
											</section>

											<div class="SectionTitle">
												<span class="SectionTitle__Title">할인된 가격으로 인기 메뉴를 맛볼
													수 있는 기회!</span><span class="SectionTitle__Description">(모바일
													앱에서 사용할 수 있습니다. )</span>
											</div>

											<div class="CardSlider__Slider EatDealFadeSlider">
												<section class="EatDealCard EatDealCard--Placeholder">
													<div class="EatDealCard__Wrapper">
														<div class="EatDealCard__Picture"></div>

														<div class="EatDealCard__InfoWrap">
															<h3 class="EatDealCard__Title"></h3>
															<div class="EatDealCard__PriceWrap"></div>
														</div>
													</div>
												</section>
												<section class="EatDealCard EatDealCard--Placeholder">
													<div class="EatDealCard__Wrapper">
														<div class="EatDealCard__Picture"></div>

														<div class="EatDealCard__InfoWrap">
															<h3 class="EatDealCard__Title"></h3>
															<div class="EatDealCard__PriceWrap"></div>
														</div>
													</div>
												</section>
											</div>
										</div>
									</div>


								</div>

							</section>


							<ul class="Restaurant__InfoList only-mobile">
								<li class="Restaurant__InfoItem">
									<div class="Restaurant__InfoItemMapContainer"></div>
									<div class="Restaurant__InfoItemLabel">
										<div class="Restaurant__InfoItemLabel--RoadAddressText">서울특별시
											마포구 월드컵북로54길 17</div>
										<div class="Restaurant__InfoItemLabel--Address">
											<span class="Restaurant__InfoAddress--Rectangle">지번</span> <span
												class="Restaurant__InfoAddress--Text">서울시 마포구 상암동
												1597</span>
										</div>

									</div>
								</li>

								<li class="Restaurant__InfoItem"><a href="tel:02-303-1950">
										<div class="Restaurant__InfoItemLabel">02-303-1950</div>
								</a></li>
							</ul>

							<!-- 상세 정보 -->
							<table class="info
              no_menu
              ">
								<caption>레스토랑 상세 정보</caption>

								<tbody>
									<tr class="only-desktop">
										<th>주소</th>
										<td>${vo.raddr }<br> <span
											class="Restaurant__InfoAddress--Rectangle">지번</span> <span
											class="Restaurant__InfoAddress--Text">서울특별시 강남구 신사동 643-18</span>
										</td>
									</tr>

									<tr class="only-desktop">
										<th>전화번호</th>
										<td>${vo.rcontact }</td>
									</tr>

									<tr>
										<th>식당 종류</th>
										<td><span>${vo.rcategory }</span></td>
									</tr>

									<tr>
										<th>가격대</th>
										<td>${vo.rprice }</td>
									</tr>

								</tbody>
							</table>

							<p class="update_date">업데이트 : ${vo.rdate }</p>

							<div id="reviewListFocusId"></div>
						</section>
						<section class="RestaurantReviewList">
							<header class="RestaurantReviewList__Header">
								<h2 class="RestaurantReviewList__Title">
									<span class="RestaurantReviewList__RestaurantName">상암회관</span><span
										class="RestaurantReviewList__RestaurantNameSuffixDesktop">리뷰</span><span
										class="RestaurantReviewList__RestaurantNameSuffixMobile">의 리뷰</span> 
								</h2>

								<ul class="RestaurantReviewList__FilterList">
									<li class="RestaurantReviewList__FilterItem">
										<button
											class="RestaurantReviewList__FilterButton RestaurantReviewList__FilterButton--Selected RestaurantReviewList__AllFilterButton">
											전체 
										</button>
									</li>

									<li class="RestaurantReviewList__FilterItem">
										<button
											class="RestaurantReviewList__FilterButton RestaurantReviewList__RecommendFilterButton">
											맛있다 
										</button>
									</li>

									<li class="RestaurantReviewList__FilterItem">
										<button
											class="RestaurantReviewList__FilterButton RestaurantReviewList__OkFilterButton RestaurantReviewList__FilterButton--Inactive">
											괜찮다 
										</button>
									</li>

									<li class="RestaurantReviewList__FilterItem">
										<button
											class="RestaurantReviewList__FilterButton RestaurantReviewList__NotRecommendButton RestaurantReviewList__FilterButton--Inactive">
											별로 
										</button>
									</li>
								</ul>
							</header>
							<ul class="RestaurantReviewList__ReviewList">
								<c:forEach var="review" items="${list}">
								
								<li class="RestaurantReviewItem RestaurantReviewList__ReviewItem">
									<a class="RestaurantReviewItem__Link" href="/reviews/OTk3MzU0" target="_blank">
										<div class="RestaurantReviewItem__User">
											<div class="RestaurantReviewItem__UserPictureWrap">
												<img class="RestaurantReviewItem__UserPicture loaded"
													data-src="https://s3-ap-northeast-2.amazonaws.com/mp-seoul-image-production/1294770_1614160853431?fit=around|56:56&amp;crop=56:56;*,*&amp;output-format=jpg&amp;output-quality=80"
													alt="user profile picture"
													src="https://s3-ap-northeast-2.amazonaws.com/mp-seoul-image-production/1294770_1614160853431?fit=around|56:56&amp;crop=56:56;*,*&amp;output-format=jpg&amp;output-quality=80"
													data-was-processed="true">
											</div>

											<span class="RestaurantReviewItem__UserNickName">젊어서먹으세</span>

											<ul class="RestaurantReviewItem__UserStat">
											</ul>
										</div>
										<div class="RestaurantReviewItem__ReviewContent">
											<div class="RestaurantReviewItem__ReviewTextWrap">
												<p>
													${review.vcontent }
												</p>

												<span class="RestaurantReviewItem__ReviewDate">2022-09-10</span>
											</div>

											<!-- <ul class="RestaurantReviewItem__PictureList">
												<li class="RestaurantReviewItem__PictureItem">
													<button class="RestaurantReviewItem__PictureButton"
														data-index="0">
														<img class="RestaurantReviewItem__Picture loaded"
															data-src="https://mp-seoul-image-production-s3.mangoplate.com/398759/1294770_1662814227013_81221?fit=around|120:120&amp;crop=120:120;*,*&amp;output-format=jpg&amp;output-quality=80"
															alt="review picture"
															src="https://mp-seoul-image-production-s3.mangoplate.com/398759/1294770_1662814227013_81221?fit=around|120:120&amp;crop=120:120;*,*&amp;output-format=jpg&amp;output-quality=80"
															data-was-processed="true">

													</button>
												</li>

												<li class="RestaurantReviewItem__PictureItem">
													<button class="RestaurantReviewItem__PictureButton"
														data-index="1">
														<img class="RestaurantReviewItem__Picture loaded"
															data-src="https://mp-seoul-image-production-s3.mangoplate.com/398759/1294770_1662814227013_81224?fit=around|120:120&amp;crop=120:120;*,*&amp;output-format=jpg&amp;output-quality=80"
															alt="review picture"
															src="https://mp-seoul-image-production-s3.mangoplate.com/398759/1294770_1662814227013_81224?fit=around|120:120&amp;crop=120:120;*,*&amp;output-format=jpg&amp;output-quality=80"
															data-was-processed="true">

													</button>
												</li>

												<li class="RestaurantReviewItem__PictureItem">
													<button class="RestaurantReviewItem__PictureButton"
														data-index="2">
														<img class="RestaurantReviewItem__Picture loaded"
															data-src="https://mp-seoul-image-production-s3.mangoplate.com/398759/1294770_1662814227013_81229?fit=around|120:120&amp;crop=120:120;*,*&amp;output-format=jpg&amp;output-quality=80"
															alt="review picture"
															src="https://mp-seoul-image-production-s3.mangoplate.com/398759/1294770_1662814227013_81229?fit=around|120:120&amp;crop=120:120;*,*&amp;output-format=jpg&amp;output-quality=80"
															data-was-processed="true">

													</button>
												</li>
											</ul> -->
										</div>
									</a>
								</li>
								</c:forEach>
							</ul>
						</section>
					</div>
				</div>
				<div class="side-wrap">
					<div class="column-side">
						<!-- 지도 -->
						<div class="location1">
						<span class="location2">식당 위치</span>
					</div>
					<article class="third">
					<div class="map_wrap">
					    <div id="map" style="width:400px;height:300px;position:relative;overflow:hidden;"></div> 
					    <!-- 지도 확대, 축소 컨트롤 div 입니다 -->
					    <div class="custom_zoomcontrol radius_border"> 
					        <span onclick="zoomIn()"><img src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_plus.png" alt="확대"></span>  
					        <span onclick="zoomOut()"><img src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_minus.png" alt="축소"></span>
					    </div>
					</div>
					<script>
					var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
					    mapOption = { 
					        center: new kakao.maps.LatLng(37.59447, 126.99562), // 지도의 중심좌표
					        level: 1 // 지도의 확대 레벨
					    };  
					
					var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
					    
					// 지도 확대, 축소 컨트롤에서 확대 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
					function zoomIn() {
					    map.setLevel(map.getLevel() - 1);
					}
					
					// 지도 확대, 축소 컨트롤에서 축소 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
					function zoomOut() {
					    map.setLevel(map.getLevel() + 1);
					}
					
					// 마커가 표시될 위치입니다 
					var markerPosition  = new kakao.maps.LatLng(37.59447, 126.99562); 
		
					// 마커를 생성합니다
					var marker = new kakao.maps.Marker({
					    position: markerPosition
					});
		
					// 마커가 지도 위에 표시되도록 설정합니다
					marker.setMap(map);
					
					</script>
				</article>

						<div class="inner">
							<!-- 주변 인기 식당 -->
							<section class="module near-rastaurant NearByRestaurantList">
								<span class="title NearByRestaurantList__Title">주변 인기 식당</span>

								<ul
									class="list-restaurants type-single NearByRestaurantList__List">



									<li class="NearByRestaurantItem NearByRestaurantList__Item">
										<div class="NearByRestaurantItem__PictureAndContent">

											<a class="NearByRestaurantItem__PictureLink"
												href="/restaurants/s7YK66H3myEH"> <img
												class="NearByRestaurantItem__Picture loaded"
												data-src="https://mp-seoul-image-production-s3.mangoplate.com/382175/172778_1656668677959_143456?fit=around|383:383&amp;crop=383:383;*,*&amp;output-format=jpg&amp;output-quality=80"
												alt="near by popular restaurant picture"
												src="https://mp-seoul-image-production-s3.mangoplate.com/382175/172778_1656668677959_143456?fit=around|383:383&amp;crop=383:383;*,*&amp;output-format=jpg&amp;output-quality=80"
												data-was-processed="true">
											</a>

											<div class="NearByRestaurantItem__Content">
												<div class="NearByRestaurantItem__NameWrap">
													<a class="NearByRestaurantItem__Name" href="/restaurants/s7YK66H3myEH">웰컴투더헬</a> 
													<span class="NearByRestaurantItem__Rating NearByRestaurantItem__Rating--Expected">3.9</span>
												</div>

												<div class="NearByRestaurantItem__MetroAndCuisine">
													<span class="NearByRestaurantItem__Metro">마포/공덕</span> 
													<span class="NearByRestaurantItem__SubCuisine">칵테일 / 와인</span>
												</div>

												<div class="NearByRestaurantItem__InfoWrap">
													<dl class="NearByRestaurantItem__Info">
														<dt class="NearByRestaurantItem__InfoLabel">음식 종류</dt>
														<dd class="NearByRestaurantItem__InfoValue NearByRestaurantItem__InfoValue--SubCuisine">칵테일 / 와인</dd>
													</dl>

													<dl class="NearByRestaurantItem__Info">
														<dt class="NearByRestaurantItem__InfoLabel">위치</dt>
														<dd class="NearByRestaurantItem__InfoValue NearByRestaurantItem__InfoValue--Metro">마포/공덕</dd>
													</dl>

													<dl class="NearByRestaurantItem__Info">
														<dt class="NearByRestaurantItem__InfoLabel">가격대</dt>
														<dd class="NearByRestaurantItem__InfoValue NearByRestaurantItem__InfoValue--PriceRange">2만원-3만원</dd>
													</dl>
												</div>
											</div>
										</div>
									</li>
								</ul>
							</section>


							<!-- <div class="ad_area tag only-mobile"
								id="web_mobile-restaurant-tag">
								<div class="ad_wrap">
									<div class="content" id="web_mobile-restaurant-tag-content"></div>
								</div>
							</div> -->

						</div>

						<!-- <div class="ad_area right_map only-desktop" id="web_desktop-restaurant-right_map">
							<div class="ad_wrap" style="">
								<div class="content" id="web_desktop-restaurant-right_map-content">
									<div id="google_ads_iframe_/395211568/production/desktop-web.restaurant.right-side_0__container__"
										style="border: 0pt none; width: 336px; height: 0px;"></div>
								</div>
							</div>
						</div> -->

					</div>
				</div>
			</div>

		</article>
	</main>
</body>
<!-- footer Include -->
<iframe src="footer.do" width="100%" height="750px" scrolling="no"
	frameborder=0></iframe>
</html>