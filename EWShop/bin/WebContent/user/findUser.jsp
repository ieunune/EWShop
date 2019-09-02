<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html lang="ko">

<head>
<meta charset="EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!-- ���� : http://getbootstrap.com/css/   ���� -->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>��й�ȣã��</title>

<style type="text/css">
input {
	border: 1px solid black;
	width: 200px;
	height: 30px;
}

hr {
	border: 0.5px solid black;
}

button {
	background-color: black;
	color: white;
	border: 1px solid black;
	width: 200px;
	height: 40px;
	font-size: 14px;
	font-weight: bold;
}
</style>

<script type="text/javascript">
	$(function(){
		
		$("button:contains('�α���')").on("click", function(){
			$(self.location).attr("href","/user/loginView.jsp");
		});
	});
</script>
</head>

<body>

<div class="navbar navbar-inverse" style="background: black;">
		<div class="container">
			<div class="col-md-12 col-sm-12" align="center" style="margin-left: 42%; margin-right: 42%;">
				<a class="navbar-brand" href="/index.jsp" style="color: white;">Eunwoo</a>
			</div>
		</div>
	</div>

	<div class="container" style="margin-top: 30px">
		<!--  row Start /////////////////////////////////////-->

		<div class="row">
			<form>
				<div class="col-sm-12 col-md-12" align="center">

					<b>��й�ȣã��</b> <br />

					<hr />
					<small> �Է��Ͻ� ������ ã�� �����Դϴ�. </small>
					<p />
					<p />
					<br /> ���̵� :  ${user.userId} <br />
					<br /> �̸� :  ${user.userName} <br />
					<br /> ��й�ȣ :  ${user.password} <br />
					<br /> �������� :  ${user.regDate} <br />
					<p/>
					<p/>
					<br/>
						<button type="button">�α���</button>
						<br />
					<p>
					<hr />
				</div>
			</form>
		</div>
	</div>

</body>
</html>
