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
<div>
<div class="row toolbar">
	<a href="${ctx}/basicinfo/factory/toInsert.action" class="btn btn-default">添加</a>
	<a href="javascript:;" onclick="formSubmit('${ctx}/basicinfo/factory/delete.action')" class="btn btn-default">批量删除</a>
	<a href="javascript:;" onclick="formSubmit('${ctx}/basicinfo/factory/enable.action')" class="btn btn-default">启用</a>
	<a href="javascript:;" onclick="formSubmit('${ctx}/basicinfo/factory/disable.action')" class="btn btn-default">禁用</a>
</div>
<div class="row" >
<form method="post">
<table class="table table-bordered">
	<thead>
		<tr>
			<th><input type="checkbox"   name="selid" onclick="checkAll('id',this)" /></th>
			<th class="hide">序号</th>
			<th>厂家全称</th>
			<th>缩写</th>
			<th>联系人</th>
			<th>电话</th>
			<th>手机</th>
			<th>传真</th>
			<th>验货员</th>
			<th>状态</th>
			<th>操作</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${dataList }" var="o" varStatus="status">
			<tr>
				<td><input type="checkbox" name="id" value="${o.id}" /></td>
				<td class="hide">${o.id}</td>
				<td>${o.fullName}</td>
				<td>${o.factoryName}</td>
				<td>${o.contacts}</td>
				<td>${o.phone}</td>
				<td>${o.mobile}</td>
				<td>${o.fax}</td>
				<td>${o.inspector}</td>
				<td>
					<c:if test="${o.status == 1}">
						<a href='disable.action?id=${o.id}' class='green'>启用</a>
					</c:if>
					<c:if test="${o.status == 0}">
						<a href='enable.action?id=${o.id}' class='red'>禁用</a>
					</c:if>
				</td>
				<td>
					<a href="${ctx}/basicinfo/factory/toUpdate.action?id=${o.id}" class="btn btn-default btn-sm">修改</a>
					<a href="${ctx}/basicinfo/factory/toView.action?id=${o.id}" class="btn btn-default btn-sm">查看</a>
					<a href="${ctx}/basicinfo/factory/deleteById.action?id=${o.id}" class="btn btn-danger btn-sm">删除</a>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</form>
</div>
</div>
</body>
</html>















