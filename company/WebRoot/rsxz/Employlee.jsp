<%@ page language="java"  pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>员工表</title>
<link rel="stylesheet" type="text/css" href="../css/index.css">
<link rel="stylesheet" type="text/css" href="../easyui/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="../easyui/themes/icon.css" />
<script src="../easyui/jquery.min.js"></script>
<script src="../easyui/jquery.easyui.min.js"></script>
<script src="../easyui/locale/easyui-lang-zh_CN.js"></script>


</head>
<body class="mian_bj">
	<div class="mian_top_01">
		
		<div class="mian_top_c">
			<ul>
				<li><a href="Employlee.jsp">
						<p>人员信息</p>
				</a></li>
				<li><a href="RSEventApply.jsp">
						<p>审批任务申请</p>
				</a></li>
				<li><a href="Power.jsp">
						<p>权限管理</p>
				</a></li>
			</ul>
		</div>
		<div class="mian_b">
			<div id="searchCarForm" style="padding: 10px">
				<div style="margin-bottom: 10px">
					<a href="#" class="easyui-linkbutton" plain="true"
						iconCls="icon-add" onclick="car_obj.showEdit('add')">新增</a> <a
						href="#" class="easyui-linkbutton" plain="true"
						iconCls="icon-edit" onclick="car_obj.showEdit('modify')">修改</a> <a
						href="#" class="easyui-linkbutton" plain="true"
						iconCls="icon-remove" onclick="car_obj.remove()">删除</a>
				</div>
				<div id="editCar"></div>

				<div style="padding: 0 0 0 6px">
					<input class="easyui-textbox" id="realname" size="6">
					<input class="easyui-textbox" id="sex" size="6"> 
					<input class="easyui-textbox" id="state" size="6">
					<input class="easyui-datebox" id="beginDate" size="10"> 
					<input class="easyui-datebox" id="endDate" size="10"> 
					<a href="#" class="easyui-linkbutton" iconCls="icon-search"
						onclick="car_obj.search()">查询</a>
				</div>
			</div>
			<div style="margin-top: 10px">
				<table id="carDataGrid">

				</table>
			</div>
		</div>

	</div>
	<script type="text/javascript">
	  $(function(){
		  car_obj = {
			  search : function(){
				  $("#carDataGrid").datagrid('load',{
					  realname : $.trim($("#realname").val()),
					  sex : $.trim($("#sex").val()),
					  state : $.trim($("#state").val()),
					  beginDate : $("#beginDate").datebox('getValue'),
					  endDate : $("#endDate").datebox('getValue'),
				  });
			  },
			  showEdit : function(state){
				  var url = "";
				  var info = "";
				  if(state == 'add'){
					  url = "AddEmploylee.jsp";
					  info = "新增员工";
				  }else{
					  info = "修改员工";
					  var rows = $('#carDataGrid').datagrid("getSelections");
					  if(rows.length == 1) {
						  url = "employeeController_findById.html?empno="+rows[0].id;
					  }else{
						  $.messager.alert("警告", "必须只选中一行", "warning");
						  return ;
					  }
				  }
				  
				  $("#editCar").window({
					  title : info,
					  width : 600,
					  height: 640,
					  modal : true,
			      minimizable : false,
			      href : url,
			      onClose : function(){
			    	  $("#carDataGrid").datagrid('reload');
			      }
				  });
			  },
			  remove : function(){
				  var rows = $('#carDataGrid').datagrid("getSelections");
				  if(rows.length > 0){
					  $.messager.confirm("消息","确认真的要删除所选的数据吗",function(flag){
						  if(flag){
							  var ids = [];
							  for(var i=0;i<rows.length;i++){
								  // 1 2 3 4 => [1 2 3 4]
								  ids.push(rows[i].id);
							  }
							  
							  $.ajax({
								  type : 'post',
								  url : "employeeController_remove",
								  // [1 2 3 4] => 1,2,3,4
								  data : {ids : ids.join(",")},
								  beforeSend : function(){
									  $("#carDataGrid").datagrid("loading");
								  },
								  success : function(data){
									  if(data){
										  $("#carDataGrid").datagrid("loaded");
										  $("#carDataGrid").datagrid("load");
										  $("#carDataGrid").datagrid("unselectAll");
										  
										  $.messager.show({
						            title : '提示',
						            msg : '新增员工 '+data+" 成功"
						          });
									  }
								  }
							  });
						  }
					  });
				  }else{
					  $.messager.alert("警告", "请选中要删除的数据", "warning");
				  }
			  }
		  }
		  
		  $("#carDataGrid").datagrid({
			  url : "rsxz/employeeController_list.html",
        title : '员工列表',
        fitColumns : true, 
        striped : true,    
        rownumbers : true, 
        columns:[[{ 
          field : 'empno',  // field 名必需与json中的名一致
          title : '编号',
          width : 50,
          checkbox : true,
          sortable : true
        }, {
          field : 'realname',
          title : '姓名',
          width : 50,
          sortable : true,
        }, {
         field : 'sex',
         title : '性别',
         width : 50,
         sortable : true,
       }, {
         field : 'dept',
         title : '部门',
         width : 50,
         sortable : true,
       },{
         field : 'job',
         title : '职位',
         width : 50,
         sortable : true,
       },{
         field : 'hiredate',
         title : '入职时间',
         width : 100,
         sortable : true,
       },{
         field : 'state',
         title : '在职状态',
         width : 50,
         sortable : true,
       }]],
       toolbar : "#searchCarForm",
       pagination : true, 
       pageSize : 5,
       pageList : [5, 10, 15, 20, 50 ],
       sortName : "empno", 
       sortOrder : "asc", 
		  });
	  });
	</script>		
</body>
</html>
<script src="/common.js"></script>