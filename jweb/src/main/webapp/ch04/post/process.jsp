<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<p>선택한 과일</p>
<% 
	request.setCharacterEncoding("utf-8");
	String[] fruit = request.getParameterValues("fruit");
	
	for(int i=0; i<fruit.length; i++){
		out.println(fruit[i]);
	} 
%>

