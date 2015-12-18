<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../commons/basesave.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Factory</title>
</head>
<body>
<div class="row toolbar">
	<h1>查看生产厂家信息</h1>
</div>
<div class="row" >
<form class="form-horizontal" autocomplete="off" method="post">
  <input type="hidden" name="id" value="${obj.id}" /> 
  <div class="form-group">
    <label class="col-sm-2 control-label">生产厂家名称：</label>
    <div class="col-sm-10">
      <input type="text" name="fullName" value="${obj.fullName}" class="form-control" disabled />
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label">生产厂家名称缩写：</label>
    <div class="col-sm-4">
      <input type="text" name="factoryName" value="${obj.factoryName}" class="form-control" disabled />
    </div>
        <label class="col-sm-2 control-label">联系人：</label>
    <div class="col-sm-4">
      <input type="text" name="contacts" value="${obj.contacts}" class="form-control" disabled />
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label">电话：</label>
    <div class="col-sm-4">
      <input type="text" name="phone" value="${obj.phone}" class="form-control" disabled />
    </div>
        <label class="col-sm-2 control-label">手机：</label>
    <div class="col-sm-4">
      <input type="text" name="mobile" value="${obj.mobile}" class="form-control" disabled />
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label">传真：</label>
    <div class="col-sm-4">
      <input type="text" name="fax" value="${obj.fax}" class="form-control" disabled />
    </div>
    <label class="col-sm-2 control-label">验货员：</label>
    <div class="col-sm-4">
      <input type="text" name="inspector" value="${obj.inspector}" class="form-control" disabled />
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label">备注：</label>
    <div class="col-sm-9">
      <textarea class="form-control" name="cnote" rows="3" disabled >${obj.cnote}</textarea>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label">排序：</label>
    <div class="col-sm-4">
      <input type="text" name="orderNo" value="${obj.orderNo}" class="form-control" disabled />
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label">创建人：</label>
    <div class="col-sm-4">
      <input type="text" name="orderNo" value="${obj.createBy}" class="form-control" disabled />
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label">创建部门：</label>
    <div class="col-sm-4">
      <input type="text" name="orderNo" value="${obj.createDept}" class="form-control" disabled />
    </div>
    <label class="col-sm-2 control-label">创建时间：</label>
    <div class="col-sm-4">
      <input type="text" name="orderNo" value="${obj.createTime}" class="form-control" disabled />
    </div>
  </div>
  
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <a href="${ctx}/basicinfo/factory/list.action" class="btn btn-default">返回</a>
    </div>
  </div>
</form>
</div>
</body>
</html>















