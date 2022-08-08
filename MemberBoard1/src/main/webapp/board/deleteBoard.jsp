<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="boardDAO" class="com.repository.BoardDAO" scope="application"></jsp:useBean>
<%
	request.setCharacterEncoding("utf-8");

	int bnum = Integer.parseInt(request.getParameter("bnum"));
	
	
	if(session.getAttribute("sessionId") != null){
		boardDAO.deleteBoard(bnum);
		out.println("<script>");
		out.println("alert('게시글을 삭제했습니다.')");
		out.println("location.href='./boardList.jsp'");
		out.println("</script>");

	}
	
/* 	response.sendRedirect("./boardList.jps"); */

%>
