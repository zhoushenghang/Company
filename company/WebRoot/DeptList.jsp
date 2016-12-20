<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>Dept</title>
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css"
	href="easyui/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css"
	href="easyui/themes/icon.css" />
<script
	src="easyui/jquery.min.js"></script>
<script
	src="easyui/jquery.easyui.min.js"></script>
<script
	src="easyui/locale/easyui-lang-zh_CN.js"></script>
</head>

<body>
	<div class="mian_top_01">
		<div class="mian_top_r"></div>
		<div class="mian_top_l"></div>
		<div class="mian_top_c">
			<ul>
				<li><a href="DeptList.jsp">
						<p>部门信息</p>
				</a></li>
			</ul>
		</div>
	<div  class="mian_b">
	
	  <div id="searchCarForm" >
	    <div style="margin-bottom: 10px">
	      <a href="#" class="easyui-linkbutton" plain="true" 
          iconCls="icon-add" onclick="car_obj.showEdit('add')">新增</a>
        <a href="#" class="easyui-linkbutton" plain="true"
          iconCls="icon-edit" onclick="car_obj.showEdit('modify')">修改</a>
      
	    </div>
	    <div id="editCar"></div>
	  
		  <div style="padding: 0 0 0 6px">
		    <input class="easyui-textbox" id="dname" size="6">
		    
		    <a href="#" class="easyui-linkbutton" 
		      iconCls="icon-search" onclick="car_obj.search()">查询</a>
		  </div>
		</div>

		<div style="margin-top: 10px">
			<table id="carDataGrid">

			</table>
		</div>
	</div>
	</div>
	<script type="text/javascript">
		$(function() {
			car_obj = {
				search : function() {
					$("#carDataGrid").datagrid('load', {
						dname : $.trim($("#dname").val()),
					});
				},
				showEdit : function(state) {
					var url = "";
					var info = "";
					if (state == 'add') {
						url = "addDept.jsp";
						info = "新增部门";
					} else {
						info = "修改部门";
						var rows = $('#carDataGrid').datagrid("getSelections");
						if (rows.length == 1) {
							url = "deptController_findById?deptno=" + rows[0].deptno;
						} else {
							$.messager.alert("警告", "必须只选中一行", "warning");
							return;
						}
					}
					$("#editCar").window({
						title : info,
						width : 600,
						height : 640,
						modal : true,
						minimizable : false,
						href : url,
						onClose : function() {
							$("#carDataGrid").datagrid('reload');
						}
					});
				},
				remove : function() {
					var rows = $('#carDataGrid').datagrid("getSelections");
					if (rows.length > 0) {
						$.messager.confirm("消息", "确认真的要删除所选的数据吗", function(flag) {
							if (flag) {
								var ids = [];
								for (var i = 0; i < rows.length; i++) {
									// 1 2 3 4 => [1 2 3 4]
									ids.push(rows[i].id);
								}
	
								$.ajax({
									type : 'post',
									url : "deptController_remove",
									// [1 2 3 4] => 1,2,3,4
									data : {
										ids : ids.join(",")
									},
									beforeSend : function() {
										$("#carDataGrid").datagrid("loading");
									},
									success : function(data) {
										if (data) {
											$("#carDataGrid").datagrid("loaded");
											$("#carDataGrid").datagrid("load");
											$("#carDataGrid").datagrid("unselectAll");
	
											$.messager.show({
												title : '提示',
												msg : '增加部门 ' + data + " 成功"
											});
										}
									}
								});
							}
						});
					} else {
						$.messager.alert("警告", "请选中要删除的数据", "warning");
					}
				}
			}
	
			$("#carDataGrid").datagrid({
				url : "deptController_list.html",
				title : '部门列表',
				fitColumns : true,
				striped : true,
				rownumbers : true,
				columns : [ [ {
					field : 'deptno', // field 名必需与json中的名一致
					title : '编号',
					width : 50,
					checkbox : true,
					sortable : true
				}, {
					field : 'dname',
					title : '部门',
					width : 50,
					sortable : true,
				}, {
					field : 'remark',
					title : '备注',
					width : 200,
					sortable : true,
				} ] ],
				toolbar : "#searchCarForm",
				pagination : true,
				pageSize : 5,
				pageList : [ 5, 10, 15, 20, 50 ],
				sortName : "deptno",
				sortOrder : "asc",
			});
		});
	</script>
</body>
</html>





