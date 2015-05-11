<%@page import="com.sds.icto.mysite.vo.GuestBookVo"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<title>mysite</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link href="/mysite/assets/css/guestbook.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="container">
		<div id="header">
			<c:import url="/views/include/header.jsp">
			</c:import>
		</div>
		<div id="content">
			<div id="guestbook">
				<form action="/mysite/guestbook" method="post">
				<input type="hidden" name="a" value="insert">
				<table border=1 width=500>
				<tr>
					<td>이름</td><td><input type="text" name="name" required="required"></td>
					<td>비밀번호</td><td><input type="password" name="pass" required="required"></td>
				</tr>
					<tr>
					<td colspan=4><textarea name="content" cols=70 rows=5 required="required"></textarea></td>
				</tr>
				<tr>
					<td colspan=4 align=right><input type="submit" VALUE=" 확인 "></td>
				</tr>
				</table>
				</form>
				
				<ul>
					<li>
						<table width=510 border=1>
						<c:forEach items="${list }" var="vo" varStatus="status">
							<tr>
								<td>${status.index + 1 }</td>
								<td>${vo.name }</td>
								<td>${vo.date }</td>
								<td><a href="/mysite/guestbook?a=deleteform&no=${vo.no }">삭제</a></td>
							</tr>
							<tr>
								<td colspan=4>${vo.message }</td>
							</tr>
						</c:forEach>
						</table>
						<br>
					</li>
				</ul>
			</div>
		</div>
		<div id="navigation">
			<c:import url="/views/include/navigation.jsp">
				<c:param name="type" value="guestbook"></c:param>
			</c:import>
		</div>
		<div id="footer">
			<c:import url="/views/include/footer.jsp"></c:import>
		</div>
	</div>
</body>
</html>