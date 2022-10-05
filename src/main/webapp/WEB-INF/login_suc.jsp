<%@page import="java.util.List"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@page import="com.goodee.vo.LoginVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://kit.fontawesome.com/4b992414b9.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="js/jquery-3.6.1.min.js"></script>
<title>Document</title>
<style>
@font-face {
   font-family: 'KOTRAHOPE';
   src:
      url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2110@1.0/KOTRAHOPE.woff2')
      format('woff2');
   font-weight: normal;
   font-style: normal;
}
@font-face {
      font-family: 'MabinogiClassicR';
      src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2207-01@1.0/MabinogiClassicR.woff2') format('woff2');
      font-weight: normal;
      font-style: normal;
}

div {
   font-family: 'KOTRAHOPE';
}
h2{
	margin:: 10px 0 15px 5px;
}
body {
    background: url(./image/배경2.png) no-repeat;
    background-size: 100% 100%;
    width: 100vw;
    height: 100vh;
    box-sizing: border-box;
    overflow-x: hidden;
    overflow-y: hidden;
    margin:0;
    display: flex;
    justify-content:center;
    align-items:center;
    position: relative;
}

h1 {
   text-align: center;
   font-family: 'KOTRAHOPE';
   font-size: 3vw;
   font-weight: 100;
}
#title{
   grid-area: head;
}
#title h1{
	margin: 10px 0 20px 0;
}
#container{
   width:90vw;
   height:89vh;
   display: grid;
   grid-template-columns: 1fr 1fr 1fr 1fr 1fr 1fr 1fr;
   grid-template-rows: 1fr 1fr 1fr ;
   grid-template-areas: "post1 post2 post3 head post4 post5 post6"
                  "post7 post8 post9 post10 post11 post12 post13"
                  "post14 post15 post16 post17 post18 post19 post20";
                   
   gap:0px;
}

.inactive {
   animation: none;
}

.active {
    animation: center 1s ease-out forwards;
}

.mouseup {
   transform: rotateY(180deg);
}

.content {
   background-size: contain;
   background-repeat: no-repeat;
   overflow: hidden;
   display: inline-block;
   /* padding: 30px; */
   text-overflow: ellipsis;
   text-align: center;
}


@keyframes center{
   0%{
        position:absolute;
        width:25vw;
      	height:50vh;
        left:37%;
      	top:-22%;
      
   }
   100%{
      position:absolute;
      width:25vw;
      height:50vh;
      transform:translateZ(0);
      left: 37%;
      top: 22%;
      
    
   }
}


/* This container is needed to position the front and back side */
.flip-card-inner {
   position: relative;
   width: 100%;
   height: 100%;
   text-align: center;
   transition: transform 0.8s;
   transform-style: preserve-3d;
}

/* Do an horizontal flip when you move the mouse over the flip box container */
/* .flip-card:hover .flip-card-inner { */
/*    transform: rotateY(180deg); */
/* } */

/* Position the front and back side */
.flip-card-front, .flip-card-back {
   position: absolute;
   width: 100%;
   height: 100%;
}

/* Style the front side (fallback if image is missing) */
.flip-card-front {
   color: black;
   backface-visibility: hidden;
   z-index:0;
}
.flip-card-front p {
   font-size:1.6vw;
   padding:15%;
   padding-right: 20%;
   word-break:keep-all;
}
/* Style the back side */
.flip-card-back {
   color: black;
   transform: rotateY(180deg);
   backface-visibility: hidden;
}
.flip-card-back p{
   font-size:0.9vw;
   padding:23% 10%;
   text-overflow:ellipsis; 
   overflow: scroll;
   white-space: nowrap;
   width:80%;
   height:100%;
  
}
.content.active p {
    margin: 20% 0 0 -5%;
    font-size: 1.5vw;
    width: 70%;
    height: 51%;
    padding: 0;
    white-space: normal;
    animation: fadeInLeft 2s ease-out;
    display: inline-block;
}

user agent stylesheet
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}
.content {
    background-size: contain;
    background-repeat: no-repeat;
    overflow: hidden;
    display: inline-block;
    /* padding: 30px; */
    text-overflow: ellipsis;
    text-align: center;
}
div {
    font-family: 'KOTRAHOPE';
}
.flip-card-back {
    color: black;
    transform: rotateY(180deg);
    backface-visibility: hidden;
}
.flip-card-inner {
    position: relative;
    width: 100%;
    height: 100%;
    text-align: center;
    transition: transform 0.8s;
    transform-style: preserve-3d;
    z-index:0;
}
::-webkit-scrollbar {
    display: none !important;
}
0% {
    opacity: 0;
    transform: translate(-20px,0px);
}
100% {
    opacity: 1;
    transform: translate(0px,0px);
}
.content.active span{
	position:absolute;
	bottom:15%;
	left:20%;
}
.sp{
	font-size:1.3vw;
 	z-index:50;
 	color:black;
 	cursor:pointer;
 }
 
 .content.active span:hover{
	animation: bigger 1s forwards;
}
i{
	font-size: 2vw;
}

@keyframes bigger{
	0%{
		font-size:1.3vw;
	}
	100%{
		font-size:1.5vw;
		color:red;
	}
}
@keyframes fadeInLeft {
   0% {
      opacity: 0;
      transform: translate(-20px,0px);
     
   }
   100% {
      opacity: 1;
      transform: translate(0px,0px);
   }
}   

.flip-card:nth-child(2) .content {
   background-image: url(./image/포스트잇1.png);
   background-size:100% 100%;
   transform: rotateZ(-25deg);
   width:80%;
   height:85%;
}

.flip-card:nth-child(4) .content {
   background-image: url(./image/포스트잇2.png);
    background-size: 100% 100%;
    transform: rotateZ(20deg);
    width: 70%;
    height: 65%;
    padding: 2% 2% 5% 4%;
    box-sizing: border-box;
}
.flip-card:nth-child(4) span {
    padding: 2% 2% 5% 4%;
}
.flip-card:nth-child(6) .content {
   background-image: url(./image/포스트잇3.png);
   background-size:100% 100%;
   transform: rotateZ(0deg);
   width:70%;
   height:65%;
}

.flip-card:nth-child(8) .content {
   background-image: url(./image/포스트잇5.png);
   background-size:100% 100%;
   transform: rotateZ(-15deg);
   width:80%;
   height:70%;
}

.flip-card:nth-child(10) .content {
   background-image: url(./image/포스트잇12.png);
   background-size:100% 100%;
   transform: rotateZ(5deg);
   width:83%;
   height:75%;
   
}

.flip-card:nth-child(12) .content {
   background-image: url(./image/포스트잇6.png);
   background-size:100% 100%;
   transform: rotateZ(10deg);
   width:90%;
   height:80%;
}

.flip-card:nth-child(14) .content {
   background-image: url(./image/포스트잇7.png);
   background-size:100% 100%;
   transform: rotateZ(30deg);
   width:90%;
   height:100%;
}

.flip-card:nth-child(16) .content {
   background-image: url(./image/포스트잇4.png);
   background-size:100% 100%;
   width:86%;
   height:90%;
}

.flip-card:nth-child(18) .content {
   background-image: url(./image/포스트잇9.png);
   background-size:100% 100%;
   transform: rotateZ(-15deg);
   width:80%;
   height:80%;
}

.flip-card:nth-child(20) .content {
   background-image: url(./image/포스트잇10.png);
   background-size:100% 100%;
   width:80%;
   height:85%;
}

.flip-card:nth-child(22) .content {
   background-image: url(./image/포스트잇3.png);
   background-size:100% 100%;
   transform: rotateZ(30deg);
   width:85%;
   height:85%;
}

.flip-card:nth-child(24) .content {
   background-image: url(./image/포스트잇8.png);
   background-size:100% 100%;
   width:80%;
   height:77%;
}

.flip-card:nth-child(26) .content {
   background-image: url(./image/포스트잇4.png);
   background-size:100% 100%;
   width:90%;
   height:85%;
   transform: rotateZ(-20deg);
}

.flip-card:nth-child(28) .content {
   background-image: url(./image/포스트잇14.png);
   background-size:100% 100%;
   transform: rotateZ(-30deg);
   width:80%;
   height:90%;
}
.flip-card:nth-child(28) span {
    padding: 0 0 2% 8%;
}
.flip-card:nth-child(30) .content {
   background-image: url(./image/포스트잇15.png);
   background-size:100% 100%;
   transform: rotateZ(-15deg);
   width:95%;
   height:90%;
}

.flip-card:nth-child(32) .content {
   background-image: url(./image/포스트잇13.png);
   background-size:100% 100%;
    width:90%;
   height:90%;
}

.flip-card:nth-child(34) .content {
   background-image: url(./image/포스트잇9.png);
   background-size:100% 100%;
   transform: rotateZ(30deg);
   width:80%;
   height:80%;
}

.flip-card:nth-child(36) .content {
   background-image: url(./image/포스트잇5.png);
   background-size:100% 100%;
   transform: rotateZ(-30deg);
   width:75%;
   height:75%;
}

.flip-card:nth-child(38) .content {
   background-image: url(./image/포스트잇1.png);
   background-size:100% 100%;
   transform: rotateZ(10deg);
   width:90%;
   height:80%;
}

.flip-card:nth-child(40) .content {
   background-image: url(./image/포스트잇11.png);
   background-size:100% 100%;
   transform: rotateZ(10deg);
   width:80%;
   height:80%;
}

.flip-card:nth-child(2) {
   grid-area: post1;
}


.flip-card:nth-child(4) {
   grid-area: post2;
}

.flip-card:nth-child(6) {
   grid-area: post3;
}

.flip-card:nth-child(8) {
   grid-area: post4;
}

.flip-card:nth-child(10) {
   grid-area: post5;
}

.flip-card:nth-child(12) {
   grid-area: post6;
}

.flip-card:nth-child(14) {
   grid-area: post7;
}

.flip-card:nth-child(16) {
   grid-area: post8;
}

.flip-card:nth-child(18) {
   grid-area: post9;
}

.flip-card:nth-child(20) {
   grid-area: post10;
}

.flip-card:nth-child(22) {
   grid-area: post11;
}

.flip-card:nth-child(24) {
   grid-area: post12;
}

.flip-card:nth-child(26) {
   grid-area: post13;
}

.flip-card:nth-child(28) {
   grid-area: post14;
}

.flip-card:nth-child(30) {
   grid-area: post15;
}

.flip-card:nth-child(32) {
   grid-area: post16;
}

.flip-card:nth-child(34) {
   grid-area: post17;
}

.flip-card:nth-child(36) {
   grid-area: post18;
}

.flip-card:nth-child(38) {
   grid-area: post19;
}

.flip-card:nth-child(40) {
   grid-area: post20;
}
.flip-card {
   width: 90%;
   height:84%;
   perspective: 1000px;

}
.plz{
   position:absolute;
   z-index: 10;
}
.modal {
      position: fixed;
      top: 0;
      right: 0;
      bottom: 0;
      left: 0;
      padding: 1.5rem;
      opacity: 0.9;
      justify-content: center;
      align-items: center;
      display: none;
      border-radius: 20px;
      background-color: #ffcbe2;
      z-index:100;
    }
.modal-inner1 {
      max-width: 32rem;
      padding: 1.5rem;
      border-radius: 2px;
      background-color: rgb(255 150 186);
      box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16);
      border-radius: 20px;
      z-index:100;

    }
    
    
.fadein{
     animation: fadein 1.2s;
}
@keyframes fadein{
   0%{
      opacity: 0;
   }
   100%{
      opacity:0.9;
   }
}
 ::-webkit-scrollbar {
        display: none !important;
    }
	.btn{
/* 		border-radius: 4px; */
		font-family: 'MabinogiClassicR';
/* 		border: none; */
/* 		height:27px; */
/* 		background-color: #B9FFBE; */
		  border-radius: 50px;
	      border: none;
	      background-color: bisque;
	      font-weight: 700;
	      height: 40px;
	      font-size: 20px;
	      margin-top:20px;
	      cursor:pointer;
	}
	#quiz_area {
		display: flex;
	   	flex-direction: column;
	}
	#quiz{
			border-radius: 4px;
			outline:none;
			border: none;
			height:25px;
	}
    input {
      height: 20px;
      outline: none;
      border: none;
    }

</style>
</head>
<body>  
   <div id="container">
      <c:forEach var="item" items="${content}" >
         <div class="modal" >
            <div class="modal-inner1">
               <h1>Quiz를 풀어주세요!</h1>
               <h2>문제) <span class="quiz1">${item.quiz}</span></h2>
               <div id="quiz_area">
		          <input type="text" id="quiz" name="quiz" class="quiz" required />
		          <button class="btn">제출</button>
	           </div>
            </div>
         </div>
         <div class="flip-card">
            <div class="flip-card-inner">
               <div class="flip-card-front">
                  <div class="content inactive"><p>${item.nick}</p></div>
               </div>
               <div class="flip-card-back">
                  <div class="content inactive"><p>${item.content}</p><br/>
                  <span class="sp">포스트잇 다시 붙히기 <i class="fa-regular fa-face-smile"></i><br>여기 2초동안 커서를 올려주세요!</span>
                  </div>
               </div>
            </div>
         </div>
      </c:forEach>
      <div id="title">
            <h1>${loginVO.nick}님</h1>
            <h1>환영합니다!</h1>
         </div>
   </div>
<script type="text/javascript">
      let flip_card = document.querySelectorAll(".flip-card");
      let quiz = document.querySelectorAll(".quiz");
      let anwser = document.querySelectorAll(".anwser");
      let modal = document.querySelectorAll(".modal");
      let flip_card_front = document.querySelectorAll(".flip-card-front");
      let flip_card_back = document.querySelectorAll(".flip-card-back");
      
      let flag = true;
      flip_card.forEach(function(element) { 	
         //포스트잇 눌렀을 때	
    	  element.firstElementChild.addEventListener("click",function(){
         			if(flag){
						// 모달창 띄우는 로직
						// flip-card-back, p태그
               			if(this.children.item(1).firstElementChild.firstElementChild.innerText.length>=100){
						// .modal
                   		this.parentNode.previousElementSibling.style.display="flex";
                   		// modal - 애니메이션
                    	this.parentNode.previousElementSibling.classList.add("fadein");	
                   		
              			}else {
              				
              				if(element.firstElementChild.classList.contains("mouseup")){
                				// 중앙에 오는 로직
            				   	// flip-card-front
            						this.children.item(0).firstElementChild.classList.add("active");
            					// flip-card-back
            						this.children.item(1).firstElementChild.classList.add("active");
            					// flip-card
            						element.classList.add("plz");
              				}
              			}        				
               				flag = false;
           	 		}
         	});
              
         // 호버 -> 카드를 뒤집는 로직
        	element.addEventListener("mouseenter",function() {
           		if(flag){
           			element.firstElementChild.classList.add("mouseup"); //flip-card-inner
           		}
       		});
       
        	element.addEventListener("mouseleave",function() {
           		if(flag){
           			element.firstElementChild.classList.remove("mouseup"); //flip-card-inner
           		}
          	});
        	
 			
      });
      
      
      var answercount = 0;
      // 정답이 맞으면 모달이 꺼지고 클릭한 포스트잇이 중앙에 오는 로직 틀리면 얼랏창
      for (let index = 0; index < document.getElementsByClassName("btn").length; index++) {
			document.getElementsByClassName("btn")[index].addEventListener("click",function(e){
				e.preventDefault();
				
				let sp = document.getElementsByClassName("quiz1")[index].innerHTML;
				
				 $.ajax({
					url : "${pageContext.request.contextPath}/fetch",
					type : "POST",
					data: JSON.stringify({quiz: sp}),
					contentType : "application/json; charset=utf-8",
					dataType : "json",
					success : function(data) {
						if(quiz[index].value
								== data.answer ){
									modal[index].style.display="none";
									modal[index].classList.remove("fadein");
									
									alert("정답이에요!!");
									
								// 중앙에 오는 로직
							   	// flip-card-front
									flip_card_front[index].firstElementChild.classList.add("active");
								// flip-card-back
									flip_card_back[index].firstElementChild.classList.add("active");
								// flip-card
									flip_card[index].classList.add("plz");
								
									answercount = 0;
									
								}else{
									
									if(answercount==3){
										alert("후.. 봐드릴게요!")
									}else{
										alert("땡! 틀렸습니다! 남은기회: "+(3-answercount)+"번");
									}
									answercount++
								} 
					},
					error : function() {
						alert("에러 발생");
					}
				}); 
				
				
				/* 
				 fetch("${pageContext.request.contextPath}/fetch",{
					method : "POST",
					headers : {"Content-Type" : "application/json"},
					body : JSON.stringify({quiz: sp})
				}).then(response => response.json())
				.then(data => {
					if(quiz[index].value
					== data.answer ){
						modal[index].style.display="none";
						modal[index].classList.remove("fadein");
						
						alert("정답이에요!!");
						
					// 중앙에 오는 로직
				   	// flip-card-front
						flip_card_front[index].firstElementChild.classList.add("active");
					// flip-card-back
						flip_card_back[index].firstElementChild.classList.add("active");
					// flip-card
						flip_card[index].classList.add("plz");
					
						answercount = 0;
						
					}else{
						
						if(answercount==3){
							alert("후.. 봐드릴게요!")
						}else{
							alert("땡! 틀렸습니다! 남은기회: "+(3-answercount)+"번");
						}
						answercount++
					} 
				}).catch(error => {
					console.log("error");
				});	  */
			 })
		 };
      
		 //호버 2초 후 사라짐 효과
		 var time = 0; 
		 var interval; 
		 
		 for (let index = 0; index < document.getElementsByClassName("sp").length; index++) {
			 document.getElementsByClassName("sp")[index].addEventListener("mouseenter",function(){
				 interval = setInterval(function () {
						time = time + 1;
						console.log(time);
						if (time == 2) {					
							flip_card_front[index].firstElementChild.classList.remove("active");  // front content
							flip_card_back[index].firstElementChild.classList.remove("active"); // back content
							flip_card[index].classList.remove("plz"); // flip-card
							flag=true;
							stop(); 	 
						}
					}, 1000); 	
			 });
			 document.getElementsByClassName("sp")[index].addEventListener("mouseleave",stop)
		 };	
		 function stop(){ 
			  clearInterval(interval); 
			  time = 0;
		} 
		 

   </script>
</body>
</html>