<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>增加员工</title>
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css"
	href="easyui/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css" />
<script src="easyui/jquery.min.js"></script>
<script src="easyui/jquery.easyui.min.js"></script>
<script src="easyui/locale/easyui-lang-zh_CN.js"></script>
</head>
<body>
	<form action="" method="post" name="f" id="form">
		<input type="hidden" name="empno" value="${emp.empno }">
		&nbsp;&nbsp;&nbsp;&nbsp;用户名: 
		<input class="easyui-textbox" name="ename" value="${emp.ename }" data-options="required:true"><br>
		&nbsp;&nbsp;&nbsp;&nbsp;登录密码: 
		<input class="easyui-textbox" name="password" value="${emp.password  }" data-options="required:true"><br>
		&nbsp;&nbsp;&nbsp;&nbsp;员工姓名: 
		<input class="easyui-textbox" name="realname" value="${emp.realname  }" data-options="required:true"><br>
		&nbsp;&nbsp;&nbsp;&nbsp;性别: 
		<input class="easyui-textbox" name="sex" value="${emp.sex }"><br>
		&nbsp;&nbsp;&nbsp;&nbsp;职位: 
		<input class="easyui-textbox" name="job" value="${emp.job }"><br>
		&nbsp;&nbsp;&nbsp;&nbsp;入职时间: 
		<input class="easyui-datebox" name="hiredate" value="${emp.hiredate }"><br>
		&nbsp;&nbsp;&nbsp;&nbsp;在职状态: 
		<input class="easyui-textbox" name="state" value="${emp.state }"><br>
		<br> &nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" value="OK">
	</form>
	<script type="text/javascript">
		$("#form").form({
			url : "employeeController_save",
			success : function(data) {
				if (data) {
					$.messager.show({
						title : '提示',
						msg : '增加员工 ' + data + " 成功"
					});
					$("#editCar").window('close', true);
				}
			}
		});
	</script>
</body>
</html>
