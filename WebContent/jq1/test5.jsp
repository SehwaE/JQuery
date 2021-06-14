<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <script  src="https://code.jquery.com/jquery-3.5.1.js"  integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="  crossorigin="anonymous"></script> 
  <script type="text/javascript">
  	$(function(){
  		
  		// html(), text()
  		// => 해당 대상의 텍스트 정보를 가져옴
  		
  		// 해당 태그중 가장 먼저 만나는 태그의 값 1개 가져옴
  		var ht = $('h2').html();
  		alert(ht);
  		
  		// 해당 태그의 모든 데이터를 가져옴
  		var tx = $('h2').text();
  		alert(tx);

  		// 해당 요소에 값을 지정 => 전달되는 값으로 초기화
  		//$('div').html("Hello");
  		//$('div').text("Hello");
  		
  		// 데이터가 태그일 경우 실제로 태그를 적용가능 => <h3>크기의 Hello 출력됨
  		//$('div').html("<h3>Hello</h3>");
  		// 데이터가 태그일 경우 태그 문자 그대로 출력(적용X) => <h3>Hello<h3> 출력됨
  		//$('div').text("<h3>Hello<h3>");
  		
  		// 해당 요소의 인덱스와 기존의 데이터값을 사용
  		$('div').html(function(index,oldHtml){
  			//alert("index : "+index+", oldHtml : "+oldHtml);
  			
  			return "<h3>"+index+":"+oldHtml+"!!</h3>";
  		});
  		
  		
  		
  		
  		
  		
  		
  	});

  	</script>
</head>
<body>
  <h1>WebContent/jq1/test5.jsp</h1>

  <h2> head - 0 </h2>
  <h2> head - 1 </h2>
  <h2> head - 2 </h2>

	<hr>
  
  <div> div - 0 </div>
  <div> div - 1 </div>
  <div> div - 2 </div>



</body>
</html>