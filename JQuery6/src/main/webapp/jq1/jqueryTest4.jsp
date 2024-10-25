<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.1.js" 
integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<script type="text/javascript">
	$(function(){
		alert("제이쿼리 실행 test4");
		//css() : 요소의 스타일시트 속성을 변경 
		$("img").css("css","100"); // img 태그에 css 함수를 통해서 width 속성을 100으로 한다.
		
		// attr() : 요소의 속성의 정보를 접근
		$("img").attr("width","150");
		
		// img태그의 가로길이 출력
	
		var w =	$('img').attr("width"); // var(변수타입int string 통합) w(임의지정) = img태그에 attr 함수를 width 속성을 나타냄
		alert("width : "+w) // 알림창에 (width 라쓰고 w 값을 불러온다.)
		
		// img태그의 border(테두리) 속성의 값을 5 설정
		$("img").attr("border","5"); // attr = attributes
		
		// border 속성값을 5, 10, 15 설정

		$("img").attr("border",function(idx,value){
			
			// alert(idx+"/"value);
			return (idx+1) *5;
		});
		
		// img 태그의 세로길이 height 50,100,150 / border 0, 5, 10
		// => 한번에 속성 변경
		
	
		$("img").attr({
			"height" : function(idx){
				return (idx+1) *50;
			},
			"border" : function(idx){
				return (idx+1) *5;
			}
		});
	
		
		
		
	}); // 제이쿼리 끝
</script>
</head>
<body>

	<h1>/jq1/jqueryTest4.jsp</h1>

	<img src="cat.jpg" >
	<img src="field.jpg">
	<img src="fruits.jpg">




</body>
</html>