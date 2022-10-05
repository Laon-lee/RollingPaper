<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
  <title>Document</title>

  <style>
    @font-face {
      font-family: 'MabinogiClassicR';
      src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2207-01@1.0/MabinogiClassicR.woff2') format('woff2');
      font-weight: normal;
      font-style: normal;
    }

    @font-face {
      font-family: 'RixInooAriDuriR';
      src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2207-01@1.0/RixInooAriDuriR.woff2') format('woff2');
      font-weight: normal;
      font-style: normal;
    }

    #container {
    margin: 0;
    padding: 0;
    display: flex;
    width: 100%;
    height: 94vh;
    background-image: url(image/teacher.png);
    background-size: 640px 450px;
    overflow-x: hidden;
    overflow-y: hidden;
    }
	#intro1{
	  justify-items: center;
      align-items: center;
      display: block;
      margin-left: auto;
      margin-right: auto;
      margin-top: 22%;
      width: 30vw;
      height: 100px;
      border-radius: 15px;
      background-color: lightpink;
      border: none;
      font-size: 40px;
      font-family: 'RixInooAriDuriR';
      
	}
	
	.bounce-in-top {
		-webkit-animation: bounce-in-top 1.1s both;
		        animation: bounce-in-top 1.1s both;
	}
	
	#intro1:hover {
	  background-color: aqua;
	}
	
    #intro2 {
      justify-items: center;
      align-items: center;
      display: block;
      margin-left: auto;
      margin-right: auto;
      margin-top: 22%;
      width: 30vw;
      height: 100px;
      border-radius: 15px;
      background-color: aqua;
      border: none;
      font-size: 40px;
      font-family: 'RixInooAriDuriR';
    }
    

    #intro2:hover {
	  background-color: lightpink;
	}

    #formdiv {
      display: flex;
      flex-direction: column;
    }
    #form1{
      font-family: 'MabinogiClassicR';
      
    }
    input {
      height: 20px;
      outline: none;
      border: none;
    }
	.who{
		line-height:18px;
	}
    #formbutton {
      border-radius: 50px;
      border: none;
      background-color: bisque;
      font-weight: 700;
      height: 40px;
      font-size: 20px;
      margin-top:20px;
    }

    .lb {
      width: 300px;
      height: 25px;
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
      background-color: cornflowerblue;
    }
	.login{
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
      background-color: cornflowerblue;
	}
    #modal-inner1 {
      max-width: 32rem;
      padding: 1.5rem;
      border-radius: 2px;
      background-color: rgb(196,182,245);
      box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16);
      border-radius: 20px;

    }
    #modal-inner2 {
      max-width: 32rem;
      padding: 1.5rem;
      border-radius: 2px;
      background-color: rgb(196,182,245);
      box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16);
      border-radius: 20px;

    }


@-webkit-keyframes bounce-in-top {
  0% {
    -webkit-transform: translateY(-500px);
            transform: translateY(-500px);
    -webkit-animation-timing-function: ease-in;
            animation-timing-function: ease-in;
    opacity: 0;
  }
  38% {
    -webkit-transform: translateY(0);
            transform: translateY(0);
    -webkit-animation-timing-function: ease-out;
            animation-timing-function: ease-out;
    opacity: 1;
  }
  55% {
    -webkit-transform: translateY(-65px);
            transform: translateY(-65px);
    -webkit-animation-timing-function: ease-in;
            animation-timing-function: ease-in;
  }
  72% {
    -webkit-transform: translateY(0);
            transform: translateY(0);
    -webkit-animation-timing-function: ease-out;
            animation-timing-function: ease-out;
  }
  81% {
    -webkit-transform: translateY(-28px);
            transform: translateY(-28px);
    -webkit-animation-timing-function: ease-in;
            animation-timing-function: ease-in;
  }
  90% {
    -webkit-transform: translateY(0);
            transform: translateY(0);
    -webkit-animation-timing-function: ease-out;
            animation-timing-function: ease-out;
  }
  95% {
    -webkit-transform: translateY(-8px);
            transform: translateY(-8px);
    -webkit-animation-timing-function: ease-in;
            animation-timing-function: ease-in;
  }
  100% {
    -webkit-transform: translateY(0);
            transform: translateY(0);
    -webkit-animation-timing-function: ease-out;
            animation-timing-function: ease-out;
  }
}
@keyframes bounce-in-top {
  0% {
    -webkit-transform: translateY(-500px);
            transform: translateY(-500px);
    -webkit-animation-timing-function: ease-in;
            animation-timing-function: ease-in;
    opacity: 0;
  }
  38% {
    -webkit-transform: translateY(0);
            transform: translateY(0);
    -webkit-animation-timing-function: ease-out;
            animation-timing-function: ease-out;
    opacity: 1;
  }
  55% {
    -webkit-transform: translateY(-65px);
            transform: translateY(-65px);
    -webkit-animation-timing-function: ease-in;
            animation-timing-function: ease-in;
  }
  72% {
    -webkit-transform: translateY(0);
            transform: translateY(0);
    -webkit-animation-timing-function: ease-out;
            animation-timing-function: ease-out;
  }
  81% {
    -webkit-transform: translateY(-28px);
            transform: translateY(-28px);
    -webkit-animation-timing-function: ease-in;
            animation-timing-function: ease-in;
  }
  90% {
    -webkit-transform: translateY(0);
            transform: translateY(0);
    -webkit-animation-timing-function: ease-out;
            animation-timing-function: ease-out;
  }
  95% {
    -webkit-transform: translateY(-8px);
            transform: translateY(-8px);
    -webkit-animation-timing-function: ease-in;
            animation-timing-function: ease-in;
  }
  100% {
    -webkit-transform: translateY(0);
            transform: translateY(0);
    -webkit-animation-timing-function: ease-out;
            animation-timing-function: ease-out;
  }
}

    
    
   
@-webkit-keyframes text-pop-up-top {
  0% {
    -webkit-transform: translateY(0);
            transform: translateY(0);
    -webkit-transform-origin: 50% 50%;
            transform-origin: 50% 50%;
    text-shadow: none;
  }
  100% {
    -webkit-transform: translateY(-50px);
            transform: translateY(-50px);
    -webkit-transform-origin: 50% 50%;
            transform-origin: 50% 50%;
    text-shadow: 0 1px 0 #cccccc, 0 2px 0 #cccccc, 0 3px 0 #cccccc, 0 4px 0 #cccccc, 0 5px 0 #cccccc, 0 6px 0 #cccccc, 0 7px 0 #cccccc, 0 8px 0 #cccccc, 0 9px 0 #cccccc, 0 50px 30px rgba(0, 0, 0, 0.3);
  }
}
@keyframes text-pop-up-top {
  0% {
    -webkit-transform: translateY(0);
            transform: translateY(0);
    -webkit-transform-origin: 50% 50%;
            transform-origin: 50% 50%;
    text-shadow: none;
  }
  100% {
    -webkit-transform: translateY(-50px);
            transform: translateY(-50px);
    -webkit-transform-origin: 50% 50%;
            transform-origin: 50% 50%;
    text-shadow: 0 1px 0 #cccccc, 0 2px 0 #cccccc, 0 3px 0 #cccccc, 0 4px 0 #cccccc, 0 5px 0 #cccccc, 0 6px 0 #cccccc, 0 7px 0 #cccccc, 0 8px 0 #cccccc, 0 9px 0 #cccccc, 0 50px 30px rgba(0, 0, 0, 0.3);
  }
}

.who_input {
    height: 13px;
    }
    
  </style>
</head>
<body>
  <div id="container">
    <button id="intro1" class="bounce-in-top">근형쌤만의 공간(회원)</button><br>
    <button id="intro2" class="bounce-in-top">근형쌤만의 공간(비회원)</button>
    <div class="modal" id="modal1">
      <div id="modal-inner1">
        <form id="form1" action="signUpController">
          <h1>어머 아직 회원이 아니시군요!?</h1>
          <h2>얼른 가입하세요!</h2>
          <div id="formdiv">
            <label class="lb" for="id">아 이 디</label><input type="text" id="id" name="id" required><br>
            <label class="lb" for="pw"> 비밀번호</label><input type="password" id="pw" name="pw" required><br>
            <label class="lb" for="nick">별 명</label><input type="text" id="nick" name="nick" required><br>
            <label class="lb">누구세요?</label>
            <div class="who">
            <label>수강생 <input class="who_input" type="radio" id="student" value="student" name="who" required></label>
            <label>강 사 <input class="who_input" type="radio" id="teacher" value="teacher" name="who"></label><br>
            </div>
            <button id="formbutton">참 잘했어요</button>
          </div>
        </form>
      </div>
    </div>
    <div class="login" id="login">
      <div id="modal-inner2">
        <form id="form1" action="loginController">
          <h1>로그인하는 곳</h1>
          <div id="formdiv">
            <label class="lb" for="id2">아 이 디</label><input type="text" id="id2" name="id" required><br>
            <label class="lb" for="pw2"> 비밀번호</label><input type="password" id="pw2" name="pw" required><br>
            <div class="who">
            <label>수강생 <input class="who_input" type="radio" id="student" value="student" name="who" required></label>
            <label>강 사 <input class="who_input" type="radio" id="teacher" value="teacher" name="who"></label>
            </div>
            <button id="formbutton">참 잘했어요</button>
          </div>
        </form>
      </div>
    </div>
  </div>
  <script>
 	document.getElementById("intro1").addEventListener("click", function () {
 	  document.getElementById("login").style.display = "flex";
    });
    document.getElementById("intro2").addEventListener("click", function () {
      document.getElementById("modal1").style.display = "flex";
    });

    document.getElementById("modal1").addEventListener("click", function (e) {
      document.getElementById("modal1").style.display = "none";
    });
    document.getElementById("login").addEventListener("click", function (e) {
        document.getElementById("login").style.display = "none";
      });
    document.getElementById("modal-inner1").addEventListener("click", function (e) {
      e.stopPropagation();  
    });
    document.getElementById("modal-inner2").addEventListener("click", function (e) {
      e.stopPropagation();  
    });
  </script>
</body>

</html>
