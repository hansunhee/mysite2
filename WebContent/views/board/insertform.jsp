<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/mysite/assets/css/board.css" rel="stylesheet" type="text/css">
<title>mysite</title>
</head>
<body>

<div id="container">
		<div id="header">
			<c:import url="/views/include/header.jsp">
			</c:import>
		</div>
		<div id="content">
			<div id="board">
				<form action="/mysite/board" method="post">
				<input type="hidden" name="a" value="insert">
				<table width=500 id="insertForm">
				<tr>
					<td>제목</td><td colspan="3"><input type="text" name="name" required="required"></td>
				</tr>
				<tr>
					<td>이름</td><td><input type="text" name="name" required="required"></td>
					<td>비밀번호</td><td><input type="password" name="pass" required="required"></td>
				</tr>
					<tr>
					<td colspan=4><textarea name="content" cols=70 rows=5 required="required"></textarea></td>
				</tr>
				<tr>
					<td colspan=4 align=right><input type="submit" VALUE=" 등록하기 " class="btn"></td>
				</tr>
				</table>
				</form>

				<div id="writeBtnDiv">
					<input type="button" value="게시판으로" id="listBtn" class="btn">
				</div>
				
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