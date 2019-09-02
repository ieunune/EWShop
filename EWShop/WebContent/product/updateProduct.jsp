<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<!--  meta  -->
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!--  bootstrap CDN  -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!--  bootstrap Dropdown CSS & JS  -->
<link href="/css/animate.min.css" rel="stylesheet">
<link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
<script src="/javascript/bootstrap-dropdownhover.min.js"></script>

<!--  CSS -->
<style>
body {
	padding-top: 50px;
}
</style>

<script type="text/javascript" src="../javascript/calendar.js"></script>
<script type="text/javascript">

function fncUpdateProduct(){
	//Form ��ȿ�� ����
 	var name = $("input[name='prodName']").val();
	var detail = $("input[name='prodDetail']").val();
	var manuDate = $("input[name='manuDate']").val();
	var price = $("input[name='price']").val();

	if(name == null || name.length<1){
		alert("��ǰ���� �ݵ�� �Է��Ͽ��� �մϴ�.");
		return;
	}
	if(detail == null || detail.length<1){
		alert("��ǰ�������� �ݵ�� �Է��Ͽ��� �մϴ�.");
		return;
	}
	if(manuDate == null || manuDate.length<1){
		alert("�������ڴ� �ݵ�� �Է��ϼž� �մϴ�.");
		return;
	}
	if(price == null || price.length<1){
		alert("������ �ݵ�� �Է��ϼž� �մϴ�.");
		return;
	}
	
	$("form").attr("method","POST").attr("action","/product/updateProduct?prodNo="+${product.prodNo}+"&menu=search").submit();
	
}

$(function () {
	
	$("#reset").on("click", function(){
		$("form")[0].reset();
	});
	
	$("button.btn.btn-primary").on("click", function(){
		fncUpdateProduct();
	});
	
});

</script>


</head>

<body>

	<jsp:include page="/layout/toolbar.jsp" />

	<div class="container">
		<div class="page-header">
		
			<a href="javascript:self.location=document.referrer;">
			<span class="glyphicon glyphicon-arrow-left">&nbsp;�ڷ�</span>
			</a>
			
			<h3 class=" text-info">��ǰ����</h3>
		</div>

		<form class="form-horizontal" name="detailForm"
			enctype="multipart/form-data">

			<div class="row">
				<div class="col-xs-4 col-md-2">
					<strong>�� ǰ ��</strong>
				</div>
				<div class="col-xs-8 col-md-4">
					<input type="text" class="form-control" id="prodName"
						name="prodName" value="${product.prodName}">
				</div>
			</div>

			<hr />

			<div class="row">
				<div class="col-xs-4 col-md-2">
					<strong>��ǰ������</strong>
				</div>
				<div class="col-xs-8 col-md-4">
					<input type="text" class="form-control" id="prodDetail"
						name="prodDetail" value="${product.prodDetail}">
				</div>
			</div>

			<hr />

			<div class="row">
				<div class="col-xs-4 col-md-2">
					<strong>��������</strong>
				</div>
				<div class="col-xs-7 col-md-3">
					<input type="text" class="form-control" id="manuDate"
						name="manuDate" value="${product.manuDate}"
						readonly="readonly">
				</div>
				<div class="col-xs-1 col-md-1">
					<img src="../images/ct_icon_date.gif" width="15" height="15"
						onclick="show_calendar('document.detailForm.manuDate', document.detailForm.manuDate.value)" />
				</div>
			</div>

			<hr />

			<div class="row">
				<div class="col-xs-4 col-md-2">
					<strong>����</strong>
				</div>
				<div class="col-xs-7 col-md-3">
					<input type="text" class="form-control" id="price" name="price"
						value="${product.price}">
				</div>
				<div class="col-xs-1 col-md-1">��</div>
			</div>

			<hr />

			<div class="row">
				<div class="col-xs-4 col-md-2">
					<strong>����</strong>
				</div>
				<div class="col-xs-7 col-md-3">
					<input type="text" class="form-control" id="amount" name="amount"
						value="${product.amount}" maxlength="3">
				</div>
				<div class="col-xs-1 col-md-1">��</div>
			</div>

			<hr />

			<div class="row">
				<div class="col-xs-4 col-md-2">
					<strong>��ǰ�̹���</strong>
				</div>
				<div class="col-xs-8 col-md-4">
					<input type="file" class="form-control" id="file" name="file"
						maxlength="13">
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12 col-xs-12 col-md-12">
					<h6 style="color: red;">��ǰ�̹����� �ݵ�� ÷���Ͽ� �ּ���.</h6>
				</div>
			</div>
			<hr />

			<div class="row">
				<div class="col-md-12 text-center ">
					<button type="button" class="btn btn-primary">
						<input type="hidden" name="prodNo" value="${product.prodNo}" /> ����
					</button>
					<a id="reset" class="btn btn-primary btn" role="button">�ʱ�ȭ</a>
				</div>
			</div>
		</form>
	</div>
	
	<hr>
	
	<jsp:include page="/layout/bottom.jsp"></jsp:include>
	
</body>
</html>