<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登录 | 拉手网广州</title>
<meta http-equiv="x-ua-compatible" content="IE=7" />
<link rel="shortcut icon" href="/favicon.ico"/>
<link rel="Bookmark" href="http://www.lashou.com/favicon.ico"/>
<link href="http://s2.lashouimg.com/static/css/base80.css" rel="stylesheet" type="text/css">
<link href="http://d1.lashouimg.com/static/css/myls29.css" rel="stylesheet" type="text/css">
<script src="http://d2.lashouimg.com/js/jquery-1.3.2.min.js" type="text/javascript"></script>
<script src="http://s1.lashouimg.com/js/jquery.autocomplete-02-min.js" type="text/javascript"></script>
<script src="http://s2.lashouimg.com/js/base0428-59-min.js" type="text/javascript"></script>
<script src="http://d1.lashouimg.com/js/slider/tb-slider03-min.js"></script>
<style>
#TB_overlay{position:fixed;z-index:99999;top:0px;left:0px;height:100%;width:100%;}.TB_overlayBG{background-color:#000;filter:alpha(opacity=75);-moz-opacity:0.75;opacity:0.75;}* html #TB_overlay{/* ie6 hack */position:absolute;height:expression(document.body.scrollHeight > document.body.offsetHeight ? document.body.scrollHeight:document.body.offsetHeight + 'px');}#TB_window{position:fixed;background:#ffffff;z-index:999999;color:#000000;display:none;border:4px solid #525252;text-align:left;top:50%;left:50%;}* html #TB_window{/* ie6 hack */position:absolute;margin-top:expression(0 - parseInt(this.offsetHeight / 2) + (TBWindowMargin = document.documentElement && document.documentElement.scrollTop || document.body.scrollTop) + 'px');}#TB_title{height:15px;}#TB_ajaxContent{clear:both;overflow:auto;text-align:left;}#TB_ajaxContent.TB_modal{padding:15px;}#TB_load{position:fixed;display:none;height:13px;width:208px;z-index:9999;top:50%;left:50%;margin:-6px 0 0 -104px;/* -height/2 0 0 -width/2 */}* html #TB_load{/* ie6 hack */position:absolute;margin-top:expression(0 - parseInt(this.offsetHeight / 2) + (TBWindowMargin = document.documentElement && document.documentElement.scrollTop || document.body.scrollTop) + 'px');}#TB_HideSelect{z-index:99999;position:fixed;top:0;left:0;background-color:#fff;border:none;filter:alpha(opacity=0);-moz-opacity:0;opacity:0;height:100%;width:100%;}* html #TB_HideSelect{/* ie6 hack */ position:absolute;height:expression(document.body.scrollHeight > document.body.offsetHeight ? document.body.scrollHeight:document.body.offsetHeight + 'px');}#TB_iframeContent{clear:both;border:none;margin-bottom:-1px;margin-top:1px;_margin-bottom:1px;}
</style>


<!--[if IE 6]>
<SCRIPT src="http://s1.lashouimg.com/templates/default//images/iepng.js"></SCRIPT>
<SCRIPT>
DD_belatedPNG.fix('.bq_discount,.news_small,.footlogo span,.n_news,li.eb a,li.eb,.cont-share,.c_cion,.proicon,.cm-over img,.detail-mid h4 span,.c-buy-num img,.hs_cion,.hscon-mid,.hs_pic,.mini-pro-buy,.mini-time,.m-buy-btn002,.m-buy-btn-1,.fpng,.c_other,.prodetail h4 span,.n_hots,.weibo,.wb-tit,.n-rss,.nform,.m_news,.con-item dt,.con-item1,.h-tel-fm1,.h-submit-btn,.hot-hsbtn,.hs_in,.backg,.jxz,.hspayicon,.n_318,.m-pro-info i,.m-pro-t-bg em,a.m-pro-menu,.malldis,.m-pro-info span,.btn_buy,.h-nlist li a,.hc-titl,.hc-titr,.common-item li .xs,.common-item li .xl,.common-item li .xsxl,.hc-feel,.hc-xsxl,.hc-xs,.hc-xl,.mall-mr,.msbutton,.prodetail-sp h4 div,.indexuptop2');
</SCRIPT>
<![endif]-->
</head>
<body>
<!--header start:-->
<div class="header" style=" background:url(http://d2.lashouimg.com/static/pics/www/header_bangy005.jpg) no-repeat;">
	<div class='logo l'><a  href="goods.do"><img src="http://s1.lashouimg.com/static/pics/www/logo-new03.png" alt="拉手网团购" width='152' height='83'></a></div>
	<ul class='city l'>
		<li>已开通城市500+</li>
	</ul>
</div>
<!--nav start:-->
<div class="lsnav">
	<div class="nav-inside">
		 <div class="nav-login r">
								
                   <span id="n_ml" class="nav-my">
						<a class="sub" href="http://www.lashou.com/mycode.php">我的拉手<em></em></a>
						<ul class="n-h-list" style="display:none">
							<li><a href="http://www.lashou.com/mycode.php">我的拉手券</a></li>
							<li><a href="http://www.lashou.com/mygo.php">我的订单</a></li>
							<li><a href="http://www.lashou.com/mycollection.php">我的收藏</a></li>
							<li><a href="http://www.lashou.com/deliver_address.php">常用地址</a></li>
							<li><a href="http://www.lashou.com/bills.php">拉手账本</a></li>
							<li><a href="http://www.lashou.com/settings.php">账户设置</a></li>
							<li><a href="http://www.lashou.com/message.php">我的消息</a></li>
						</ul>
					</span>
					<span><a  class="cur" href="login.jsp">登录</a></span>
					<span><a  href="regist.jsp">注册</a></span>

		   <!--
				  <span class="nav-name"></span>
				  <span class="nav-x"></span>
                   <span id="n_ml" class="nav-my">
						<a class="sub" href="http://www.lashou.com/mycode.php">我的拉手<em></em></a>
						<ul class="n-h-list" style="display:none">
							<li><a href="http://www.lashou.com/mycode.php">我的拉手券</a></li>
							<li><a href="http://www.lashou.com/mygo.php">我的订单</a></li>
							<li><a href="http://www.lashou.com/mycollection.php">我的收藏</a></li>
							<li><a href="http://www.lashou.com/settings.php">账户设置</a></li>
							<li><a href="http://www.lashou.com/deliver_address.php">常用地址</a></li>
							<li><a href="http://www.lashou.com/bills.php">拉手账本</a></li>
							<li><a href="http://www.lashou.com/message.php">我的消息</a></li>
						</ul>
					</span>
				<span><a href="http://www.lashou.com/logout.php">退出</a></span>
		   -->				</div>
	</div>
</div>
<!--nav end-->

<SCRIPT type=text/javascript src="js/jquery.validate.js"></SCRIPT>
<script type="text/javascript">
	$(function() {
		$("#login").validate({
			rules : {
				'users.username' : {
					required : true,
				},
				'users.userpwd' : {
					required : true,
					minlength : 6
				},
				'validateNum' : {
					required : true
				}
			},
			messages : {
				'users.username' : {
					required : '必填',
				},
				'users.userpwd' : {
					required : "请输入密码",
					minlength : "密码不能小于6个字符"
				},
				'validateNum' : {
					required : '必填'
				}
			},
			/* 指定错误信息位置 */
			errorPlacement : function(error, element) {
				var error_td = element.parent('td').children('span');
				error_td.append(error);
			},
		});
	});
</script>
<!--content start:-->
<div class="content">
	<!--content main-l-->
	<div class="main-l l">
		<div class="cont-detail">
			<div class="c_cion detail-bg-t"></div>
			<div class="detail-mid">
				<div class="gbt_line">
					<div class="l">登录<span style="font-size:14px;font-weight:normal"> 或者 <a href="regist.jsp">注册</a></span></div>
					<div class="c"></div>
				</div>
				                				<div class="sect" style="padding-left:80px;">
				<form method="post" action="login.do" id="login">
					<table style="width:500px;font-size:14px;margin-top:10px" border="0" align="center" cellpadding="0" cellspacing="0">
						<tr>
							<td height="45" align="left">用 &nbsp;&nbsp;户&nbsp;&nbsp; 名&nbsp;：
									 <input name="users.username" id="user_id" type="text" class="kuangaa_login" size="28" value=""/><span></span>
							</td>
							<td>
								<div style="width:130px;float:left; border:1px solid #FEBD92;border-radius:4px; background:#FFE9D7; height:26px;line-height:26px;display:none;" id="show_error_msg">
									<div style="float:left; padding:4px 0 0 6px;"><img src="http://s2.lashouimg.com/templates/default//images/kx-0.gif"></div>
									<div style="color:#ee6b00; font-size:12px;" id="msg_show">&nbsp;</div>
								</div>
							</td>
						</tr>
						<tr>
							<td height="45" align="left">密　　　码：
								<input name="users.userpwd" id="pwd" type="password" class="kuangaa_login"  value="" size="28" autocomplete="off"/> <span></span>
							</td>
							<td align="left">
								<div style="width:130px;float:left; border:1px solid #fff;border-radius:4px; background:#fff; height:26px;line-height:26px;">
									<span style="font-size:12px;float:left;"><a href="retrieve_pwd.php">忘记密码?</a></span>
								</div>
							</td>
						</tr>
						<tr>
							<td height="45" align="left">验&nbsp;&nbsp;&nbsp;&nbsp;证&nbsp;&nbsp;&nbsp;码：
								<input type="text" name="validateNum" id="yan" size="4" maxlength="4" class="kuangaa_login" style="width:60px;"/>  <img src="validateImage.jsp" name="chkimg" width="65px" height="20px" align="absmiddle" id="chkimg" style="vertical-align:middle"/> <span onClick="cimg()" style="cursor:pointer;font-size:12px;">看不清，换一张</span>
				  <script>
					function cimg(){
						var changetime =new Date().getTime();
						document.getElementById('chkimg').src='/need/code.php?'+changetime;
					}
				  </script>
							</td>
							<td>
								<div style="width:130px;float:left; border:1px solid #FEBD92;border-radius:4px; background:#FFE9D7; height:26px;line-height:26px;display:none;" id="show_error_msg1">
									<div style="float:left; padding:4px 0 0 6px;"><img src="http://s2.lashouimg.com/templates/default//images/kx-0.gif"></div>
									<div style="color:#ee6b00; font-size:12px;" id="msg_show1">&nbsp;</div>
								</div>
							</td>
						</tr>
						<tr>
							  <td style="padding-left:88px">
								  <input type="checkbox" name="save_pwd" value="on"/>
								  <span style="color:#666;font-size:12px;">下次自动登录</span>
							  </td>
							  <td></td>
						</tr>
						<tr>
							<td>
							  <div style="padding-left:88px;padding-top:20px;padding-bottom:25px">
								<label>
								<input type="hidden" name="url" value="" />
								<input name="submit" type="submit" class="zcbt gdbtn" value="登录" />
								</label>
							  </div>
							</td>
							<td></td>
						</tr>
					</table>
				</form>
                                  
                    
								</div>
			</div>
			<div class="c_cion detail-bg-b"></div>
		</div>
	</div>
	<!--content main-r-->
	<div class="main-r r">
		<!--注册-->
		<div class="ycsamebox">
			<div class="c_cion help-side-t"></div>
			<div class="login-side-mid">
				<dl class="login-side-reg">
					<dt>还没有拉手账户？</dt>
					<dd>立即<a href="regist.jsp">注册</a>，仅需15秒！</dd>
				</dl>
			</div>
			<div class="c_cion help-side-b"></div>
		</div>
	</div>
	<div class="c"></div>
</div>
<!--content end-->

</body>
</html>