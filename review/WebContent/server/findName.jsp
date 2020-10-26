<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

Thread.sleep(2000);//2초 대기
//결과를 담기 위한 map 만듦
	HashMap<String,String> map = new HashMap<>();
	map.put("choi","최기자");
	map.put("park","박길동");
	map.put("kim","김기자");

//1. 파라미터 받아야됨
	String userid = request.getParameter("userid");
	//out.print(map.get(userid)); // 키에 해당하는 값을 가져옴
	String name = map.get(userid);
%>
{"result": true, "name":"<%=name%>"}