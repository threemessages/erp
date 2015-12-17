<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../commons/baselist.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Factory</title>
</head>
<body>
<div class="row" >
<table class="table table-bordered">
	<thead>
		<tr>
			<td><input type="checkbox"   name="selid" onclick="checkAll('id',this)" /></td>
			<td>序号</td>
			<td>厂家全称</td>
			<td>缩写</td>
			<td>联系人</td>
			<td>电话</td>
			<td>手机</td>
			<td>传真</td>
			<td>验货员</td>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${dataList }" var="o" varStatus="status">
		
		</c:forEach>
	</tbody>
</table>
</div>
</body>
</html>















