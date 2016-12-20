<%@ page language="java" pageEncoding="UTF-8"%>


<!DOCTYPE HTML>
<html>
<head>

<meta charset="utf-8">
<title>增加部门</title>

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
	  <input type="hidden" name="deptno" value="${dept.deptno }">
	  &nbsp;&nbsp;&nbsp;&nbsp;部门姓名:
	  <input class="easyui-textbox" name="dname"
	    value="${dept.dname }" data-options="required:true"><br><br>
	  &nbsp;&nbsp;&nbsp;&nbsp;部门备注:
	  <input class="easyui-textbox" name="remark"
	    value="${dept.remark }"><br><br>
	  &nbsp;&nbsp;&nbsp;&nbsp;
    <input type="submit" value="OK">
	</form>
	
	<script type="text/javascript">
	  $("#form").form({
		  url : "deptController_save",
		  success : function(data){
			  if(data){
				  $.messager.show({
					  title : '提示',
					  msg : '修改部门 '+data+" 成功"
				  });
				  $("#editCar").window('close', true);
			  }
		  }
	  });
	</script>
</body>
</html>
