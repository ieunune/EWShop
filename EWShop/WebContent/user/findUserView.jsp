<%@ page contentType="text/html; charset=euc-kr"%>

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
	$(function() {

		$("button:contains('ã��')").on("click", function() {
			fncFindUser();
		});
	});
	function fncFindUser() {
		// Form ��ȿ�� ����

		var id = $("#userId").val();
		var userName = $("#userName").val();

		if ((id == null || id.length < 1)
				& (userName == null || userName.length < 1)) {
			alert("���̵�� �̸��� �ݵ�� �Է��ϼž� �մϴ�.");
			return;
		}

		$("form").attr("action", "/user/findUser").attr("method", "POST")
				.submit();
	}
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
					<small> ���� ȸ�� ������ �ƴϽø� <br> ȸ�������� ���ֽñ� �ٶ��ϴ�.
					</small>
					<p />
					<p />
					<small> </small> <br /> <input type="text" name="userId"
						id="userId" placeholder="���̵�" /> <br />
					<p>
						<input type="text" name="userName" id="userName" placeholder="�̸�" />
						<br />
					<p>
						<button type="button">ã��</button>
						<br />
					<p>
					<hr />
				</div>
			</form>
		</div>
	</div>

	<script type="text/javascript">
		document.getElementById("btnCmfID").focus();
	</script>

</body>
</html>
