<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
  <title>one-tack!</title>

  <!-- CSS  -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="../css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link href="../css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <!--SCRIPT-->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script type="text/javascript" src="../js/materialize.min.js"></script>
</head>
<body class="no-pad-bot grey lighten-5">
  <nav class="light-blue darken-4" role="navigation">
    <div class="nav-wrapper container"><a id="logo-container" href="../login/index.jsp" class="brand-logo"><strong>one-tack!</strong></a>
      <ul class="right hide-on-med-and-down">
        <li><a href="../project/projectList.jsp">projects</a></li>
        <li><a href="about.jsp">about</a></li>
      </ul>

      <ul id="nav-mobile" class="side-nav">
        <li><a href="../project/projectList.jsp">projects</a></li>
        <li><a href="about.jsp">about</a></li>
      </ul>
      <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
    </div>
  </nav>
  
  
  <div class="section" id="index-banner">
    <div class="container ">
	      <br><br><br /><br />
	      <h1 class="header center grey-text text-darken-4"><strong> one-tack! </strong></h1>
	      <h4 class="header center light grey-text text-darken-2"> <strong>원-탁</strong>에서 <strong>팀 프로젝트</strong>를 진행해보세요 </h4>
	      <div class="row center">
	        <h5 class="header col s12 light grey-text"> 원-탁은 <strong>팀 프로젝트를 위한 가장 효율적인 방법</strong>을 제공합니다. <br> 성공적인 프로젝트를 위해 원-탁과 함께하세요</h5>
	      </div>
	      
	      	<%
				Object obj = session.getAttribute("memno");
	      		System.out.println("index창 memno session : " + obj);
	      		if(obj == null || obj == "0"){ // session이 null일 때, 즉, 로그인이 필요할 때
	      			%>
		      			<div class="row center">
			       		<a class="col s4 offset-s4 waves-effect waves btn green accent-4" href="login.jsp"><strong>로그인</strong></a>
			       		<br />	<br />
			        	<a class="col s4 offset-s4 waves-effect waves btn green accent-4" href="signUp.jsp"><strong>회원가입</strong></a>
		     			</div>
	      			<%
	      		}else{ // 로그인 되어 있을 때!
			%>
						<div class="row center">
			       		<a class="col s4 offset-s4 waves-effect waves btn green accent-4" href="logoutOK.jsp"><strong>로그아웃</strong></a>
		     			</div>
			<% 
	      		}
			%>
	      
     	  <br><br><br /><br />
    </div>
  </div>
  <footer class="page-footer light-blue darken-2">
          <div class="container">
            <div class="row">
              <div class="col l10 s12">
                <h5 class="white-text"><strong>Team FreshRice</strong></h5>
                <p class="grey-text text-lighten-3">Team FreshRice는 최고의 팀원과 함께합니다.</p>
              </div>
              <div class="col l2 s12">
                <h5 class="white-text"><strong>Contact</strong></h5>
                <ul>
                  <li><a class="grey-text text-lighten-3" href="#!">Email</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">FaceBook</a></li>
                   <li><a class="grey-text text-lighten-3" href="#!">GitHub</a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="footer-copyright light-blue darken-4">
            <div class="container grey-text text-lighten-1">
            © Copyright(c) 2016 FreshRice All rights reserved. 
            </div>
          </div>
        </footer>


  <!--  Scripts-->
  <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script src="../js/materialize.js"></script>
  <script src="../js/init.js"></script>

  </body>
</html>