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

				<li><a href="productManage.jsp">
						<p>产品管理</p>
				</a></li>
				<li><a href="ProductDetail.jsp">
						<p>产品查看</p>
				</a></li>

			</ul>
		</div>
		<div class="mian_b">
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="mian_b_bg_xz">
				<tr>
					<td width="5%" class="mian_b_bg_lm">&nbsp;</td>
					<td colspan="4" class="mian_b_bg_lm">添加产品</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td width="10%" valign="top">型号：</td>
					<td width="30%"><input type="text" class="input_01"
						name="textfield" id="textfield"></td>
					<td width="40%">&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">品名：</td>
					<td><input type="text" class="input_01" name="textfield"
						id="text1"> <a href="ProductImage.jsp">查看产品图库</a></td>
					<td rowspan="10"><img src="..\images\jj_03.jpg"></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">类别：</td>
					<td><select>
							<option>家具
								<option>饰品
					</select></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">系列：</td>
					<td><select>
							<option>请选择系列
								<option>欧式系列
					</select></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">风格：</td>
					<td><select>
							<option>请选择风格
								<option>欧式风格
					</select></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">规格：</td>
					<td><select>
							<option>请选择风格
								<option>欧式风格
					</select></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">材质：</td>
					<td><select>
							<option>请选择材质
								<option>面料
									<option>五金件
										<option>木饰面
											<option>油漆
												<option>其它
					</select></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">产地：</td>
					<td><input type="text" class="input_01" name="textfield"
						id="text2"></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">单价：</td>
					<td><input type="text" class="input_01" name="textfield"
						id="text3"></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">数量：</td>
					<td><input type="text" class="input_01" name="textfield"
						id="text4"></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">金额：</td>
					<td><input type="text" class="input_01" name="textfield"
						id="text5"></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">进口家具在途：</td>
					<td><input type="text" class="input_01" name="textfield"
						id="text6"></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">备注：</td>
					<td colspan="2"><img src="../images/123.png"></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>
						<div align="center">
							<a href="productManage.jsp"> <img src="..\images\bnt_03.gif"
								style="margin-right: 10px;" width="80" height="22"></a><img
								src="..\images\bnt_05.gif" alt="" width="80" height="22"
								onclick="javascript:history.go(-1);">
						</div>
					</td>
					<td></td>
					<td>&nbsp;</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>
<script src="/common.js"></script>