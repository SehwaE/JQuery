<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.5.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		//이벤트 : 클라이언트가 페이지에서 하는 모든 행동
		
		$('input').click(function(){
			alert("Jquery 이벤트 발생!");
		});
		
		//bind(이벤트종류,함수)
		$('input').bind('click',function(){
			alert("bind 이벤트 발생!");
		});
		
		//h2태그를 클릭할때마다 내용 "+" 문자 추가(클릭한 대상만 추가)
		$('h2').click(function(){
			//alert("클릭!");
			//$(this).append("+");
			$(this).html(function(index,html){
				return html+"+";
			});
		});
		
		$("img").mouseover(function(){
			//alert("마우스 오버!");
			$(this).attr("src","../jq1/4.jpg");
		});
		
		$('img').mouseout(function(){
			//alert("마우스 아웃!");
			$(this).attr("src","../jq1/6.jpg");
		});
		
		// 마우스 올라갔을때 이미지 변경 -> 내려갔을때 원래 이미지 표시
		// 체이닝 기법 : 하나 이상의 이벤트를 .으로 연결하는 방법
		$('img').mouseover(function(){
			$(this).attr("src","../jq1/4.jpg");
		}).mouseout(function(){
			$(this).attr("src","../jq1/6.jpg");
		});
		
		/////////////////////////////////////////////
		
		//a태그를 누르면 a태그의 백그라운드 컬러가 파란색으로 변경됨
		$('a').click(function(event){
			$(this).css("background-color","blue");
			
			// 기본기능 - 하이퍼링크 기능을 막기(페이지이동X)
			//event.preventDefault();
			// 위와 같은 기능이지만 크롬에서는 작동x
			//event.stopPropagation(); (x)
			
			//return true //페이지이동o
			return false; //클릭이벤트 자체 - false
		});
		
		// h2태그에 "+"가 한번만 추가되도록 하는 이벤트
		$('h2').click(function(){
			$(this).append("+");
			$(this).unbind(); // 이벤트 종료
		
		});
		
	});

</script>
</head>
<body>
	<h1>WebContent/jq2/test.jsp</h1>

	<input type="button" value="버튼" onclick="alert('test');">
	
	<hr>
	
	<h2> head - 0 </h2>
	<h2> head - 1 </h2>
	<h2> head - 2 </h2>
	
	<hr>
	<h2> mouseover 이벤트 </h2>
	<img src="../jq1/6.jpg">
	
	<hr>
	
	<h2> 이벤트 동작 제어 </h2>
	
	<a href="http://www.itwillbs.co.kr">아이티윌</a>
	

</body>
</html>