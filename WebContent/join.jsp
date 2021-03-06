<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="keywords" content="" />
<meta name="description" content="" />
<link
   href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900"
   rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<title>Insert title here</title>

<head>
<meta charset="UTF-8">
<title>http://www.blueb.co.kr</title>

<style>
html {
   width: 100%;
   height: 100%;
}

body {
   /*  background: -webkit-linear-gradient(45deg, rgba(66, 183, 245, 0.8) 0%, rgba(66, 245, 189, 0.4) 100%);
  background: linear-gradient(45deg, rgba(66, 183, 245, 0.8) 0%, rgba(66, 245, 189, 0.4) 100%); */
   color: rgba(0, 0, 0, 0.6);
   /* font-family: "Roboto", sans-serif; */
   /* font-size: 14px; */
   -webkit-font-smoothing: antialiased;
   -moz-osx-font-smoothing: grayscale;
}

.overlay, .form-panel.one:before {
   position: absolute;
   top: 0;
   left: 0;
   /* display: none; */
   background: rgba(0, 0, 0, 0.8);
   width: 100%;
   height: 100%;
}

.form {
   z-index: 15;
   position: relative;
   background: #FFFFFF;
   width: 600px;
   border-radius: 4px;
   box-shadow: 0 0 30px rgba(0, 0, 0, 0.1);
   box-sizing: border-box;
   margin-right: auto;
   margin-left: auto;
   /* overflow: hidden; */
}

.form-group { /* 조인  */
   /* display: -webkit-box; */
   /* display: -webkit-flex;
   display: -ms-flexbox; */
   /* display: flex; */
   -webkit-flex-wrap: wrap;
   -ms-flex-wrap: wrap;
   flex-wrap: wrap;
   -webkit-box-pack: justify;
   -webkit-justify-content: space-between;
   -ms-flex-pack: justify;
   justify-content: space-between;
   margin: 0 0 20px;
}

.form-group:last-child { /* 조인  */
   margin: 0;
}

.form-group label {
   /* display: block; */
   margin: 0 0 10px;
   color: rgba(0, 0, 0, 0.6);
   font-size: 12px;
   font-weight: 500;
   line-height: 1;
   text-transform: uppercase;
   letter-spacing: .2em;
}

.two .form-group label {
   color: #FFFFFF;
}

.form-group input {
   outline: none;
   /* display: block; */
   background: rgba(0, 0, 0, 0.1);
   width: 100%;
   border: 0;
   border-radius: 4px;
   box-sizing: border-box;
   padding: 12px 20px;
   color: rgba(0, 0, 0, 0.6);
   font-family: inherit;
   font-size: inherit;
   font-weight: 500;
   line-height: inherit;
   -webkit-transition: 0.3s ease;
   transition: 0.3s ease;
}

.form-group input:focus {
   color: rgba(0, 0, 0, 0.8);
}

.two .form-group input {
   color: #FFFFFF;
}

.two .form-group input:focus {
   color: #FFFFFF;
}

.form-group button {
   outline: none;
   background: #FFC000;
   width: 100%;
   border: 0;
   border-radius: 8px;
   padding: 9px 20px;
   color: #FFFFFF;
   font-family: inherit;
   font-size: inherit;
   font-weight: 500;
   line-height: inherit;
   text-transform: uppercase;
   cursor: pointer;
}
.form-group button:hover{
   background:#fff;
   color:#FFC000;
}

.two .form-group button {
   margin-top: 25px;
   outline: none;
   background:beige;
   color:black;
   width: 100%;
   border: 0;
   border-radius: 8px;
   padding: 9px 20px;
   font-family: inherit;
   font-size: inherit;
   font-weight: 500;
   line-height: inherit;
   text-transform: uppercase;
   cursor: pointer;
}

.two .form-group button:hover{
   background: #FFFFFF;
   color: #FFC000;
}

.form-group .form-remember {
   font-size: 12px;
   font-weight: 400;
   letter-spacing: 0;
   text-transform: none;
}

.form-group .form-remember input[type='checkbox'] {
   display: inline-block;
   width: auto;
   margin: 0 10px 0 0;
}

.form-group .form-recovery {
   color: #4285F4;
   font-size: 12px;
   text-decoration: none;
}

.form-panel {
   padding: 30px 30px 30px 30px;
   box-sizing: border-box;
   background: beige;
}

.form-panel:hover {
    left: 93%;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2)
}
.form-panel.two { /* 조인  */
   z-index: 5;
   position: static;
   top: 0;
   left: 95%;
   background: #FFC000;
   width: 100%;
   /* max-height: 100%; */
   /* -webkit-transition: 0.3s ease; */
   /* transition: 0.3s ease; */
   /* cursor: pointer; */
}

.form-panel.two:before, .form-panel.two:after {
   content: '';
   display: block;
   position: absolute;
   top: 60px;
   left: 1.5%;
   background: rgba(255, 255, 255, 0.2);
   height: 30px;
   width: 2px;
   /* -webkit-transition: 0.3s ease;
   transition: 0.3s ease; */
}

.form-panel.two:hover {
   left: 93%;
   box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

.form-panel.two:hover:before, .form-panel.two:hover:after {
   opacity: 0;
}

form-panel.two.active {
   left: 10%;
   box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
   cursor: default;
}

.form-panel.two.active:before, .form-panel.two.active:after {
   opacity: 0;
}

.form-header { /* 조인  */
   margin: 0 0 40px;
}

.form-header h1 {
   padding: 4px 0;
   color: #FFC000;
   font-size: 24px;
   font-weight: 700;
   text-transform: uppercase;
}

.two .form-header h1 {
   position: relative;
   z-index: 40;
   color: #FFFFFF;
}

.pen-footer {
   display: -webkit-box;
   display: -webkit-flex;
   display: -ms-flexbox;
   display: flex;
   -webkit-box-orient: horizontal;
   -webkit-box-direction: normal;
   -webkit-flex-direction: row;
   -ms-flex-direction: row;
   flex-direction: row;
   -webkit-box-pack: justify;
   -webkit-justify-content: space-between;
   -ms-flex-pack: justify;
   justify-content: space-between;
   width: 600px;
   margin: 20px auto 100px;
}

.pen-footer a {
   color: #FFFFFF;
   font-size: 12px;
   text-decoration: none;
   text-shadow: 1px 2px 0 rgba(0, 0, 0, 0.1);
}

.pen-footer a .material-icons {
   width: 12px;
   margin: 0 5px;
   vertical-align: middle;
   font-size: 12px;
}

.cp-fab {
   background: #FFFFFF !important;
   color: #4285F4 !important;
}

#header-wrapper {
   overflow: hidden;
   padding: 50px 0px 0px 0px;
   background: #FFC000 url(images/overlay.png) repeat;
   height: 450px;
}
.img{
   width: fit-content; ; 
   margin: 0 auto;
   text-align: center;
   
}
.text-center {
   width: 100%;
   text-align: center;;
}

@font-face {
	font-family: 'GmarketSansLight';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansLight.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'GmarketSansMedium';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
	font-weight: normal;
}


</style>
</head>
<body onload="document.login.p_id.focus();">

   <%
      MemberDTO info = (MemberDTO) session.getAttribute("info");
   %>
   <div id="header-wrapper">
      <div id="header" class="container" style="margin-top: -9px;">
   <p class="img"><a href="index.jsp"><img src="img/cctv.png" class="img-logo"></a></p>
            <div class="title-group text-center" style = "font-family: 'GmarketSansMedium';">
               <h1 style ="margin-top: 12px; font-family: 'GmarketSansMedium';"><font size="30px" color="beige" >
                  엄마를 부르는 소리, <br> <strong>위험할땐  MomSee하세요.</strong></font>
                  <br><br>
               </h1>
                  <div class="download-btns" style="margin-top: -34px;">
               <h1>
                     <a href="https://hbe.kr/l/ddingdongappdownload-android-homepage"
                        target="_blank" class="btn btn-outline-light mr-2 btn-google">
                        <img src="img/google.png" class="img-btn-google"
                        style="width: 19px; height: 20px; margin: 0px 4.8px 0px 0px; margin-bottom: -5px; font-family: 'GmarketSansMedium';">
                        Google Play
                     </a> <a href="https://hbe.kr/l/ddingdongappdownload-ios-homepage"
                        target="_blank" class="btn btn-outline-light ml-2 btn-apple">
                        <img src="img/apple.png" class="img-btn-apple"
                        style="width: 20px; height: 22px; margin: 0px 4.8px 0px 0px; margin-bottom: -5px; font-family: 'GmarketSansMedium';">
                        App Store
                     </a>
               </h1>
                  </div>
               <span><font color="beige">Design by <a href="index.jsp" rel="nofollow" style="color : beige; font-family: 'GmarketSansMedium';">WellDeep</a></font></span>
            </div>
            
      </div>
      
   </div>
<script type="text/javascript">
if ("<%=request.getParameter("success")%>" == "False") {
    alert('아이디와 비밀번호를 확인해주세요.');
}
if ("<%=request.getParameter("joinsuccess")%>" == "True") {
    alert('가입 완료, 로그인을 해주세요');
    location.href = "index.jsp";
}
if ("<%=request.getParameter("joinsuccess")%>" == "False") {
 	alert('가입 실패, 이미 존재하는 아이디입니다.');
}
</script>
<div id="wall" style="height:100px; background: #FFF;"></div>
   <div id="wrapper" style = "height: 700px;">
         <!-- Form-->
         <div class="form"
            style="width:50%; position: relative; z-index: 1; font-family: 'GmarketSansMedium';">

            <!-- <div class="form-toggle"></div> -->
            <div style="width:35%; float:left; font-family: GmarketSansMedium;" class="form-panel one">
               <div class="form-header">
                  <h1>LOGIN</h1>
               </div>
               <div class="form-content">
                  <form name="login" action="LoginService.do">
                     <div class="form-group" style = "font-family: 'GmarketSansMedium';">
                        <label for="username" style = "font-family: 'GmarketSansMedium';">ID</label> <input type="text"
                           id="username" name="p_id" required="required" />
                     </div>
                     <div class="form-group">
                        <label for="password" style = "font-family: 'GmarketSansMedium';">Password</label> <input type="password"
                           id="password" name="p_pw" required="required" />
                     </div>
                     <div style = "text-align:center; font-family: 'GmarketSansMedium';" class="form-group">
                        <label class="form-remember"><input type="checkbox" style = "font-family: 'GmarketSansMedium';"/>Remember
                           Me </label> 
                     </div>
                     <div class="form-group">
                        <button type="submit" style = "font-family: 'GmarketSansMedium';">Log In</button>
                     </div>
                  </form>
               </div>
            </div>
               <div style="width:50%; float:right; font-family: 'GmarketSansMedium';" class="form-panel two">
                  <div class="form-header" style = "font-family: 'GmarketSansMedium';">
                     <h1 style = "font-family: 'GmarketSansMedium';">JOIN</h1>
                  </div>
                  <div class="form-content">
                     <form action="JoinService.do">
                        <div class="form-group">
                           <label for="username" style = "font-family: 'GmarketSansMedium';">ID</label> <input id="p_id" name="p_id" type="text"
                              class="form-control input-lg" required="required"><br>
                        </div>
                        <div class="form-group">
                           <label for="password" style = "font-family: 'GmarketSansMedium';">Password</label> <input id="p_pw" name="p_pw"
                              type="password" class="form-control input-lg" required="required"><br>
                        </div>
                        <div class="form-group">
                           <label for="cpassword" style = "font-family: 'GmarketSansMedium';">Address</label> <input name="p_addr"
                              type="text" class="form-control input-lg" required="required"><br>
                        </div>
                        <div class="form-group">
                           <label for="email" style = "font-family: 'GmarketSansMedium';">PhoneNumber</label> <input name="p_phone"
                              type="text" class="form-control input-lg" required="required"><br>
                        </div>
                        <div class="form-group">
                           <label for="name" style = "font-family: 'GmarketSansMedium';">Name</label> <input name="p_name" type="text"
                              class="form-control input-lg" required="required"><br>
                        </div>
                        <label><input type="radio" name="p_sex" value="남" checked="checked" style = "font-family: 'GmarketSansMedium';">남성</label>
                        <label><input type="radio" name="p_sex" value="여" style = "font-family: 'GmarketSansMedium';">여성</label>
                  <div id="join" class="form-group">
                     <button id="join_btn" type="submit" style = "font-family: 'GmarketSansMedium';">Join</button>
                  </div>
                  </form>
                  </div>
         </div>
      </div>
</div>
<div class="inner"
		style="background: #3D3D3D; color: rgb(245, 245, 220); padding-top: 10px; padding-bottom: 10px;">
		<section style="text-align: center; font-family: 'GmarketSansMedium';">
			<h4 class="major" style="color: #FFC000; ">스마트 미디어 인재 개발원</h4>
			<p>딥러닝 기반 에너지 빅데이터 응용 sw전문가 과정.</p>
			<p>광주 CGI센터 교육실4 광주 송암로60.</p>
			<p>Design by Team Well-Deep.</p>
		</section>
	</div>
<script src="js/jquery-3.4.1.min.js"></script>
<script>
</script>
</body>
</html>