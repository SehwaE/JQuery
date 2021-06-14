<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#ani{
	 width:50px;
	 height:50px;
	 background-color:orange;
}

</style>
<script src="../js/jquery-3.5.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		//hide(), show() toggle()
		//slideDown(),slideUp(),slideToggle()
		//fadeIn(), fadeOut(), fadeToggle()
		
			//hide() : 'h2' 태그를 누르면 화면에서 사라지는 효과 
			//next().toggle() : 'h2'를 기준으로 아래영역글이 나타나는/사라지는 효과 
			//next().toggle('fast'/'slow') : 아래영역글이 빠르게/느리게 나타나는/사라지는 효과
			
		
		$('h2').click(function(){
/* 			$(this).next().toggle('fast',function(){
				//콜백함수 : 적용되는 효과를 100% 실행하고나서 동작하는 함수 (현재 토글이 실행되고 끝나야 실행하는 함수)
				alert("효과 끝");
			}); */
			
			//태그를 클릭시 천천히 fadeIn, fadeOut 되는 효과
			$(this).next().fadeToggle('slow');
			
		});
		
		
		// animate() 효과
		// $(대상).animate(속성,속도,콜백함수);
		
		 $('#ani').click(function(){
			var w = $(this).css('width');
			var h = $(this).css('height');
			
			$(this).animate({
				width: parseInt(w)+50,
				height: parseInt(h)+50
			},'slow');
		 });
		
		
	});
	
</script>

</head>
<body>
  <h1>WebContent/jq2/test3.jsp</h1>
  <h1> 이벤트 효과 </h1>
	
	<h2> 열기 / 닫기 1 </h2>
	<div>
		<h2>제목1</h2>
		<p>내용1</p>
	</div>
	
	
	<h2> 열기 / 닫기 2 </h2>
	<div>
		<h2>제목2</h2>
		<p>내용2</p>
	</div>
	
	<hr>
	
	
	<div id="ani"></div>
	
	
	
	
	
	
</body>
</html>