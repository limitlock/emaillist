<%@page import="com.cafe24.emaillist.dao.EmaillistDao"%>
<%@page import="com.cafe24.emaillist.vo.EmaillistVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String firstName = request.getParameter("first-name");
	String lastName = request.getParameter("last-name");
	String email = request.getParameter("email");

	EmaillistVo vo = new EmaillistVo();
	vo.setEmail(email);
	vo.setFirstName(firstName);
	vo.setLastName(lastName);

	EmaillistDao dao = new EmaillistDao();
	dao.insert(vo);
	//insert가 완료되면 다른 화면으로 이동해야 한다, 같은 화면에서 새로고침을 할 경우 똑같은 데이터가 또 들어갈 수 있다.
	response.sendRedirect("/emaillist");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>성공적으로 등록되었습니다.</h1>
	<!-- insert가 완료되면 다른 화면으로 이동해야 한다, 같은 화면에서 새로고침을 할 경우 똑같은 데이터가 또 들어갈 수 있다. -->
</body>
</html>