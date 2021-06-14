<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- JQuery 라이브러리 추가 -->
<script src="../js/jquery-3.5.1.js"></script>

<!-- JQuery 사용  -->
<script type="text/javascript">
	$(document).ready(function(){
		alert("jquery 준비 완료!");
		
		//선택자 : 특정 동작을 적용하는 대상을 구분하기 위한 방법
		// 대상선택.메서드(); jquery 동작 실행
		
		// * - 요소 전체
		$('*').css('color','red');
		// 태그 - 특정 태그만 선택
		$("h1").css('color','blue');
		// id - #id값 사용 선택    -yellow		
		$("#t1").css('color','yellow');
		// class - .class값 사용 선택  -green
		$(".t2").css('color','green');
		
		// 속성탐색 선택자 "태그[속성=값]"
		// 특정요소에 값을 저장
// 		$("input").val("testValue");
		$("input[type=text]").val("값 변경");
		$("input[type=password]").val("1234");
		// "태그[속성^=값]" : 해당 값으로 시작하는 태그
		$("input[type^=t]").val("값 변경222");
		// "태그[속성$=값]" : 해당 값으로 끝나는 태그
		// "태그[속성~=값]" : 해당 단어를 포함하는 태그
		
		
		// 테이블 배경색 설정
// 		$("tr").css("background","yellow");
		
		// 위치탐색 선택자(처음,끝, 홀수,짝수)
		//"태그:odd" - 홀수
		//"태그:even" - 짝수
		//"태그:first" - 처음
		//"태그:last" - 끝
		
		// 홀수 - yellow, 짝수 - orange
		// table컬럼의 시작은 (index[0]) 0번이기 때문에 짝수인 오렌지색으로 출력
		$("tr:odd").css("background","yellow");
		$("tr:even").css("background","orange");
		// 제목행 배경색 - pink //만일 순서가 "tr:odd,even"선택자의 위에서 작성된다면 핑크색으로 출력되지 않음(출력 순서가 매우 중요!)
		$("tr:first").css("background","pink");
		
		
		
		
	});
</script>

</head>
<body>

  <h1>WebContent/jq1/test2.jsp</h1>
	
	<h1 id="t1"> 제목! </h1>
	<h1 class="t2"> 제목@ </h1>
	안녕하세요
	<hr>
	아이디 : <input type="text"><br>
	비밀번호 : <input type="password"><br>	
	
	<hr><hr>
	<table>
	  <tr>
	    <td>이름</td><td>혈액형</td><td>지역</td>
	  </tr>
	  <tr>
	    <td>홍학생</td><td>A</td><td>부산</td>
	  </tr>
	  <tr>
	    <td>김학생</td><td>B</td><td>서울</td>
	  </tr>
	  <tr>
	    <td>박학생</td><td>O</td><td>대구</td>
	  </tr>
	  <tr>
	    <td>정학생</td><td>AB</td><td>제주</td>
	  </tr>
	</table>




</body>
</html>