<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/pages/commons/base.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ERP</title>
<style type="text/css">
.main-top{height:61px;background:#006983;padding:0 0 0 28px;font-size:31px;color:#fff;line-height:61px;
	border-bottom:1px solid #fff;
}
.main{width:100%;position:relative;}
.main .main-left{width:200px;padding:18px 0;position:absolute;left:0;top:0;height:100%;text-align:center;
	background:#006983;
}
.main .main-left li{line-height:31px;}
.main .main-left li:hover{background:#f90870;}
.main .main-left li a{color:#fff;}
.main .main-right{position:absolute;left:210px;top:0;min-width:1000px;}
</style>
</head>
<body>
	<div class="main-top">
		title
	</div>
    <div class="main">
    	<div class="main-left" id="left">
	    	<ul>
	    		<li>
	    			<a href="http://localhost:8080/erp/main.action" target="right">菜单1</a>
	    		</li>
	    		<li>
	    			<a href="javascript:;" target="right">菜单2</a>
	    		</li>
	    		<li>
	    			<a href="javascript:;" target="right">菜单3</a>
	    		</li>
	    	</ul>
    	</div>
    	<div class="main-right">
    		<iframe frameborder="no" border="0" name="right" id="right" scrolling="no" ></iframe>
    	</div>
    	    <script>
    	    	
			    window.onload=function(){
			    	init();
			    	
			    	$("#right").load(function () {
			    		init();
				    });
			    }
			    window.onresize=function(){
			    	init();
			    }
			    
			    function init(){
			    	var width = document.body.clientWidth;
			    	var height = document.body.clientHeight
			    	obj = document.getElementById("right");
			    	obj.style.width=width-210 + 'px';
			    	obj.style.height=height-62 + 'px';
			    	
			    	left = document.getElementById("left");
			    	left.style.height=height-62 + 'px';
			    }
		   	</script>
    </div>
</body>
</html>
