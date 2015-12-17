<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }" />

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/components/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/base.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js" />
<script type="text/javascript" src="${pageContext.request.contextPath }/components/bootstrap/js/bootstrap.min.js" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/base.js" />
<style type="text/css">
.home-left-nav{padding:10px;}
.home-left-nav ul li{line-height:31px;text-align:center;}
</style>
</head>
<body>
<div class="home-left-nav">
	<ul>
		<li><a href="javascript:;">菜单1</a></li>
		<li><a href="javascript:;">菜单2</a></li>
		<li><a href="javascript:;">菜单3</a></li>
	</ul>
</div>
</body>
</html>