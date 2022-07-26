<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="container">
		<h2>상세 보기</h2>
		<hr>
		<table id="tbl_view">
<%-- 		<%
			String uname = request.getParameter("username");
			if(session.getAttribute("userName") != null){
				AddrBook addrBook = abDAO.getAbByUserName(uname);
			
		%> --%>
		<%-- 	<tr>
				<td>이름</td><td><%=addrBook.getUsername() %></td>
			</tr>
			<tr>
				<td>전화번호</td><td><%=addrBook.getTel() %></td>
			</tr>
			<tr>
				<td>이메일</td><td><%=addrBook.getEmail() %></td>
			</tr>
			<tr>
				<td>성별</td><td><%=addrBook.getGender() %></td>
			</tr> --%>
	<%-- 	<%
			}else{
				response.sendRedirect("./addForm.jsp");
			}
		%> --%>
		</table>
	
	</div>
</body>
</html>