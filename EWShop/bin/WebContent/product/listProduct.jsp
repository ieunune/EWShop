<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html lang="ko">
<head>

<!--  meta  -->
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!--  bootstrap CDN  -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
<!--  bootstrap DropDown CSS -->
<link href="/css/animate.min.css" rel="stylesheet">
<link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
<!--  bootstrap DropDown JS -->
<script src="/javascript/bootstrap-dropdownhover.min.js"></script>
<!-- jQuery CSS -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<!-- jQuery JS -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!--  CSS -->
<style>
	hr{
		border: 1px solid white;
	}
    body { 
    	padding-top : 50px; 
    }
    h7 { 
    	color : red; 
    }
    .row.display-flex { 
    	display: flex; flex-wrap: wrap; 
    }
	.thumbnail {
		margin-top : 20 px;
		margin-bottom : 20 px;
		width: auto;
		height: 250px;
	}
	.thumbnail img{
		position : relative;
		width : auto;
		height : 242px;
		object-fit: cover;
	}
	button{
		background-color: black;
		color: white;
		width : 150px;
		height: auto;
		border: 1px solid black;
		border-right: 1px solid white;
	}
	.search{
		border-radius: 0px 20px 20px 0px / 0px 20px 20px 0px;
		border-left: 1px solid white;
		margin-right: 0px;
		border-right: 0px; 
	}
	#searchKeyword{
		border-radius: 20px 0px 0px 20px / 20px 0px 0px 20px;
		height: 50px;
		margin-left: 0px;
		width : 500px; 
	}
</style>

<title>��ǰ �����ȸ</title>

<!-- JavaScript -->
<script type="text/javascript">

	
	function fncGetUserList(currentPage) {
		
		$("#currentPage").val(currentPage)
		
		$("form").attr("method" , "POST").attr("action" , "/product/listProduct?&menu="+$("#menu").val()+"&pageSize="+$("#selectPageSize").val()).submit();
		
	}
	
	function getPageSize(){
		
		$(self.location).attr("href","/product/listProduct?menu="+$("#menu").val()+"&pageSize="+$("#selectPageSize").val());
	}
	
	
	$(function(){
		
		$("button:contains('��������')").on("click", function(){
			$(self.location).attr("href","/product/listProduct?menu=${param.menu}&order=1&pageSize=${search.pageSize}");
		});
		$("button:contains('��������')").on("click", function(){
			$(self.location).attr("href","/product/listProduct?menu=${param.menu}&order=2&pageSize=${search.pageSize}");
		});
		$("button:contains('�Ǹŷ�ŷ')").on("click", function(){
			$(self.location).attr("href","/product/listProduct?menu=${param.menu}&order=3&pageSize=${search.pageSize}");
		});
		$("button:contains('��������')").on("click", function(){
			$(self.location).attr("href","/product/listProduct?menu=${param.menu}&order=4&pageSize=${search.pageSize}");
		});
		$("button:contains('�Ż�ǰ')").on("click", function(){
			$(self.location).attr("href","/product/listProduct?menu=${param.menu}&order=5&pageSize=${search.pageSize}");
		});
	});
	$(function(){
		
		var pageSize= $("#selectPageSize").val();
		var menu= $("#menu").val();
		
		$("#searchKeyword").on("keyup", function(){
			
			var search = {searchKeyword : $("#searchKeyword").val(), searchCondition : $("#searchCondition").val()};
			var convertSearch = JSON.stringify(search);
			
			$.ajax({
				url : "/product/json/listProduct/"+menu+"/"+pageSize ,
				method : "POST",
				dataType : "json",
				data :  convertSearch ,
				contentType: "application/x-www-form-urlencoded; charset=euc-kr",
				headers : {
					"Accept" : "application/json",
					"Content-Type" : "application/json;charset=euc_kr"
				},
				success : function(JSONData, status){				
					$("#searchKeyword").autocomplete({
						source : JSONData
					});
				}
			});
		});
		
		$(".thumbnail").on("click", function(){
			
			self.location ="/product/getProduct?prodNo="+$(this).children("input").val()+"&menu="+$("#menu").val();
		});
		
//		����ϱ� (��������) 
		
// 		������ ó���� ���� ��ũ��Ʈ
		 $( ".search" ).on("click" , function() {
				fncGetUserList(1);
		});
				
		$( ".table-hover th td:nth-child(1)" ).css("color" , "red").css("font-weight","bolder");
		$("h7").css("color" , "red").css("font-weight","bolder");
		//$(".table-hover.table-striped:nth-child(2n+1)" ).css("background-color" , "whitesmoke");
		
//  		$("#thumnail").on("mouseover", function(){
//  			$(this).css("background-color","red");
//  		});
	});
</script> 
</head>

<body>

	<jsp:include page="/layout/toolbar.jsp" />
	
	<input type="hidden" id="menu" name="menu" value="${param.menu}"/>
	
	<div class="container">
			    	    
	    <hr/>
	    
	    	<div class="col-md-12 col-md-12 col-sm-12 col-xm-12">
			   	<form class="form-inline" name="detailForm">
					<div class="form-group">
				    	<select class="form-control" id="searchCondition" name="searchCondition" style="width: 130px;">
				    		<option value="0" ${ ! empty search.searchCondition && search.searchCondition==0 ? "selected" : "" }>��ǰ��ȣ</option>
							<option value="1" ${ ! empty search.searchCondition && search.searchCondition==1 ? "selected" : "" }>��ǰ��</option>
							<option value="2" ${ ! empty search.searchCondition && search.searchCondition==2 ? "selected" : "" }>��ǰ����</option>
						</select>
				  	</div>
				  
				  	<div class="form-group">
				    	<label class="sr-only" for="searchKeyword">�˻���</label>
				    	<input type="text" id="searchKeyword" name="searchKeyword"  placeholder="�˻���" value="${! empty search.searchKeyword ? search.searchKeyword : '' }"  >
				    	<button type="button" class="search" style="width: 50px; height: 50px;"><span class="glyphicon glyphicon-search" ></span></button>
				  	</div>  
				  	<!-- PageNavigation ���� ������ ���� ������ �κ� -->
				  	<div class="form-group">
				  		<span>ǥ�ð���</span>
				  		<span>
	    						<select name="pageSize" id="selectPageSize" onchange="javascript:getPageSize()" style="width: 50px">
									<option value="6" ${ search.pageSize == 6 ? "selected" : "" }>6</option>
									<option value="9" ${ search.pageSize == 9 ? "selected" : "" }>9</option>
									<option value="12" ${ search.pageSize == 12 ? "selected" : "" } >12</option>
									<option value="15" ${ search.pageSize == 15 ? "selected" : "" } >15</option>
								</select>
						</span> 	
				  	</div>
				  	<input type="hidden" id="currentPage" name="currentPage" value=""/>
				 </form>				  	
	    	</div>
	    	
	    	<br/>
	    	<hr/>
	    	
	    	<div class="row">
	    	<div class="col-md-12 col-sm-12 col-xm-12">
	    		
	    		<table>
	    			<tr>
						<td>
	    					<button>�� �������ݼ�</button>
	    				</td>
	    				<td>
	    					<button>�� �������ݼ�</button>
						</td>
						<td>
							<button>�� �Ǹŷ�ŷ��</button>
						</td>
						<td>
							<button>�� �������ڼ�</button>
						</td>
						<td>
							<button>�� �Ż�ǰ��</button>
						</td>						
					</tr>
				</table>
				
	    	</div>	     
	    </div>
		
		<hr/>
		
		<div class="row">
	    	<div class="col-md-12 text-left">
	    		<p class="text-primary">
	    			��ü  ${resultPage.totalCount } �Ǽ�, ���� ${resultPage.currentPage}  ������
	 			</p>
	    	</div>
	    </div>
	
	<h7>��ǰ �̹��� Ŭ���� ��ǰ�������� �̵��մϴ�.</h7>
	
	<p>
	
	<div class="row">
	<c:set var="i" value="0" />
	<c:forEach var="product" items="${list}">	
  		<div class="col-md-3 col-sm-4 col-xm-6">
    		<a href="#" class="thumbnail">
    			<input type="hidden" id="prodNo" value="${product.prodNo}">
      			<img src="/images/uploadFiles/${product.fileName}" onerror="this.src='/images/uploadFiles/ImageTemp.png'">
   			</a>
   			<div class="caption" align="center">
        			<b style="font-size: 18px">${product.prodName}</b>
        			<p>${product.price}&nbsp;��</p>
        			<c:if test="${product.amount <= 50}">
        			<p><b>�ڡ�ǰ���ӹڡڡ�</b></p>
        			</c:if>
        			<c:if test="${product.amount > 50}">
        			<p><b style="color:white;">�ٸ����</b></p>
        			</c:if>
        			<c:if test="${product.amount == 0}">
        			<p style="color: red; font-weight: bold;">�ڡ�ǰ���ڡ�</p>
        			</c:if>
					<div style="color: white;">
						&nbsp;<p>
						&nbsp;<p>
					</div>
      			</div>
  		</div>	
	</c:forEach>
	</div>
	<p>
	</div>

	<jsp:include page="../common/pageNavigator_new.jsp"/>
	<jsp:include page="/layout/bottom.jsp"></jsp:include>
</body>
</html>
