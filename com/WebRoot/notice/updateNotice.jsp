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
				<li><a href="Notice.jsp">
						<p>公告管理</p>
				</a></li>

				<li><a href="NoticeShow.jsp">
						<p>公告查看</p>
				</a></li>
			</ul>
		</div>
		<div class="mian_b">
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="mian_b_bg_xz">
				<tr>
					<td width="5%" class="mian_b_bg_lm">&nbsp;</td>
					<td colspan="3" class="mian_b_bg_lm">修改公告</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td width="10%" valign="top">公告标题：</td>
					<td width="55%"><input type="text" class="input_01"
						name="textfield" id="textfield"></td>
					<td width="35%">&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">有效期：</td>
					<td><input type="text" class="input_01" name="textfield"
						id="text1">-<input type="text" class="input_01"
							name="textfield" id="text2"></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="middle">查看人员：</td>
					<td>
						<table width="100%" border="0" cellpadding="0" cellspacing="0"
							class="mian_b_bg_xz">
							<tr>
								<td width="80%"><input id="Checkbox2" type="checkbox">人事部</td>
								<td></td>
							</tr>
							<tr>
								<td colspan="2"><input id="Checkbox3" type="checkbox">小红<input
										id="Checkbox4" type="checkbox">小张<input id="Checkbox5"
											type="checkbox">小王<input id="Checkbox6"
												type="checkbox">小黑<input id="Checkbox7"
													type="checkbox">小贝 </td>
							</tr>
							<tr>
								<td width="80%"><input id="Checkbox1" type="checkbox">财务部</td>
								<td></td>
							</tr>
							<tr>
								<td colspan="2"><input id="Checkbox8" type="checkbox">小红<input
										id="Checkbox9" type="checkbox">小张<input
											id="Checkbox10" type="checkbox">小王<input
												id="Checkbox11" type="checkbox">小黑<input
													id="Checkbox12" type="checkbox">小贝 </td>
							</tr>
						</table>
					</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">公告内容：</td>
					<td><img src="../images/123.png"></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>
						<div align="center">
							<a href="Notice.jsp"><img src="..\images\bnt_03.gif"
								style="margin-right:10px;" width="80" height="22"></a><img
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