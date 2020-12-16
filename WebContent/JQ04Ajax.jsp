<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
/*
	$.ajax()
	jquery 에서 사용되는 AJAX 관련 메소드로 load(),get(),post() 메소드의 기능 모두를 가지고 있다.
	그러므로 가장 활용빈도가 높다.
	별도의 인자가 존재하지 않고 , JSON 형태의 인자 하나만 사용한다.
	
	인자의 속성
		url : 요청할 서버의 경로
		type : 요청시 사용할 전송방식. get , post
		dataType : 콜백 데이터의 형식. json , xml , script , text , html 등
		error : 요청에 실패했을 때 , 콜백메솓,
		contentType : 전송시 사용 할 컨텐츠 타입 (get과 post 가 다르다)
		data : 서버로 전송 할 파리미터 , JSON 형식
 
*/
$(function(){
	/*
		해당 메소드는 문서의 로드가 끝난직후 , js 파일을 현재 문서에 로드한다.
		즉 , load() 메소드와 동일한 역할을 하고 있다.
	*/
	$.ajax({
		// 요청 할 서버의 경로 URL
		url : './common/04JsData.js',
		type : 'get',
		dataType : "script",
		// 요청성공시 콜백메소드 : 무기명함수 형태로 정의된다.
		success : function(resData){
			MyAlert("Hello"," AJAX");
		},
		// 요청실패시 콜백메소드 : 외부 함수 형태로 정의 된다.
		error : errFunc // 호출시 함수명만 명시한다.
	});
	$('#ajaxBtn').click(function(){
		$.ajax({
			url : "./common/02PrintToday.jsp",
			// 콜백 데이터 타입
			dataType : "html",
			// 요청시 전송 방식
			type : "get",
			// 요청시 전송 방식
			contentType : "text/html;charset:utf-8",
			// 파라미터. JSON 형식.
			data : {
				msg : $(this).text(),
				varStr : "$.ajax()메소드 좋아"
			},
			// 성공 , 실패시 콜백 메소드. sucFunc(매개변수) 형태로 사용하지 않는다.
			success : sucFunc,
			error : errFunc
		});
	});
});
function errFunc(){
	alert("에러발생. 디버깅하세요 !");
}
/*
	요청 성공시 호출 할 콜백메소드로 jQuery 외부에 정의되었다.
	함수형만으로 정하더라도 콜백데이터는 파라미터로 전달 받을 수 있다.
*/
function sucFunc(resData){
	alert("$.ajax()메소드 요청 성공");
	$('#ajaxDisplay').html(resData);
	
}

</script>
</head>
<body>
	<h2>$.ajax() 메소드 사용하기</h2>
	
	<button id="ajaxBtn">ajax()메소드실행하기</button>
	
	<div id="ajaxDisplay">
		ajax결과를 여기에 디스플레이
	</div>
</body>

</html>