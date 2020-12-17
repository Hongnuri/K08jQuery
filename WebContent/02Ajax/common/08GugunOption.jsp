<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sun.xml.internal.bind.v2.runtime.unmarshaller.XsiNilLoader.Array"%>
<%@page import="controller.ZipcodeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 파일명 :08GugunOption.jsp --%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
// 한글처리
request.setCharacterEncoding("UTF-8");

// 입력한 sido 를 파라미터로 받는다
String sido = request.getParameter("sido");
ZipcodeDAO dao = new ZipcodeDAO();
// sido 를 DAO 로 파라미터 전달
ArrayList<String> gugunList = dao.getGugun(sido);
// DAO 에서 반환 된 결과를 JSON 배열로 만들기 위한 객체 생성
JSONArray jsonArr = new JSONArray();

for(String gu : gugunList){
	jsonArr.add(gu);
}
dao.close();
// JSON 배열을 화면상에 출력
out.println(jsonArr.toString());
%>    
