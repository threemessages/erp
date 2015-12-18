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
	<h1>${obj !=null ? '修改' : '添加'}生产厂家信息</h1>
</div>
<div class="row" >
<form class="form-horizontal" autocomplete="off" method="post">
  <input type="hidden" name="id" value="${ obj != null ? obj.id : null }" /> 
  <div class="form-group">
    <label class="col-sm-2 control-label">生产厂家名称：</label>
    <div class="col-sm-10">
      <input type="text" name="fullName" value="${ obj != null ? obj.fullName : null }" class="form-control" />
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label">生产厂家名称缩写：</label>
    <div class="col-sm-4">
      <input type="text" name="factoryName" value="${ obj != null ? obj.factoryName : null }" class="form-control" />
    </div>
        <label class="col-sm-2 control-label">联系人：</label>
    <div class="col-sm-4">
      <input type="text" name="contacts" value="${ obj != null ? obj.contacts : null }" class="form-control" />
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label">电话：</label>
    <div class="col-sm-4">
      <input type="text" name="phone" value="${ obj != null ? obj.phone : null }" class="form-control" />
    </div>
        <label class="col-sm-2 control-label">手机：</label>
    <div class="col-sm-4">
      <input type="text" name="mobile" value="${ obj != null ? obj.mobile : null }" class="form-control" />
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label">传真：</label>
    <div class="col-sm-4">
      <input type="text" name="fax" value="${ obj != null ? obj.fax : null }" class="form-control" />
    </div>
    <label class="col-sm-2 control-label">验货员：</label>
    <div class="col-sm-4">
      <input type="text" name="inspector" value="${ obj != null ? obj.inspector : null }" class="form-control" />
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label">备注：</label>
    <div class="col-sm-9">
      <textarea class="form-control" name="cnote" rows="3">${ obj != null ? obj.cnote : null }</textarea>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label">排序：</label>
    <div class="col-sm-4">
      <input type="text" name="orderNo" value="${ obj != null ? obj.orderNo : null }" class="form-control" />
    </div>
  </div>
  
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <a href="javascript:;" onclick="formSubmit('${ctx}/basicinfo/factory/${obj != null ? 'update':'insert' }.action')" class="btn btn-default">保存</a>
      <a href="${ctx}/basicinfo/factory/list.action" class="btn btn-default">返回</a>
    </div>
  </div>
</form>
</div>
</body>
</html>















