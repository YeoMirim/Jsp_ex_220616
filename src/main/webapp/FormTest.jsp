<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Form Test / 로그인 화면 </title>
</head>
<body>
	<h2>로그인</h2>
	<hr>	<!-- 수평선 그리기 -->
	<!-- <form action="" method="get"> -->	<!-- 전달 후 주소에 파라미터값이 찍힘(노출O), 기본값 -->
	<!-- <form action="" method="post"> -->	 <!-- 전달은 됐지만 파라미터값이 안찍힘(노춡X) / 중요한 경우 이 방식 채택 -->
	<form action="LoginOk.jsp"> 	<!-- id와 pw가 request 객체에 실어서 LoginOk.jsp에 전달함 -->
		아이디 : <input type="text" name="id"><br><br>
		비밀번호 : <input type="password" name="pw"><br><br>
		
		
		취미 : 
		<select name="Hobby">
			<option value="운동">운동</option>		<!-- value에 있는 값이 넘어감 -->
			<option value="독서">독서</option>
			<option value="게임">게임</option>
		</select>
		<br><br>
		성별 : <!-- Radio는 name값이 동일해야함 -->
		<input type="radio" name="Gender" value="남자"> 남자	<!-- value에 있는 값이 넘어감 -->
		<input type="radio" name="Gender" value="여자"> 여자 <br><br>
		<br><br>
		좋아하는 과목 : <!-- Checkbox는 name값이 동일해야함, 배열로 만들어져서 보냄 -->
		<input type="checkbox" name="Subject" value="국어"> 국어
		<input type="checkbox" name="Subject" value="영어"> 영어
		<input type="checkbox" name="Subject" value="수학"> 수학
		<br><br>
		
		자기소개 : <br>
		<textarea name="Intro" rows="10" cols="50"></textarea> <!-- 10줄 50칸짜리 text공간이 생김 -->
		<br><br>
		
		<br><br><br>
		<input type="submit" value="로그인">	<!-- submit을 누르면 form의 action(주소값)으로 날아감 -->
	</form>
</body>
</html>