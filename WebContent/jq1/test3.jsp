<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- JQuery 라이브러리 추가 -->
<script src="../js/jquery-3.5.1.js"></script>
<script type="text/javascript">

	$(function(){
		
		//$('h2').css("color","red");
		//해당 태그의 속성값을 가져옴
		var c = $('h2').css('color');
		alert("값 : "+c);
		
		//자바스크립트 배열
		var col = ["red","green","blue","pink","orange"];
		
		//index는 기본적으로 번호를 가지고있다 (0번부터 시작)
		//$('h2').css("color","red");
		$('h2').css("color",function(index){
			alert(index);
			
			return col[index];
		});
		
		// 속성을 여러개 사용
		$('h2').css({
			color:'green',
			backgroundColor:'yellow'
		});
		
		// 배경색이 노랑, 각 글자색은 배열의 값을 사용해서 모두 다르게 설정(위의 두가지 방법을 합친 형태)
		$('h2').css({
			backgroundColor:"yellow",
			//인자(index) 이름은 아무거나 써도 상관없음
			color:function(i){
				//alert(i);
				
			return col[i];
			}
		});
		
	});

</script>


</head>
<body>

  <h1>WebContent/jq1/test3.jsp</h1>

  <h2> subject - 0 </h2> 
  <h2> subject - 1 </h2>
  <h2> subject - 2 </h2>
  <!-- 늘어난 인덱스에 색을 더 주고싶다면? => 배열에 색상을 더 늘여줌 -->
  <h2> subject - 3 </h2>
  <h2> subject - 4 </h2>









</body>
</html>