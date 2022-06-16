<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과</title>
</head>
<body> <!-- request객체가 실어온 내용을 꺼냄 -->
	<%	// HttpServletRequest class에 포함된 request 
		String memberId = request.getParameter("id");	// id를 꺼내줘(반환값 Type: String)
		String memberPassword = request.getParameter("pw");	// pw를 꺼내줘(반환값 Type: String)
		// FormTest.jsp에서 넘겨준 파라미터 값(id, pw)을 가져옴
		String Hobby = request.getParameter("Hobby");
		String Gender = request.getParameter("Gender");
		String Intro = request.getParameter("Intro");	// 변수가 1개
		String[] Subject = request.getParameterValues("Subject");		// 배열로 받은걸 배열 타입으로 꺼냄
		
//		System.out.println(memberId);	//	콘솔창에서 확인
//		System.out.println(memberPassword);
	%>	<!-- Java 영역 -->
	로그인 하신 아이디는 <%= memberId %> 입니다. <br>		<!-- 넘어온 값이 찍힘 -->
	입력하신 비밀번호는	<%= memberPassword %> 입니다.	<br>
	취미 : <%= Hobby %> <br>	
	성별 : <%= Gender %> <br>
	자기소개 : <%= Intro %> <br>
	좋아하는 과목 : <br> <!-- checkbox는 결과값이 여러개이므로 for문으로 빼야함 -->
	<%
		if (Subject != null) {	// checkbox에서 선택하지 않을 수 있기때문에 if 문을 돌림
			for(int i=0; i< Subject.length; i++) {
				out.println(Subject[i]);
			}
		}	
		else {
			out.println("없음");
		} // null값인 경우 파라미터값이 넘어가는게 없음
	%>
		
	<!-- HTML 영역 -->
</body>
</html>