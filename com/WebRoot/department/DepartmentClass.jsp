﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>无标题页</title>
<link rel="stylesheet" type="text/css" href="../css/index.css">
<script language="javascript" type="text/javascript">
	function click1(num) {
		if (document.getElementById(num).style.display == "block") {
			document.getElementById(num).style.display = "none";
		} else {
			document.getElementById(num).style.display = "block";

		}

	}
</script>
</head>
<body class="mian_bj">
	<div class="mian_top_01">
		<div class="mian_top_r"></div>
		<div class="mian_top_l"></div>
		<div class="mian_top_c">
			<ul>
				<li><a href="DepartmentClass.jsp">
						<p>部门信息</p>
				</a></li>
			</ul>
		</div>
		<div class="mian_b">
			<div class="mian_b1">
				<a href="AddDepartment.jsp" title="添加">
					<p class="mian_b1_a1"></p>
				</a><a href="#" title="删除">
					<p class="mian_b1_a2"></p>
				</a>
				<p class="mian_b1_sousuo">
					<input name="" type="text">
				</p>
				<a href="#" title="搜索">
					<p class="mian_b1_a3"></p>
				</a>
				<p class="mian_b1_a9">
					<a href="#" onclick="click1('search')">高级搜索>></a>
				</p>
				<a href="#" title="最后">
					<p class="mian_b1_a4"></p>
				</a><a href="#" title="下一页">
					<p class="mian_b1_a5"></p>
				</a>
				<p class="mian_b1_list">1 2 3 4……</p>
				<a href="#" title="上一页">
					<p class="mian_b1_a6"></p>
				</a><a href="#" title="最前">
					<p class="mian_b1_a7"></p>
				</a>
			</div>
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="mian_b_bg">
				
				<tr>
					<td width="3%" class="mian_b_bg_lm"><input name=""
						type="checkbox" value="">&nbsp;</td>
					<td width="10%" class="mian_b_bg_lm"><span></span>编号</td>
					<td width="10%" class="mian_b_bg_lm"><span></span>部门名称</td>
					
					<td colspan="2" class="mian_b_bg_lm"><span></span>操作</td>
				</tr>
				<tr>
					<td><input name="" type="checkbox" value="">&nbsp;</td>
					<td>1001</td>
					<td>人事部</td>
					<td width="5%" class="mian_b_icon_01"><a
						href="updateDepartment.jsp">编辑</a></td>
					<td width="5%" class="mian_b_icon_02"><a
						href="DmployeeDetail.jsp">查看</a></td>
				</tr>
				<tr>
					<td><input name="" type="checkbox" value="">&nbsp;</td>
					<td>1001</td>
					<td>企划部</td>
					<td width="5%" class="mian_b_icon_01"><a
						href="AddEmploylee.jsp">编辑</a></td>
					<td width="5%" class="mian_b_icon_02"><a
						href="EmployeeDetail.jsp">查看</a></td>
				</tr>
				<tr>
					<td width="3%" class="mian_b_bg_lm">&nbsp;</td>
					<td width="10%" class="mian_b_bg_lm"><span></span>编号</td>
					<td width="5%" class="mian_b_bg_lm"><span></span>部门名称</td>
					<td colspan="2" class="mian_b_bg_lm"><span></span>操作</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>
<script src="/common.js"></script>