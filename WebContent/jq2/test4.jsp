<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
  ul{
  	list-style:none;
  }

</style>
<script src="../js/jquery-3.5.1.js"></script>
<script src="../js/jquery.innerfade.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		//'fade','slide'
		//'slow'/'normal'/'fast'
		$('#news').innerfade({
			animationtype: 'slide',
			speed:750,
			timeout:2000,
			type:'random',
			containerheight:'350px'
		});
		
	});


</script>
</head>
<body>
	<h1>WebContent/jq2/test4.jsp</h1>
	
	<!-- 사진 슬라이드 이벤트 -->
	<ul id="news">
	  <li><img src="../jq1/1.jpg"></li>
	  <li><img src="../jq1/2.jpg"></li>
	  <li><img src="../jq1/3.jpg"></li>
	</ul>
	
</body>
</html>