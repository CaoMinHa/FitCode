<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true"%>
<%@ include file="/static/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<style type="text/css">
.error {
	color: #FF3333;
}

input {
	line-height: 20px;
}
</style>
</head>
<body>
	<div class="error">${error}</div>
	<div>
		<a href="${ctx}/index">返回首页</a>
	</div>
</body>
</html>