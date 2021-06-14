<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.5.1.js"></script>
<script type="text/javascript">
	$(function(){
		//키보드 입력 시킬때(키보드 키에서 입력 후 손을 땔때) 실행
		$('textarea').keyup(function() {
			//alert("키보드 입력");
			var size = 200;
			var v = $(this).val().length;
			//alert("v : "+v);
			//alert(size-v); //200 - 입력한 글자수
			$('h3').html(size-v);
			
			// 글자색 변경 200자 초과인 경우 글자수의 컬러를 빨강
			if((size-v) >= 0){
				$('h3').css('color','black');
			}else{
				$('h3').css('color','red');
			}
		});//keyup
		
// 		$("input[type=submit]").click(function(){
// 			alert("클릭!");
// 		});
		
		// submit 이벤트 발생시
		$("#my_form").submit(function(){
			//이름, 비밀번호 정보를 출력
			var name = $("#my_name").val();
			var pass = $("#my_pass").val();
			//alert("이름 : "+name+"/ 비밀번호 : "+pass);
			
			// 두개의 값이 없을 때는 전송X - focus()
			if(name == ""){
				alert(" 이름을 입력하시오. ");
				$("#my_name").focus();
				return false;
			}
			
			if(pass == ""){
				alert(" 비밀번호를 입력하시오. ");
				$("#my_pass").focus();
				return false;
			}
		});
	
	}); //jq


</script>

</head>
<body>
	<h1>WebContent/jq2/test2.jsp</h1>
	
	<h2> 글자수 200자 카운트 </h2>
	<h3>200</h3>
	
	<div>
		<textarea rows="5" cols="70"></textarea>
	</div>
	
	<hr>
	
	
	<!-- name : 파라미터명 지정, id : css,JQuery에서 선택자 이름 이정 -->
	<form action="a.jsp" method="get" id="my_form">
	이름 : <input type="text" name="name" id="my_name"><br>
	비밀번호 : <input type="password" name="pass" id="my_pass"><br>
		<input type="submit" value="전달하기">
	
	
	</form>
	
	
	
</body>
</html>