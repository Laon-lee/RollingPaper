<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	@font-face {
      font-family: 'MabinogiClassicR';
      src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2207-01@1.0/MabinogiClassicR.woff2') format('woff2');
      font-weight: normal;
      font-style: normal;
    }
    body{
    	margin:0px;
		padding:0px;
		background-color:rgb(235,233,254);
    }
	.container{
		margin:0px;
		padding:0px;	
		display:grid;
		grid-template-columns: 500px 1fr 500px;
		grid-template-rows: 335px 1fr 355px;
		grid-template-areas : ". . ." ". main ." ". link .";
		gap: 0px;
		height: 100vh;
	}
	
	main{
		animation: fadeinleft 2s ease-out;
		grid-area: main;
		font-family: 'MabinogiClassicR';
	}
	
	a {
		animation: fadeinleft 2.5s ease-out;
		grid-area: link;
		font-family: 'MabinogiClassicR';
		text-decoration: none;
		width: 125px;
	    height: 20px;
	    padding: 10px 0px;
	}
	
	
	@keyframes fadeinleft{
		0% {
      		opacity: 0;
     		transform: translateX(-60px);
     
  		}
   		100% {
      		opacity: 1;
      		transform: translateX(0px);
   		}
	}
	
	</style>
</head>
<body>
	<div class="container">
		<main>
			<h1>저장 성공!</h1>
			<h2>작성해주셔서 너무 감사드립니다.</h2>
			<h3>Goodee Acamemy 52기 여러분들!! 다같이 열심히 해서 <br>모두다 성공하시길 바랄게요!</h3>
		</main>
		
		<a href="${pageContext.request.contextPath}">Main으로 돌아가기</a>
	</div>
</body>
</html>