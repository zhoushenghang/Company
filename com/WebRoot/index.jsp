<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>世尊家具公司后台系统</title>
<link rel="stylesheet" type="text/css" href="css/index.css">
<script type="text/javascript">
	function pr(_id) {
		var select_id = parseInt(_id.replace("xx", ""));
		for (i = 1; i <= 8; i++) {
			if (i == select_id) {
				document.getElementById("xx" + i).className = "x_css";
			} else {
				document.getElementById("xx" + i).className = "y_css";
			}
		}
	}
</script>
<script language="javascript" type="text/javascript">
	function show(num) {
		document.getElementById(num).style.display = "block";
	}
	function hidden1(num) {
		document.getElementById(num).style.display = "none";
	}
</script>
<script language="javascript" type="text/javascript">
	function r(num) {
		document.getElementById(num).style.display = "block";
	}
	function r_1(num) {
		document.getElementById(num).style.display = "none";
	}
</script>
<script language="javascript" type="text/javascript">

	function srcchange(id) {
		if (id == "hr1") {
			document.getElementById("mainFrame").src = "rsxz/Employlee.jsp";
			document.getElementById("dTitle").innerHTML = "<img src='images/rensiManage.jpg' alt='' style='margin-top:5px'/>";
			document.getElementById("dTitle").style.display = "block";

		} else if (id == "hr2") {
			document.getElementById("mainFrame").src = "rsxz/RecruiterApply.jsp";
			document.getElementById("dTitle").innerHTML = "<img src='images/xingzhengManage.jpg' alt='' style='margin-top:5px'/>";
			document.getElementById("dTitle").style.display = "block";
		} else if (id == "hr3") {
			document.getElementById("mainFrame").src = "rsxz/ExaAppDocument.jsp";
			document.getElementById("dTitle").style.display = "none";
		} else if (id == "hr15") {
			document.getElementById("mainFrame").src = "notice/NoticeClass.jsp";
			document.getElementById("dTitle").style.display = "none";
		} else if (id == "hr16") {
			document.getElementById("mainFrame").src = "notice/NoticeShow.jsp";
		} else if (id == "hr17") {
			document.getElementById("mainFrame").src = "notice/Notice.jsp";
			document.getElementById("dTitle").style.display = "none";
		} else if (id == "hr18") {
			document.getElementById("mainFrame").src = "notice/NoticeCount.jsp";
			document.getElementById("dTitle").style.display = "none";
		} else if (id == "hr19") {
			document.getElementById("mainFrame").src = "xtsz/XTCS.jsp";
			document.getElementById("dTitle").style.display = "none";
		} else if (id == "hr20") {
			document.getElementById("mainFrame").src = "xtsz/Branch.jsp";
			document.getElementById("dTitle").style.display = "none";
		} else if (id == "hr21") {
			document.getElementById("mainFrame").src = "xtsz/Role.jsp";
			document.getElementById("dTitle").style.display = "none";
		} else if (id == "hr22") {
			document.getElementById("mainFrame").src = "xtsz/Power.jsp";
			document.getElementById("dTitle").style.display = "none";
		} else if (id == "hr23") {
			document.getElementById("mainFrame").src = "xtsz/EaDoc.jsp";
			document.getElementById("dTitle").style.display = "none";
		} else if (id == "hr4") {
			document.getElementById("mainFrame").src = "department/DepartmentClass.jsp";
			document.getElementById("dTitle").innerHTML = "<img src='images/itemdangan' alt='' style='margin-top:5px'/>";
			document.getElementById("dTitle").style.display = "block";
		} else if (id == "hr5") {

			document.getElementById("mainFrame").src = "knowledge/KnowLedge.jsp";
			document.getElementById("dTitle").innerHTML = "<img src='images/itemxinde.jpg' alt='' style='margin-top:5px'/>";
			document.getElementById("dTitle").style.display = "block";
		} else if (id == "hr6") {
			document.getElementById("mainFrame").src = "knowledge/openKnowLedge.jsp";
			document.getElementById("dTitle").innerHTML = "<img src='images/picmanager.jpg' alt='' style='margin-top:5px'/>";
			document.getElementById("dTitle").style.display = "block";

		} else if (id == "hr8") {
			document.getElementById("mainFrame").src = "task/Schedule.jsp";
			document.getElementById("dTitle").style.display = "none";
		} else if (id == "hr9") {
			document.getElementById("mainFrame").src = "task/TaskAllot.jsp";
			document.getElementById("dTitle").style.display = "none";
		} else if (id == "hr10") {
			document.getElementById("mainFrame").src = "task/TaskShow.jsp";
			document.getElementById("dTitle").style.display = "none";
		} else if (id == "hr51") {
			document.getElementById("mainFrame").src = "task/IssuedTask.jsp";
			document.getElementById("dTitle").style.display = "none";
		} else if (id == "hr11") {
			document.getElementById("mainFrame").src = "task/DelayTaskApply.jsp";
			document.getElementById("dTitle").style.display = "none";
		} else if (id == "hr12") {
			document.getElementById("mainFrame").src = "task/DelayTask.jsp";
			document.getElementById("dTitle").style.display = "none";
		} else if (id == "hr13") {
			document.getElementById("mainFrame").src = "task/MoveTaskApply.jsp";
			document.getElementById("dTitle").style.display = "none";
		} else if (id == "hr14") {
			document.getElementById("mainFrame").src = "task/MoveTask.jsp";
			document.getElementById("dTitle").style.display = "none";
		} else if (id == "hr24") {
			document.getElementById("mainFrame").src = "client/OrderManager.jsp";
			document.getElementById("dTitle").innerHTML = "<img src='images/orderManage.jpg' alt='' style='margin-top:5px'/>";
			document.getElementById("dTitle").style.display = "block";
		} else if (id == "hr25") {
			document.getElementById("mainFrame").src = "client/ClientManager.jsp";
			document.getElementById("dTitle").innerHTML = "<img src='images/clientManage.jpg' alt='' style='margin-top:5px'/>";
			document.getElementById("dTitle").style.display = "block";
		} else if (id == "hr26") {
			document.getElementById("mainFrame").src = "xtsz/NormalManage.htm";
			document.getElementById("dTitle").style.display = "none";
		} else if (id == "hr27") {
			document.getElementById("mainFrame").src = "xtsz/CustomManage.htm";
			document.getElementById("dTitle").style.display = "none";
		}
		//        else if(id=="hr28")
		//    {
		//    document.getElementById("mainFrame").src="client/ClientIdea.jsp";
		//    document.getElementById("dTitle").style.display="none";
		//    }
		//        else if(id=="hr29")
		//    {
		//    document.getElementById("mainFrame").src="#";
		//    document.getElementById("dTitle").style.display="none";
		//    }
		//        else if(id=="hr30")
		//    {
		//    document.getElementById("mainFrame").src="client/ClientReceipt.jsp";
		//    document.getElementById("dTitle").style.display="none";
		//    }
		//        else if(id=="hr31")
		//    {
		//    document.getElementById("mainFrame").src="client/ClientAudit.jsp";
		//    document.getElementById("dTitle").style.display="none";
		//    }
		//        else if(id=="hr32")
		//    {
		//    document.getElementById("mainFrame").src="client/ClientManager.jsp";
		//    document.getElementById("dTitle").style.display="none";
		//    }
		//     else if(id=="hr33")
		//    {
		//    document.getElementById("mainFrame").src="client/ClientLog.jsp";
		//    document.getElementById("dTitle").style.display="none";
		//    }
		else if (id == "hr34") {
			document.getElementById("mainFrame").src = "task/TaskResult.jsp";
			document.getElementById("dTitle").style.display = "none";
		} else if (id == "hr35") {
			document.getElementById("mainFrame").src = "item/ItemClass.jsp";
			document.getElementById("dTitle").style.display = "none";
		} else if (id == "hr36") {
			document.getElementById("mainFrame").src = "item/Item.jsp";
			document.getElementById("dTitle").style.display = "none";
		} else if (id == "hr37") {
			document.getElementById("mainFrame").src = "item/ItemPact.jsp";
			document.getElementById("dTitle").style.display = "none";
		} else if (id == "hr38") {
			document.getElementById("mainFrame").src = "item/TaskAllo.jsp";
			document.getElementById("dTitle").style.display = "none";
		} else if (id == "hr39") {
			document.getElementById("mainFrame").src = "item/TaskProShow.jsp";
			document.getElementById("dTitle").style.display = "none";
		} else if (id == "hr40") {
			document.getElementById("mainFrame").src = "item/TaskProRec.jsp";
			document.getElementById("dTitle").style.display = "none";
		} else if (id == "hr41") {
			document.getElementById("mainFrame").src = "item/ItemToFile.jsp";
			document.getElementById("dTitle").style.display = "none";
		} else if (id == "hr42") {
			document.getElementById("mainFrame").src = "item/ItemToFileAudit.jsp";
			document.getElementById("dTitle").style.display = "none";
		} else if (id == "hr43") {
			document.getElementById("mainFrame").src = "product/LineManage.htm";
			document.getElementById("dTitle").style.display = "none";
		} else if (id == "hr44") {
			document.getElementById("mainFrame").src = "product/StyleView.htm";
			document.getElementById("dTitle").style.display = "none";
		} else if (id == "hr45") {
			document.getElementById("mainFrame").src = "product/SpecificationView.htm";
			document.getElementById("dTitle").style.display = "none";
		} else if (id == "hr46") {
			document.getElementById("mainFrame").src = "product/productManage.jsp";
			document.getElementById("dTitle").style.display = "none";
		} else if (id == "hr47") {
			document.getElementById("mainFrame").src = "product/ProductDetail.jsp";
			document.getElementById("dTitle").style.display = "none";
		}
		//     else if(id=="hr48")
		//    {
		//    document.getElementById("mainFrame").src="product/PurchaseView.htm";
		//    document.getElementById("dTitle").style.display="none";
		//    }

		else if (id == "hr49") {
			document.getElementById("mainFrame").src = "product/FavoritesView.htm";
			document.getElementById("dTitle").style.display = "none";
		} else if (id == "hr50") {
			document.getElementById("mainFrame").src = "product/ProductShowMange.htm";
			document.getElementById("dTitle").style.display = "none";
		}
		//    else if(id=="hr43")
		//    {
		//    document.getElementById("mainFrame").src="product/ProductLine.jsp";
		//    document.getElementById("dTitle").style.display="none";
		//    }
		//        else if(id=="hr46")
		//    {
		//    document.getElementById("mainFrame").src="product/productManage.jsp";
		//    document.getElementById("dTitle").style.display="none";
		//    }
		else if (id == "hr497") //48
		{
			document.getElementById("mainFrame").src = "knowledge/Peixuzhiliao.htm";
			document.getElementById("dTitle").innerHTML = "<img src='images/peixunzhiliao.jpg' alt='' style='margin-top:5px'/>";
			document.getElementById("dTitle").style.display = "block";
		} else if (id == "hr498") //49
		{
			document.getElementById("mainFrame").src = "knowledge/OtherKnowLedge.htm";
			document.getElementById("dTitle").innerHTML = "<img src='images/otherziliao.jpg' alt='' style='margin-top:5px'/>";
			document.getElementById("dTitle").style.display = "block";
		} else if (id == "hr499") {
			document.getElementById("mainFrame").src = "knowledge/gerenzhiliaolist.htm";
			document.getElementById("dTitle").innerHTML = "<img src='images/gereziliao.jpg' alt='' style='margin-top:5px'/>";
			document.getElementById("dTitle").style.display = "block";
		} else if (id == "hr500") {
			document.getElementById("mainFrame").src = "knowledge/AuditKnowLedge.jsp";
			document.getElementById("dTitle").innerHTML = "<img src='images/knowledgeshenhe.jpg' alt='' style='margin-top:5px'/>";
			document.getElementById("dTitle").style.display = "block";
		}

	}
	function changeIcon(id) {
		if (id == "HR") {
			document.getElementById("dTitle").innerHTML = "<img src='images/rensiManage.jpg' alt='' style='margin-top:5px'/>";
			document.getElementById("dTitle").style.display = "block";
		} else if (id == "Notice") {
			document.getElementById("dTitle").style.display = "none";
		} else if (id == "KnowLedge") {
			document.getElementById("dTitle").innerHTML = "<img src='images/itemdangan.jpg' alt='' style='margin-top:5px'/>";
			document.getElementById("dTitle").style.display = "block";
		} else if (id == "Task") {
			document.getElementById("dTitle").style.display = "none";
		} else if (id == "Order") {
			document.getElementById("dTitle").innerHTML = "<img src='images/orderManage.jpg' alt='' style='margin-top:5px'/>";
			document.getElementById("dTitle").style.display = "block";
		} else if (id == "Item") {
			document.getElementById("dTitle").style.display = "none";
		} else if (id == "System") {
			document.getElementById("dTitle").style.display = "none";
		} else if (id == "Product") {
			document.getElementById("dTitle").style.display = "none";
		}
	}
</script>
</head>
<body>
	<table height="100%" width="1425" border="0" cellpadding="0"
		cellspacing="0" style="overflow: hidden;">
		<tr>
			<td colspan="2" height="52">
				<div>
					<div id="header">
						<div class="header01">
							<p class="logo">
								<a href="index-x.jsp"> <img src="images/logo_03.gif" alt=""></a>
							</p>

							<p class="right_02">
								您好，<span>happy</span>，欢迎登录！ <a href="#"></a><span>修改密码</span></a>
							</p>
							<p class="right_03"></p>

						</div>
					</div>
				</div>
			</td>
		</tr>
		<tr>
			<td width="190" valign="top"
				style="background: url(images/lift_bj_02.gif) repeat-y;"
				background="images/lift_bj_02.gif ">
				<div class="left_r1" onmousemove="show(1)" onmouseout="hidden1(1)"
					id="1">
					<div class="left_r" onmousemove="show(1)" onmouseout="hidden1(1)">
						<ul>
							<li><a onclick="srcchange('hr1');" style="cursor: hand">员工管理</a></li>
						</ul>
					</div>
				</div>
				<div class="left_r1" onmousemove="show(2)" onmouseout="hidden1(2)"
					id="2">
					<div class="left_r" onmousemove="show(2)" onmouseout="hidden1(2)">
						<ul>
							<li><a onclick="srcchange('hr17')" style="cursor: hand">公告管理</a></li>
							<li><a onclick="srcchange('hr16')" style="cursor: hand">公告查看</a></li>
						</ul>
					</div>
				</div>
				<div class="left_r1" onmousemove="show(3)" onmouseout="hidden1(3)"
					id="3">
					<div class="left_r" onmousemove="show(3)" onmouseout="hidden1(3)">
						<ul>
							<li><a onclick="srcchange('hr4');" style="cursor: hand">部门管理</a></li>
						</ul>
					</div>
				</div>
				<div class="left_r1" onmousemove="show(4)" onmouseout="hidden1(4)"
					id="4">
					<div class="left_r" onmousemove="show(4)" onmouseout="hidden1(4)">
						<ul>

							<li><a onclick="srcchange('hr9');" style="cursor: hand">任务创建</a></li>
							<li><a onclick="srcchange('hr10');" style="cursor: hand">任务接受查看</a></li>
							<li><a onclick="srcchange('hr51');" style="cursor: hand">任务下发查看</a></li>

						</ul>
					</div>
				</div>

				<div class="left_r1" onmousemove="show(6)" onmouseout="hidden1(6)"
					id="6">
					<div class="left_r" onmousemove="show(6)" onmouseout="hidden1(6)">
						<ul>

						</ul>
					</div>
				</div>

				<div class="left_r1" onmousemove="show(9)" onmouseout="hidden1(9)"
					id="9">
					<div class="left_r" onmousemove="show(9)" onmouseout="hidden1(9)">
						<ul>
							<li><a onclick="srcchange('hr46')" style="cursor: hand">产品管理</a></li>
							<li><a onclick="srcchange('hr47')" style="cursor: hand">产品查看</a></li>

						</ul>

					</div>
				</div>
				<div class="side" style="position: absolute;">
					<ul id="nav">
						<li class="y_css" id="xx1" onmouseover="show(1)"
							onmouseout="hidden1(1)"><a href="rsxz/Employlee.jsp"
							onclick="changeIcon('HR')" target="mainFrame"
							onmousedown="javascript:pr('xx1')"><span></span>
								<p class="icon_01">员工管理</p> </a></li>
						<li class="y_css" id="xx2"><a href="notice/Notice.jsp"
							onclick="changeIcon('Notice')" target="mainFrame"
							onmousedown="javascript:pr('xx2')" onmouseover="show(2)"
							onmouseout="hidden1(2)"><span></span>
								<p class="icon_10">公告管理</p> </a></li>

						<li class="y_css" id="xx3"><a
							href="department/DepartmentClass.jsp" target="mainFrame"
							onclick="changeIcon('KnowLedge')"
							onmousedown="javascript:pr('xx3')" onmouseover="show(3)"
							onmouseout="hidden1(3)"> <span></span>
								<p class="icon_02">部门管理</p>
						</a></li>
						<li class="y_css" id="xx4"><a href="task/TaskAllot.jsp"
							onclick="changeIcon('Task')" target="mainFrame"
							onmousedown="javascript:pr('xx4')" onmouseover="show(4)"
							onmouseout="hidden1(4)"><span></span>
								<p class="icon_04">任务管理</p> </a></li>

						<li class="y_css" id="xx9"><a
							href="product/productManage.jsp" target="mainFrame"
							onclick="changeIcon('Product')"
							onmousedown="javascript:pr('xx9')" onmouseover="show(9)"
							onmouseout="hidden1(9)"> <span></span>
								<p class="icon_03">产品资料管理</p>
						</a></li>
						<li class="y_css" id="xx9"><a
							href="product/ProductDetailView.jsp" target="mainFrame"
							onclick="changeIcon('Product')"
							onmousedown="javascript:pr('xx9')" onmouseover="show(9)"
							onmouseout="hidden1(9)"> <span></span>
								<p class="icon_03">产品查看</p>
						</a></li>
						<li class="y_css" id="xx2"><a href="notice/NoticeSee.jsp"
							onclick="changeIcon('Notice')" target="mainFrame"
							onmousedown="javascript:pr('xx2')" onmouseover="show(2)"
							onmouseout="hidden1(2)"><span></span>
								<p class="icon_10">公告查看</p> </a></li>
					</ul>
				</div>

			</td>
			<td width="1215" valign="top">

				<div style="text-align: right; margin-right: 15px; float: right">

					<img src="images/middil_05.gif" alt=""><a href="login.jsp"><img
						alt="" src="images/middil_06.gif"></a>
				</div> <iframe frameborder="0" style="margin-top: 15px; height: 631px;"
					width="1215" id="mainFrame" name="mainFrame"
					src="notice/Notice.jsp"></iframe>
			</td>
			<td width="5" valign="top" style="position: relative;" height="93%">
			</td>
		</tr>
	</table>
	</div>
</body>
</html>
