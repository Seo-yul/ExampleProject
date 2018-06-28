<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>ONE IN A MILLION !</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="resources/images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/fonts/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/css/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/css/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="resources/css/util.css">
<link rel="stylesheet" type="text/css" href="resources/css/main.css">
<!--===============================================================================================-->
</head>
<body>
<c:if test="${signinfail}">
<script type="text/javascript">
alert("아이디/비밀번호를 확인해주세요")
</script></c:if>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="resources/images/img-01.png" alt="IMG">
				</div>

				<form class="login100-form validate-form" action="signIn" method="post">
					<span class="login100-form-title-custom"> ONE IN A MILLION ! </span>

					<div class="wrap-input100 validate-input"
						data-validate="Valid UserID is required: 4~10">
						<input class="input100" type="text" name="ID" placeholder="ID">
						<span class="focus-input100"></span> <span class="symbol-input100">
							<i class="fa fa-user" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="Password is required">
						<input class="input100" type="password" name="pass"
							placeholder="Password"> <span class="focus-input100"></span>
						<span class="symbol-input100"> <i class="fa fa-lock"
							aria-hidden="true"></i>
						</span>
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn">Login</button>
					</div>

					<div class="text-center p-t-12">
						<span class="txt1"> 기억나지않아요 </span> <a class="txt2" href="#">
							아이디 / 패스워드 </a>
					</div>

					<div class="text-center p-t-136">
						<a class="txt2" data-toggle="modal"
							data-target="#SignUpModal"> 회원가입 <i
							class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
<!-- Modal -->
<div class="modal fade" id="SignUpModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
 <div class="limiter">
 
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel"> 회원가입 </h4>
      </div>
      <div class="modal-body">
			<form class="jumbotron signUp-form">
				<div class="row marketing">
					<div class="col-lg-6 ">
						<div class="wrap-input100 validates-input"
							data-validate="Valid UserID is required: 4~10">
							<input class="input100 signup" type="text" name="userid"
								placeholder="아이디"> <span class="focus-input100"></span>
							<span class="symbol-input100"> <i class="fa fa-user"
								aria-hidden="true"></i>
							</span>
						</div>
						<div class="wrap-input100 validates-input"
							data-validate="Password is required">
							<input class="input100" type="password" name="userpwd"
								placeholder="비밀번호"> <span class="focus-input100"></span>
							<span class="symbol-input100"> <i class="fa fa-lock"
								aria-hidden="true"></i>
							</span>
						</div>
						<div class="wrap-input100 validates-input"
							data-validate="Valid UserID is required: 4~10">
							<input class="input100" type="text" name="username"
								placeholder="이름"> <span class="focus-input100"></span> <span
								class="symbol-input100"> <i class="fa fa-pencil"
								aria-hidden="true"></i></span>
						</div>

						<div class="wrap-input100 validates-input"
							data-validate="Fill form please">
							<input class="input100" type="number" name="age" placeholder="나이">
							<span class="focus-input100"></span> <span
								class="symbol-input100"> <i class="fa fa-heart"
								aria-hidden="true"></i>
							</span>
						</div>

						<div class="wrap-input100 validates-input"
							data-validate="Fill form please">
							<input class="input100" type="text" name="hobby" placeholder="취미">
							<span class="focus-input100"></span> <span
								class="symbol-input100"> <i class="fa fa-h-square"
								aria-hidden="true"></i>
							</span>
						</div>

						<div class="wrap-input100 validates-input"
							data-validate="Select One">
							<span class="login100-form-detail"> <label><input
									class="input10" type="radio" name="gender" value="Male">남자&nbsp;&nbsp;</label>
								<label><input class="input10" type="radio" name="gender"
									value="Female">여자&nbsp;</label> <label><input
									class="input10" type="radio" name="gender" value="none">&nbsp;비공개&nbsp;&nbsp;</label>
							</span>
						</div>
					</div>

					<div class="col-lg-6 ">
						<div class="wrap-input100 validates-input"
							data-validate="Fill form please">
							<input class="input100" type="Date" name="birth"> <span
								class="focus-input100"></span> <span class="symbol-input100">
								<i class="fa fa-calendar" aria-hidden="true"></i>
							</span>
						</div>

						<div class="wrap-input100 validates-input"
							data-validate="Fill form please">
							<input class="input100" type="text" name="phone"
								placeholder="-를 제외한 숫자"> <span class="focus-input100"></span>
							<span class="symbol-input100"> <i class="fa fa-phone"
								aria-hidden="true"></i></span>
						</div>

						<div class="wrap-input100 validates-input"
							data-validate="Fill form please">
							<input type="hidden" name="address" value="sum12">
							<input class="input100" type="text" name="address1"
								placeholder="주소1"> <span class="focus-input100"></span> <span
								class="symbol-input100"> <i class="fa fa-map-marker"
								aria-hidden="true"></i></span>
						</div>
						<div class="wrap-input100 validates-input"
							data-validate="Fill form please">
							<input class="input100" type="text" name="address2"
								placeholder="주소2"> <span class="focus-input100"></span> 
						</div>

						<div class="wrap-input100 validates-input"
							data-validate="Fill form please">
							<textArea class="input100-textArea" name="introduce"
								placeholder="100자 자기소개" style="resize: none;"> </textArea>
							<span class="focus-input100"></span> <span
								class="symbol-input100"> <i class="fa fa-align-right"
								aria-hidden="true"></i></span>
						</div>
					</div>
				</div>
			</form>

      </div>
      <div class="modal-footer">
        <button type="button" class="login100-form-btn" data-dismiss="modal">취소</button>
        <input type="button" class="login100-form-btn" id="signUp-btn" value="가입하기">
      </div>
    </div>
  </div>
 </div>
</div>


	<!--===============================================================================================-->
	<script src="resources/js/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="resources/js/popper.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="resources/js/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="resources/js/tilt.jquery.min.js"></script>
	<script>
		$('.js-tilt').tilt({
			scale : 1.1
		})
	</script>
	<!--===============================================================================================-->
	<script src="resources/js/main.js"></script>

</body>
</html>
