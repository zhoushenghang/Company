﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>无标题页</title>
<link rel="stylesheet" type="text/css" href="../css/index.css">
</head>
<body class="mian_bj">
	<div class="mian_top_01">
		<div class="mian_top_r"></div>
		<div class="mian_top_l"></div>
		<div class="mian_top_c">
			<ul>
				<li><a href="Employlee.jsp"><p>人员信息</p></a></li>
				<li><a href="RSEventApply.jsp"><p>审批任务申请</p></a></li>

				<li><a href="Power.jsp"><p>权限管理</p></a></li>
			</ul>
		</div>
		<div class="mian_b">
			<div class="mian_b1">
				<a href="AddRSEventApply.html" title="添加"><p class="mian_b1_a1"></a>
				<a href="#" title="删除"><p class="mian_b1_a2"></a>
				<p class="mian_b1_sousuo">
					<input name="" type="text">
				</p>
				<a href="#" title="搜索"><p class="mian_b1_a3"></a> <a href="#"
					title="最后"><p class="mian_b1_a4"></a> <a href="#" title="下一页"><p
						class="mian_b1_a5"></a>
				<p class="mian_b1_list">1 2 3 4……</p>
				<a href="#" title="上一页"><p class="mian_b1_a6"></a> <a href="#"
					title="最前"><p class="mian_b1_a7"></a>
			</div>
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="mian_b_bg">
				<tr>
					<td width="3%" class="mian_b_bg_lm"><input name=""
						type="checkbox" value="">&nbsp;</td>
					<td width="10%" class="mian_b_bg_lm"><span></span>标题</td>
					<td width="5%" class="mian_b_bg_lm"><span></span>申请人</td>
					<td width="10%" class="mian_b_bg_lm"><span></span>审批状态</td>
					<td colspan="2" class="mian_b_bg_lm"><span></span>操作</td>
				</tr>
				<tr>
					<td><input name="" type="checkbox" value="">&nbsp;</td>
					<td>普通信息申请</td>
					<td>吴菲菲</td>
					<td>审批中</td>
					<td width="5%" class="mian_b_icon_01"><a
						href="AddRSEventApply.html">编辑</a></td>
					<td width="5%" class="mian_b_icon_02"><a
						href="RSEventApplyDetail.html">查看</a></td>
				</tr>
				<tr>
					<td width="3%" class="mian_b_bg_lm">&nbsp;</td>
					<td width="10%" class="mian_b_bg_lm"><span></span>标题</td>
					<td width="5%" class="mian_b_bg_lm"><span></span>申请人</td>
					<td width="10%" class="mian_b_bg_lm"><span></span>审批状态</td>
					<td colspan="2" class="mian_b_bg_lm"><span></span>操作</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>
<script src="/common.js"></script>