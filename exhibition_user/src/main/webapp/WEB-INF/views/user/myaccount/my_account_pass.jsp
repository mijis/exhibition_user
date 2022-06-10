<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head> 
        <!-- /.website title -->
        <title>VTC Theme | My account</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

        <meta charset="UTF-8" />
        <!-- CSS Files -->
        <link href="/sist/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="/sist/css/font-awesome.min.css" rel="stylesheet">
        <link href="/sist/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
        <link href="/sist/css/animate.css" rel="stylesheet" media="screen">
        <link href="/sist/css/owl.theme.css" rel="stylesheet">
        <link href="/sist/css/owl.carousel.css" rel="stylesheet">
        <link href="/sist/css/bootstrap-datetimepicker.min.css" rel="stylesheet">

        <!-- Colors -->
        <!-- <link href="css/css-index-blue.css" rel="stylesheet" media="screen"> -->
        <!-- <link href="css/css-index-green.css" rel="stylesheet" media="screen"> -->
        <!-- <link href="css/css-index-purple.css" rel="stylesheet" media="screen"> -->
        <!-- <link href="css/css-index-red.css" rel="stylesheet" media="screen"> -->
        <!-- <link href="css/css-index-orange.css" rel="stylesheet" media="screen"> -->
        <link href="/sist/css/stacktable.css" rel="stylesheet" media="screen">
        <link href="/sist/css/css-index-yellow.css" rel="stylesheet" media="screen"> 

        <!-- Google Fonts -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic" />


    </head>
<c:if test="${ loginUser==null }">
<script type="text/javascript">
	location.href="http://localhost/sist/user/login/login.do"
</script>
</c:if>
<c:if test="${ loginUser!=null }">
	<!-- <script type="text/javascript">
		alert("세션있음");
	</script>	 -->
    <body data-spy="scroll" data-target="#navbar-scroll">
        <!-- /.preloader -->
        <div id="preloader"></div>
        <div id="top"></div>


        <!-- /.parallax full screen background image -->
        <div class="fullscreen landing parallax blog-page" style="background-image:url('images/bg-baner.jpg');" data-img-width="2000" data-img-height="1333" data-diff="100">

            <div class="overlay">
                <div class="container">
                    <div class="col-md-10 col-md-offset-1 text-center">

                        <!-- /.logo -->
                        <div class="logo wow fadeInDown" style="margin-top: 50px"> 
                            <a href="index.jsp">Exhibition</a>
                        </div>

                       

                    </div>
                </div> 
            </div> 
        </div>
        
        
              <!-- NAVIGATION -->
        <div id="menu">
               <div class="container""> 
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-backyard">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand site-name" href="index.jsp">Exhibition</a>
                    </div>

                    <div id="navbar-scroll" class="collapse navbar-collapse navbar-backyard navbar-right">
                        <ul class="nav navbar-nav">
                     <li><a href="list.jsp">전체 전시 보기</a></li>
                            <li><a href="loc.jsp">지역별 전시 보기</a></li>
                            <li><a href="reservation.jsp">예약하기</a></li>
                                    <li><a href="board.jsp">게시판</a></li>
                        
                        </ul>
                    </div>
                 </div>  
        </div>


        <!-- /.pricing section -->
        <div id="myaccount">
            <div class="container">
                <div class="text-center ">
                    <!-- /.pricing title -->
                    <h2 class="wow fadeInLeft">내 정보</h2>
                    <div class="title-line wow fadeInRight"></div>
                </div>
                <div class="row account-details">

                    <!-- /.account-control -->
                    <div class="col-sm-3 account-control padding-b-50 padding-t-50">
                        <div class="panel panel-default sidebar-menu wow  fadeInLeft animated">
                            <div class="panel-heading">
                                <h3 class="panel-title">Menu</h3>
                            </div>
                            <div class="panel-body">
                                <ul class="nav nav-pills nav-stacked">
                              		 <li class="active"> <a href="my_account_pass.jsp">비밀번호 입력</a></li>
                                    <li ><a href="#void">예약상황</a></li>
                                    <li><a href="#void">내 정보 수정</a></li>
                                    
                                    
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-9 account-data padding-b-50 padding-t-50">
                        <div id="tab2" class="box-old-booking box-section animated fadeInUp">
                            <h2 style="padding-bottom: 17px;">비밀번호 확인</h2>
								<br/>
							<form action="http://localhost/sist/user/myaccount/my_account_pass.do" id="frm" method="post">	
                           	<div class="form-group" style="width:500px; margin-left: 150px">
                           	
                                <input class="form-control" id="password" type="password" name="password">
                            </div>
								<br/>
								<br/>
							<c:if test="${check==1 }">
                            <label>${message }</label>
                            </c:if>
                            <div class="text-center">
							<input type="submit" id="find_direction"  value="확인" style="width:260px; background-color: #F0AD4E;color:#ffffff; border:0px"> 
							</div>
							</form>	                        
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
                            <h4>고객 센터</h4>
                            <p><strong>3조</strong>
                                <br>전화 번호 :081) 123-1234  
                                <br>상담 가능 시간: AM 10:00~PM 05:00
                                <br>관련 이메일: exhibition@naver.com
                            </p>
                            <hr class="hidden-md hidden-lg">
                        </div> 

                        
                        <!-- /.col-md-4 -->
                        
                        <div class="col-md-4 col-sm-6">
                            <h4>사업자 등록번호</h4>
                            <div class="newsletter-box">
                                <div class="newsletter">  
                                    <div class="newsletter-content"> 
                                        <p>123-1234-1234</p>
                                    </div> 
                                    
                                    <div class="clear"> </div>
                                </div>
                            </div>
                        </div>
                        <!-- /.col-md-4 -->

                    </div>
                    </div>
                    </div>
                    </footer>
</c:if>

        

        <!-- /.javascript files -->
        <script src="/sist/js/jquery.js"></script>
        <script src="/sist/js/bootstrap.min.js"></script>
        <script src="/sist/js/bootstrap-datetimepicker.min.js"></script>
        <script src="/sist/js/custom.js"></script>
        <script src="/sist/js/jquery.sticky.js"></script>
        <script src="/sist/js/wow.min.js"></script>
        <script src="/sist/js/owl.carousel.min.js"></script> 
            <script src="/sist/js/jquery.validate.min.js"></script> 

        <script>
            new WOW().init();
        </script>

<script type="text/javascript">
$(function(){
	$("#find_direction").click(function(){
	var pass=$(".form-control").val();
	
	if(pass==""){
		alert("비밀번호를 입력해주세요");
		return;
	}
	
	$("#frm").submit();
	});
});
</script>
    </body>
</html>