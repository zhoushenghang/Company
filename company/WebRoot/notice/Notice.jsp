<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
			<div class="mian_b1">
				<a href="AddNotice.jsp" title="添加">
					<p class="mian_b1_a1"></p>
				</a><a href="#" title="删除">
					<p class="mian_b1_a2"></p>
				</a>
				<p class="mian_b1_sousuo">
					<input name="" type="text">
				</p>
				<a href="#" title="搜索">
					<p class="mian_b1_a3"></p>
				</a><a href="#" title="最后">
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
			<input type="file" name="file1" id="f1" onchange="aa()">
			
		</div>
	</div>
	
</body>
</html>
