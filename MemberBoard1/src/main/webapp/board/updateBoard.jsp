<%@page import="com.repository.BoardDAO"%>
<%@page import="com.repository.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="boardDAO" class="com.repository.BoardDAO" scope="application"></jsp:useBean>
<%
	request.setCharacterEncoding("utf-8");
	//name 속성의 데이터값 받기
	String bnum = request.getParameter("bnum");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	//board 객체 생성
	Board board = new Board();
	board.setBnum(Integer.parseInt(bnum));
	board.setTitle(title);
	board.setContent(content);
	
	//수정처리 - db 작업
	//BoardDAO boardDAO = new BoardDAO();

	
	if(session.getAttribute("sessionId") != null){
		boardDAO.updateBoard(board);
		out.println("<script>");
		out.println("alert('게시글을 수정했습니다.')");
		out.println("location.href='./boardList.jsp'");
		out.println("</script>");

	}else{
		response.sendRedirect("./boardList.jsp");
	}

	
	//페이지 이동
	
	/* response.sendRedirect("./boardList.jsp"); */
	
%>