<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<!-- /.website title -->

<title>VTC Theme | Home page</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta charset="UTF-8" />
<!-- CSS Files -->
<link href="/exhibition_user/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="/exhibition_user/css/font-awesome.min.css" rel="stylesheet">
<link href="/exhibition_user/fonts/icon-7-stroke/css/pe-icon-7-stroke.css"
	rel="stylesheet">
<link href="/exhibition_user/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
<link href="/exhibition_user/css/animate.css" rel="stylesheet" media="screen">
<link href="/exhibition_user/css/owl.theme.css" rel="stylesheet">
<link href="/exhibition_user/css/owl.carousel.css" rel="stylesheet">
<link href="http://localhost/exhibition_user/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet">

<!-- Colors -->
<!-- <link href="css/css-index-blue.css" rel="stylesheet" media="screen"> -->
<!-- <link href="css/css-index-green.css" rel="stylesheet" media="screen"> -->
<!-- <link href="css/css-index-purple.css" rel="stylesheet" media="screen"> -->
<!-- <link href="css/css-index-red.css" rel="stylesheet" media="screen"> -->
<!-- <link href="css/css-index-orange.css" rel="stylesheet" media="screen"> -->
<link href="/exhibition_user/css/css-index-yellow.css" rel="stylesheet"
	media="screen">

<!-- Google Fonts -->
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic" />

</head>


<body data-spy="scroll" data-target="#navbar-scroll">
	<!-- /.preloader -->
	<div id="preloader"></div>
	<div id="top"></div>

	<!-- /.parallax full screen background image -->
	<c:forEach var="exView" items="${ exView }">
		<div class="fullscreen landing parallax" data-img-width="2000"
			data-img-height="1333" data-diff="100">
			
			<div style="background-image: url('${ exView.exhibition_poster }')">
				<div class="container">
				
					<div class="row">
					
						<div class="col-md-7">
						
							<!-- /.logo -->
							
							<div class="logo wow fadeInDown">
								
							</div>
							<div class="head-btn wow fadeInLeft" style="width: 1300px;">
								
								<c:if test="${empty sessionScope.id}">
								<a href="login.do" class="btn btn-default" id="login_btn"
									style="float: right; background-color: white;">?????????/????????????</a>
								</c:if>
								<c:if test="${not empty sessionScope.id}">
								<a href="my_account_pass.do" class="btn btn-primary"
									id="my_info_btn" style="float: right;">??? ??????</a> <a
									href="logout.do" class="btn btn-default" id="logout_btn"
									style="float: right">????????????</a>
								</c:if>

								<!-- /.main title -->
								<h1 class="wow fadeInLeft">
									<a href="index.do" style="background-color: rgba(255,255, 255, 0.7) ">Exhibition</a>
								</h1>

								<!-- /.header paragraph -->


							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
			<div class="landing-text" style="margin-left: 90%">
				<a href="exhibition_detail.do?ex_num=${ exView.ex_num }&ex_hall_num=${ exView.ex_hall_num}" style="color: black;">
					?????????:	${ exView.ex_name} </a>
			</div>
	</c:forEach>

	
	<!-- NAVIGATION -->
	<div id="menu">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-backyard">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand site-name" href="#top">Exhibition</a>
			</div>

			<div id="navbar-scroll"
				class="collapse navbar-collapse navbar-backyard navbar-right">
				<ul class="nav navbar-nav">
					<li><a href="list.do">?????? ?????? ??????</a></li>
					<li><a href="loc.do">????????? ?????? ??????</a></li>
					<li><a href="reservation.do">????????????</a></li>
					<li><a href="board.do">?????????</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- /.Cars section -->
	<div class="container">
		<form class="d-flex" action="list.do" method="get">
			<button class="btn btn-outline-success" type="submit"
				style="float: right; height: 50px">Search</button>
			<input class="form-control me-2" type="search"
				placeholder="???????????? ???????????????" name="ex_name" aria-label="Search"
				style="float: right; width: 200px">
		</form>
	</div>

	<div id="carssection">

		<div class="container">
			<div class="text-center">

				<h2 class="wow fadeInLeft">?????? ?????????</h2>
				<div class="title-line wow fadeInRight"></div>
			</div>
			<div class="row carssections">



				<div id="carssections" class="owl-carousel">
					<c:forEach var="exList" items="${ listView }">

						<div class="screen wow fadeInUp"
							data-path-hover="m 180,34.57627 -180,0 L 0,0 180,0 z">
							<figure>
								<a
									href="exhibition_detail.do?ex_num=${ exList.ex_num }&ex_hall_num=${ exList.ex_hall_num }">
									<img
									src="${ exList.exhibition_poster }" />

								</a>
							</figure>
						</div>

					</c:forEach>
				</div>
			</div>
		</div>
	</div>

	<div id="carssection">

		<div class="container">
			<div class="text-center">

				<h2 class="wow fadeInLeft">?????? ????????????</h2>
				<div class="title-line wow fadeInRight"></div>
			</div>
			<div class="row carssections">

				<table class="table table-hover">
					<thead>
						<tr>
							<th>??????</th>
							<th>?????????</th>
							<th>????????????</th>
							<th>?????????</th>
							<th>?????????</th>
							<th>????????????</th>
						</tr>
					</thead>
					<tbody>
							<c:forEach var="sumGraph" items="${ sumGraph }">
						<c:forEach var="exGraph" items="${ exGraph }"  varStatus="status">
								
								<tr
									onclick="location.href='exhibition_detail.do?ex_num=${ exGraph.ex_num }&ex_hall_num=${ exGraph.ex_hall_num }'"
									style="width: 100%, height:30%">
									<td><c:out value="${ status.count }" /></td>
									<td><img
										src="${ exGraph.exhibition_poster }"
										style="width: 50px; height: 50px;" /></td>

									<td><c:out value="${ exGraph.ex_num }" /></td>
									<td><c:out value="${ exGraph.ex_name }" /></td>
									<td>${ exGraph.watch_count / sumGraph.sum*100 }</td>
									<td><c:out
											value="${ exGraph.total_count - exGraph.watch_count }" /></td>
								</tr>
							</c:forEach>
						</c:forEach>
					</tbody>
				</table>


			</div>

		</div>
	</div>



	<!-- /.contact section -->
	<div id="contact">
		<div class="action fullscreen parallax"
			style="background-image: url('/exhibition_user/images/bg.jpg');"
			data-img-width="2000" data-img-height="1333" data-diff="100">
			<div class="overlay">
				<div class="container">
					<div class="col-md-8 col-md-offset-2 col-sm-12 text-center">

						<!-- /.download title -->
						<h2 class="wow fadeInRight">?????? ?????? ??????</h2>
						<div id="map" style="width: 100%; height: 350px;"></div>
						<br /> <br /> <br /> <br />
					</div>
				</div>
			</div>
		</div>
	</div>








	<!-- /.footer -->
	<footer id="footer">
		<div class="footer-top">
			<div class="container">
				<div class="">
					<div class="col-md-4 col-sm-6">
						<h4>?????? ??????</h4>
						<p>
							<strong>3???</strong> <br>?????? ?????? :081) 123-1234 <br>?????? ??????
							??????: AM 10:00~PM 05:00 <br>?????? ?????????: exhibition@naver.com
						</p>
						<hr class="hidden-md hidden-lg">
					</div>


					<!-- /.col-md-4 -->

					<div class="col-md-4 col-sm-6">
						<h4>????????? ????????????</h4>
						<div class="newsletter-box">
							<div class="newsletter">
								<div class="newsletter-content">
									<p>123-1234-1234</p>
								</div>

								<div class="clear"></div>
							</div>
						</div>
					</div>
					<!-- /.col-md-4 -->

				</div>
			</div>
		</div>
	</footer>


	<!-- /.javascript files -->
	<script src="/exhibition_user/js/jquery.js"></script>
	<script src="/exhibition_user/js/bootstrap.min.js"></script>
	<script src="/exhibition_user/js/bootstrap-datetimepicker.min.js"></script>
	<script src="/exhibition_user/js/custom.js"></script>
	<script src="/exhibition_user/js/jquery.sticky.js"></script>
	<script src="/exhibition_user/js/wow.min.js"></script>
	<script src="/exhibition_user/js/owl.carousel.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script>
	<script type="text/javascript"
		src="https://maps.googleapis.com/maps/api/js?sensor=false&libraries=places"></script>
	<script src="/exhibition_user/js/google.js"></script>
	<script src="/exhibition_user/js/booking.js"></script>
	<script src="/exhibition_user/js/bootstrap-hover-dropdown.js"></script>
	<script src="/exhibition_user/js/jquery.validate.min.js"></script>

	<script src="/exhibition_user/js/snap.svg-min.js"></script>
	<script src="/exhibition_user/js/hovers.js"></script>



	<script>
		new WOW().init();
		$('#date_time').datetimepicker({
			format : 'dd/MM/yyyy hh:mm:ss',
			language : 'en-US',
			pickDate : true, // disables the date picker
			pickTime : true
		});
		
	</script>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=33a56ba20c73caaac66039b100edcde8"></script>

	<script>
 		var mapContainer = document.getElementById('map'), // ????????? ????????? div  
 	    mapOption = { 
 	        center: new kakao.maps.LatLng(37.480188, 127.0142047), // ????????? ????????????
 	        level: 3 // ????????? ?????? ??????
 	    };

 	var map = new kakao.maps.Map(mapContainer, mapOption); // ????????? ???????????????
 	 
 	// ????????? ????????? ????????? ????????? ????????? ?????? ?????? ??????????????? 
 	var positions = [
 		
 		<c:forEach var="locView" items="${ locView }">
 	    {
 	        content: '<div style="color: #333;text-align: center"><c:out value="${ locView.ex_hall_num }. ${ locView.ex_hall_name }"/></div>',
 	        latlng: new kakao.maps.LatLng(${ locView.latitude }, ${ locView.longitude })
 	    },
 	    </c:forEach>
 	];

 	for (var i = 0; i < positions.length; i ++) {
 	    // ????????? ???????????????
 	    var marker = new kakao.maps.Marker({
 	        map: map, // ????????? ????????? ??????
 	        position: positions[i].latlng // ????????? ??????
 	    });

 	    // ????????? ????????? ?????????????????? ??????????????? 
 	    var infowindow = new kakao.maps.InfoWindow({
 	        content: positions[i].content // ?????????????????? ????????? ??????
 	    });

 	    // ????????? mouseover ???????????? mouseout ???????????? ???????????????
 	    // ????????? ??????????????? ???????????? ????????? ??????????????? 
 	    // for????????? ???????????? ????????? ?????? ????????? ????????? ???????????? ???????????? ???????????????
 	    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
 	    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
 	}

 	// ?????????????????? ???????????? ???????????? ????????? ??????????????? 
 	function makeOverListener(map, marker, infowindow) {
 	    return function() {
 	        infowindow.open(map, marker);
 	    };
 	}

 	// ?????????????????? ?????? ???????????? ????????? ??????????????? 
 	function makeOutListener(infowindow) {
 	    return function() {
 	        infowindow.close();
 	    };
 	}
 	</script>
</body>
</html>