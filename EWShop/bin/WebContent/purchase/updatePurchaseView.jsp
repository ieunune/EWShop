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
<!--  bootstrap DropDown CSS -->
<link href="/css/animate.min.css" rel="stylesheet">
<link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
<!--  bootstrap DropDown JS -->
<script src="/javascript/bootstrap-dropdownhover.min.js"></script>
<!-- jQuery JS -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<!--  CSS -->
<style>
body {
	padding-top: 50px;
}

#footer {
	position: absolute;
	margin-bottom : 0px;
	padding-bottom : 0px;
	width: 100%;
	height: 100px;
}
</style>

<script type="text/javascript" src="../javascript/calendar.js"></script>
<script type="text/javascript">

// ��ȿ�� �˻� �߰��ض� �����

	$(function () {
		
		$("span:contains('�ڷ�')").on("click", function(){
			history.go(-1);
		});
		
		$("button:contains('�����Ϸ�')").on("click", function(){
			$("form").attr("method","post").attr("action","/purchase/updatePurchase?tranNo="+${purchase.tranNo}).submit();
		});
		
	});

</script>

</head>

<body>

	<jsp:include page="/layout/toolbar.jsp" />


	<div class="container">
		<div class="page-header">
			<span class="glyphicon glyphicon-arrow-left">&nbsp;�ڷ�</span>

			<h3 class=" text-info">�������� ����</h3>
		</div>

		<form>

			<div class="row">
				<div class="col-xs-4 col-md-2">
					<strong>�����ھ��̵�</strong>
				</div>
				<div class="col-xs-8 col-md-4">
					${purchase.buyer.userId} <input type="hidden" name="buyerId"
						value="${purchase.buyer.userId}">
				</div>
			</div>

			<hr />

			<div class="row">
				<div class="col-xs-4 col-md-2">
					<strong>���Ź��</strong>
				</div>
				<div class="col-xs-8 col-md-4">
					<select name="paymentOption">
						<option value="1" selected="selected">īī������</option>
						<option value="2">�������Ա�</option>
					</select>
				</div>
			</div>

			<hr />

			<div class="row">
				<div class="col-xs-4 col-md-2">
					<strong>�������̸�</strong>
				</div>
				<div class="col-xs-8 col-md-4">
					<input type="text" name="receiverName" class="ct_input_g"
						style="width: 100px; height: 19px" maxLength="20"
						value="${purchase.receiverName}" />
				</div>
			</div>

			<hr />

			<div class="row">
				<div class="col-xs-4 col-md-2">
					<strong>�����ڿ���ó</strong>
				</div>
				<div class="col-xs-8 col-md-4">
					<input type="text" name="receiverPhone" class="ct_input_g"
						style="width: 100px; height: 19px" maxLength="20"
						value="${purchase.receiverPhone}" />
				</div>
			</div>

			<hr />

			<div class="row">
				<div class="col-xs-4 col-md-2">
					<strong>�������ּ�</strong>
				</div>
				<div class="col-xs-8 col-md-4">
					<input type="text" name="divyAddr" class="ct_input_g"
						style="width: 100px; height: 19px" maxLength="20"
						value="${purchase.divyAddr}" />
				</div>
			</div>

			<hr />

			<div class="row">
				<div class="col-xs-4 col-md-2">
					<strong>���ſ�û����</strong>
				</div>
				<div class="col-xs-8 col-md-4">
					<input type="text" name="divyRequest" class="ct_input_g"
						style="width: 100px; height: 19px" maxLength="20"
						value="${purchase.divyRequest}" />
				</div>
			</div>

			<hr />

			<div class="row">
				<div class="col-md-12 text-center ">
					<c:if test="${purchase.tranCode == 000}">
						<button type="button"
							style="color: white; background: black; width: 100%; height: 40px">�ֹ�
							���� �����Ϸ�</button>
					</c:if>
				</div>
			</div>

			<p>
		</form>
	</div>

	<div id="footer">
		<jsp:include page="/layout/bottom.jsp"></jsp:include>
	</div>

</body>
</html>