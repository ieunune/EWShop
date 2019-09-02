<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html lang="ko">

<head>
<meta charset="EUC-KR">

<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!--   jQuery , Bootstrap CDN  -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Bootstrap Dropdown Hover CSS -->
<link href="/css/animate.min.css" rel="stylesheet">
<link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">

<!-- Bootstrap Dropdown Hover JS -->
<script src="/javascript/bootstrap-dropdownhover.min.js"></script>

<!--  CSS �߰� : ���ٿ� ȭ�� ������ ���� �ذ� :  �ּ�ó�� ��, �� Ȯ��-->
<style>
body {
	/*              padding-top : 50px; */
	
}

.carousel-inner>.item>img {
	top: 0;
	left: 0;
	min-width: 100%;
	min-height: 960px;
	max-height: 960px;
}

.carousel-inner>.item {
	font-family: "Arial Black", sans-serif;
    font-size: 18px;
   	font-weight: bold;
   	color: black;
   	min-height: 50px;
	vertical-align: middle;
	
}

.navbar.navbar-inverse.navbar-fixed-top {
	border-width: 0px;
	box-shadow: 0px 0px;
	background-color: rgba(0, 0, 0,0.0);
	background-image: linear-gradient(180deg, rgba(0, 0, 0, 0.00) 0%,
		rgba(0, 0, 0, 0.00) 100%);
}

.carousel-indicators li {
	border-radius: 10px;
	margin: 1px 8px;
	height: 10px;
	max-width: 10px;
	border: 1px solid #FFF;
	background-color: transparent;
	align-items: center;
}

.carousel-indicators .active {
	background-color: #fff;
	max-width: 12px;
	margin: 0 8px;
	height: 12px;
}

img{
	width : 100px;
	height: 100px;
}
.navbar-inverse .navbar-nav>.active>a{
	color : white;
}
</style>

<!--  ///////////////////////// JavaScript ////////////////////////// -->
<script type="text/javascript">
	$(".carousel.slide").carousel({
		interval : 1000;
	})
</script>

</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
	<!-- ToolBar End /////////////////////////////////////-->
	<div id="carousel-example-generic" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0"
				class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			<li data-target="#carousel-example-generic" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="/images/main/Main1.jpg">
			</div>
			<div class="item">
				<img src="/images/main/Main2.jpg">
			</div>
			<div class="item">
				<img src="/images/main/Main3.jpg">
			</div>
		</div>
		<a class="left carousel-control" href="#carousel-example-generic"
			role="button" data-slide="prev"> <span
			class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#carousel-example-generic"
			role="button" data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>

	<p>
		<!--  �Ʒ��� ������ http://getbootstrap.com/getting-started/  ���� -->
	<div class="container ">
		<!-- Main jumbotron for a primary marketing message or call to action -->
		<div class="jumbotron">
			<h1>Eunwoo Shop</h1>
			<p>��Ʈķ�� �̴� ������Ʈ</p>
		</div>
	</div>
	
	
	<div id="carousel-example-generic" class="carousel slide"
		data-ride="carousel">
		<div class="carousel-inner" role="listbox" style="vertical-align: middle;display: inline-block;float: none !important;">
			<div class="item active" align="center">
				���������� �̷��� ���ߴ�.
			</div>
			<div class="item" align="center">
				"���� ���� ������ ������ ���� �߸� ���� �ð��� �����̴�."
			</div>
			<div class="item" align="center">
				�庮�� �����ϰ� ������ �ʴ� ������� �ɷ������� �����մϴ�.<br> 
				�庮�� ����� �ƴ϶� '�ٸ�' ������� ���߰� �Ϸ��� �ű� �ִ� ��������.
			</div>
			<div class="item" align="center">
				��������
			</div>
			<div class="item" align="center">
				�ູ�� ���� �����. �����ϴ� ���� �ϴ� ���� �ƴ϶�,<br>
				���� �ϴ� ���� �����ϴ� ���Դϴ�.
			</div>
		</div>
	</div>
	
	<p>
	
	<div class="container" align="center">
		<h3><b>���� ����ȯ�� �� ���</b></h3>
		<p/>
		<br/>
		<div class="row">
			<div class="col-md-12">
					<img src="/images/icons/Java.png" onerror="this.src='/images/uploadFiles/ImageTemp.png'"/>
					<img src="/images/icons/spring.png" onerror="this.src='/images/uploadFiles/ImageTemp.png'" />
					<img src="/images/icons/mybatis.png" onerror="this.src='/images/uploadFiles/ImageTemp.png'" />				
					<img src="/images/icons/oracle.png" onerror="this.src='/images/uploadFiles/ImageTemp.png'" />
					<img src="/images/icons/ajax.png" onerror="this.src='/images/uploadFiles/ImageTemp.png'" />
					<img src="/images/icons/JavaScript.png" onerror="this.src='/images/uploadFiles/ImageTemp.png'" />
					<img src="/images/icons/html5.png" onerror="this.src='/images/uploadFiles/ImageTemp.png'" />
					<img src="/images/icons/css.png" onerror="this.src='/images/uploadFiles/ImageTemp.png'" />
					<img src="/images/icons/jQuery.png" onerror="this.src='/images/uploadFiles/ImageTemp.png'" />
					<img src="/images/icons/bootstrap.png" onerror="this.src='/images/uploadFiles/ImageTemp.png'" />
					<img src="/images/icons/eclipse.png" onerror="this.src='/images/uploadFiles/ImageTemp.png'" />					
			</div>
		</div>
	</div>
	
	<p>
	<hr>
	
	<jsp:include page="/layout/bottom.jsp"></jsp:include>

</body>

</html>