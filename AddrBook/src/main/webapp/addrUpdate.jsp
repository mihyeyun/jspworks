<%@page import="com.dao.AddrBook"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록 수정</title>
<link rel="stylesheet" href="./resource/css/addrbook.css">
</head>
<jsp:useBean id="abDAO" class="com.dao.AddrBookDAO" scope="application" />
<body>
	<div id="container">
		<h2>주소 수정</h2>
		<hr>
		<form action="./addrUpdateProcess.jsp" method="post">
			<table id="tbl_view">
			<%
				int num = Integer.parseInt(request.getParameter("num"));
			
				if(session.getAttribute("sessionId") != null){
					AddrBook addrBook = abDAO.getOne(num);
			%>
				<tr>
					<td>번호</td>
					<td><input type="text" name="num" value=<%=addrBook.getNum() %>></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="username" value=<%=addrBook.getUsername() %>></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input type="text" name="tel" value=<%=addrBook.getTel() %>></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="text" name="email" value=<%=addrBook.getEmail() %>></td>
				</tr>
				<tr>
					<td>성별</td>
					<td>
					<% if(addrBook.getGender().equals("남")){ %>
						<input type="radio" name="gender" value="남" checked>남
						<input type="radio" name="gender" value="여">여
					<%}else{ %>
						<input type="radio" name="gender" value="남">남
						<input type="radio" name="gender" value="여" checked>여
					<%} %>
					</td>
				</tr>
				<tr>
					<td>가입일</td>
					<td><input type="text" name="joinDate" value=<%=addrBook.getJoinDate() %>></td>
				</tr>
				<tr>
					<td colspan="2">
						<p>
							<input type="submit">
							<input type="reset">
							<a href="./addrList.jsp">
								<button type="button">목록</button>
							</a>
						</p>
					</td>
				</tr>
			<%
				}else{
					response.sendRedirect("./addForm.jsp");
				}
			%>
			</table>
		</form>
	</div>
</body>
</html>