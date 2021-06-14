<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- JQuery 라이브러리 추가(파일 두개중 아무거나 사용가능 but 하나만 사용해야함) 
	 JQuery 사용할 때마다 항상 추가(파일당 한 번씩) -->
<!-- <script src="../js/jquery-3.5.1.js"></script> -->

<!-- CDN사용 추가 (jquery 라이브러리는 단 한번만 추가되어야함) -->
<script  src="https://code.jquery.com/jquery-3.5.1.js"  integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="  crossorigin="anonymous"></script> 
<!-- JQuery 사용 -->
<script type="text/javascript">
  	alert("안녕하세요"); //=> 자바스크립트 -> html이 실행되기 전에 실행된 후 html 실행 (위치에 따라 다름)
	//많이 사용하는 방식
	$(document).ready(function(){
	// Jquery 사용준비 완료 //html이 실행된 후 실행됨
	alert("안녕하세요!!!");
	
	});
  	
	//$( ); 
	//가장많이 사용하는 방식
  	$(function(){
  		alert("안녕~ Jquery방식!");
  	});
  	
  	jQuery(document).ready(function(){
  		alert("안녕~ Jquery방식2!");
  	});
  	
  	jQuery(function(){
  		alert("안녕~ Jquery방식3!");
  	});
  	
  	
</script>
</head>
<body>
  <h1>WebContent/jq1/test1.jsp</h1>



</body>
</html>