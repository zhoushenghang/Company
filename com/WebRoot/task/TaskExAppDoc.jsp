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
				<li><a href="TaskAllot.jsp"><p>任务创建</p></a></li>
				<li><a href="TaskShow.jsp"><p>任务接受查看</p></a></li>
				<li><a href="IssuedTask.jsp"><p>任务下发查看</p></a></li>
			</ul>
		</div>
		<div class="mian_b">
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="mian_b_bg_xz">
				<tr>
					<td width="5%" class="mian_b_bg_lm">&nbsp;</td>
					<td colspan="3" class="mian_b_bg_lm">公文审批</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td width="10%" valign="top">标题：</td>
					<td width="60%">我的事假申请</td>
					<td width="30%">&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td width="10%" valign="top">内容：</td>
					<td width="60%">我的事假申请</td>
					<td width="30%">&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td width="10%" valign="top">附件：</td>
					<td width="60%">我的事假申请 &nbsp;&nbsp;下载</td>
					<td width="30%">&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td width="10%" valign="top">审批结果：</td>
					<td width="60%"><input id="Radio1" type="radio"
						name="checkResult">通过 <input id="Radio2" type="radio"
							name="checkResult">不通过 </td>
					<td width="30%">&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td width="10%" valign="top">审批意见：</td>
					<td width="60%"><img src="../images/123.png"></td>
					<td width="30%">&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>
						<div align="center">
							<a href="IssuedTask.html"><img src="..\images\bnt_03.gif"
								style="margin-right:10px;" width="80" height="22"></a> <img
								src="..\images\bnt_05.gif" alt="" width="80" height="22"
								onclick="javascript:window.history.go(-1);">
						</div>
					</td>
					<td>&nbsp;</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>
<script src="/common.js"></script>