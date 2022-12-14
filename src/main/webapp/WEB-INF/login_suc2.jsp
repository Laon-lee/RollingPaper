<%@page import="com.goodee.vo.LoginVO"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
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
		grid-template-rows: 80px 190px 20px 405px 175px;
		grid-template-areas : ". . ." ". header ." ". . ." ". main ." ". . .";
		gap: 0px;
		background-color:rgb(235,233,254);
		height: 100%;
		justify-content: center;
	}
	header{
		animation: fadeinleft 1.5s ease-out;
		
		grid-area: header;
		font-family: 'MabinogiClassicR';
		text-align: center;
	}
	main{
		animation: fadeinleft2 2.5s ease-out;
		grid-area: main;
		text-align: center;
	
	}
	button{
		width:470px;
		height:40px;
		border:none;
		background-color: rgb(255,214,242);
		border-radius:10px;
		font-family: 'MabinogiClassicR';
		font-size:17px;
		cursor:pointer;
		margin-top:10px;
	}
	textarea{
		border-radius:10px;
		outline:none;
		padding: 15px 20px 5px 20px;
		font-size:17px;
	}
	input{
		border-radius: 4px;
		outline:none;
		border: 1px solid black;
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
	@keyframes fadeinleft2{
		0% {
      		opacity: 0;
     		transform: translateX(-60px);
     
  		}
  		50%{
  			opacity: 0;
     		transform: translateX(-60px);
  		}
   		100% {
      		opacity: 1;
      		transform: translateX(0px);
   		}
	}
	span{
		font-weight:900;
		font-size:20px;
		font-family: 'MabinogiClassicR';
	}
	#quizh2{
		margin-bottom: 5px;
		font-family: 'MabinogiClassicR';
	}
	#result {
    	font-size: 12px;
	}
	
	#quiz_result {
		color: #ff1b1b;
    	margin: 10px;
    	font-size: 12px;
	}
</style>
</head>
<body>
	<div class="container">
		<header>
			<h1>${loginVO.nick}???</h1>
    		<h1>???????????????!</h1>
    		<h3>6?????? ?????? ?????? ????????? ?????????????????? ???????????? ?????? <br>??????????????? ?????? ???????????? ???????????????<br>
    		100??? ?????? ???????????? ???????????? ????????? ????????? ?????? ?????? ?????? ??? ????????????!&nbsp;(??????)</h3>
  		</header>
   		<main>
   			<div id="result">?????? ???????????? ????????? : 0</div>
   			
    		<form action="${pageContext.request.contextPath}/saveContentController">
    		 	<textarea name="content" id="content" cols="45" rows="14" placeholder="????????? ???????????????!" onkeyup="calc1()" onkeypress="calc1()"></textarea><br>
    		 	<h2 id="quizh2">????????? ????????? ?????? ????????????!&nbsp;(??????)</h2>
    		 	<div id="quiz_result"></div>
    		 	<textarea name="quiz" id="quiz" cols="45" rows="3" onkeyup="calc2()" onkeypress="calc2()"></textarea><br>
    		 	<div>
    		 	<span>??????</span>
    		 	<input type="text" id="answer" name="answer"/><br />
    		 	</div>
    			<input type="hidden" value="${loginVO.num}" name="num">
    			
    			
    			<button>????????? ?????? ??????????????? ???????????????.(??????)</button>
   			</form>
   		</main>
    </div>
    
    <script>
    let result = document.getElementById("result");
    let content = document.getElementById("content");
    let quiz_result = document.getElementById("quiz_result");
    
    	function calc1() {
    		result.innerHTML =
    			"?????? ???????????? ????????? : "+ content.value.length;
    	}
    	function calc2() {
	    	if (content.value.length >= 100) {
	    		quiz_result.innerHTML = "????????? ???????????? ??? ?????????!";
	    	}else {
	    		quiz_result.innerHTML = "???????????? ????????? ????????? ???????????? ??? ?????????..??????";
	    	}
    	}
    </script>
</body>
</html>