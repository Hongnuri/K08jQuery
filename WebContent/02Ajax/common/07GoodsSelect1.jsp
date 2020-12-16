<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 파일명 : 07GoodsSelect1.jsp --%> 
<%
request.setCharacterEncoding("utf-8");
String gName = request.getParameter("goodsOptionName");
if(gName.equals("op01")){
%>   
	<table class="table table=bordered">
		<tr>
			<td>옵션명 :</td>
			<td>옵션선택1(AAA추가)</td>
		</tr>
		<tr>
			<td colspan="2" class="table-danger">추가비용
				: +5000원</td>
		</tr>
	</table>
<% } else if(gName.equals("op02")) { %>
	<table class="table table-bordered">
		<tr>
			<td>옵션명 : </td>
			<td>옵션선택2(BBB추가)</td>
		</tr>
		<tr>
			<td colspan="2" class="table-info">추가비용 :
				+7000원</td>
		</tr>
	</table>	
	
<% } else if(gName.equals("op03")) { %>
	<table class="table table-bordered">
		<tr>
			<td>옵션명 : </td>
			<td>옵션선택3(CCC추가)</td>
		</tr>
		<tr>
			<td colspan="2" class="table-info">추가비용 :
				+10000원</td>
		</tr>
	</table>
<% } %>			