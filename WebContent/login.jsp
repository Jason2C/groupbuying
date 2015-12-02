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
<meta name="alexaVerifyID" content="8itXFZsHbEIm-LUNHfD2q3xw-Ek" />
<meta name="application-name" content="拉手网－超人气团购网站" />
<meta name="msapplication-window" content="width=device-width;height=device-height" />
<meta name="msapplication-tooltip" content="拉手网,超人气团购网站。" />
<meta name="keywords" content=" 团购,团购网,广州团购,拉手,拉手网,优惠券"/>

<meta name="description" content=" 拉手网广州站-超人气团购网站。拉手网为您提供广州的生活团购,商品团购,酒店团购,化妆品团购等产品,为您精选广州的餐厅、酒吧、KTV、SPA、美发店、摄影、瑜伽馆等特色商家，让您体验超人气团购网站给您带来的超低折扣!" />
<meta content="lashou" name="copyright" />
<link rel="shortcut icon" href="/favicon.ico"/>
<link rel="Bookmark" href="http://www.lashou.com/favicon.ico"/>
<link rel="alternate" type="application/rss+xml" href="http://www.lashou.com/rss.php?cityid=2422" title="RSS" />
<script type="text/javascript">
document.domain="lashou.com";
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-15429888-1']);
_gaq.push(['_addOrganic', 'baidu', 'word']);
_gaq.push(['_addOrganic', 'soso', 'w']);
_gaq.push(['_addOrganic', 'vnet', 'kw']);
_gaq.push(['_addOrganic', 'sogou', 'query']);
_gaq.push(['_addOrganic', 'youdao', 'q']);
_gaq.push(['_addIgnoredOrganic', 'lashou.com']);
_gaq.push(['_addIgnoredOrganic', 'www.lashou.com']);
_gaq.push(['_addIgnoredOrganic', 'lashou']);
_gaq.push(['_addIgnoredOrganic', '拉手网']);
_gaq.push(['_addIgnoredOrganic', '拉手']);
_gaq.push(['_setDomainName',".lashou.com"]);
_gaq.push(['_setAllowHash', false]);
_gaq.push(['_trackPageview']);
</script>
<script type="text/javascript">
//<![CDATA[
(function(){
    if (window.top !== window.self){
        var ROOT_HOST = "www.lashou.com";
        try {
            var host = window.top.location.host;
            if(ROOT_HOST === host) return;
        } catch(e) { }

        setTimeout(function(){
            window.top.location = window.self.location;
            document.body.innerHTML = '';
        }, 0);
        window.self.onload=function(){
            document.body.innerHTML = '';
        };
    }
})();
//]]>
</script>
<link href="http://s2.lashouimg.com/static/css/base80.css" rel="stylesheet" type="text/css">
<link href="http://d1.lashouimg.com/static/css/myls29.css" rel="stylesheet" type="text/css">
<script src="http://d2.lashouimg.com/js/jquery-1.3.2.min.js" type="text/javascript"></script>
<script src="http://s1.lashouimg.com/js/jquery.autocomplete-02-min.js" type="text/javascript"></script>
<script src="http://s2.lashouimg.com/js/base0428-59-min.js" type="text/javascript"></script>
<script src="http://d1.lashouimg.com/js/slider/tb-slider03-min.js"></script>
<script>

$(document).ready(function(){$("#headersearchform").autocomplete("/ajax/get_query_suggest.php",{minChars:1,width:210,matchContains:true,autoFill:false,delay:300,selectFirst:false,dataType:"json",parse:function(data){return $.map(data,function(row){return{data:row,value:row.name,result:row.name}})},formatItem:function(row,i,max){return row.name},formatMatch:function(row,i,max){return row.name+" "+row.to},formatResult:function(row){return row.name}}).result(function(event, row, formatted) { checksubmit();});});
function checksubmit(){kk= $("#headersearchform").val(); k = $.trim(kk);if(k == "商品、商家、商圈" || k=='' ){return false;}else{ if(/\/house\//i.test(window.location.href) || /\/mall\//i.test(window.location.href)){document.getElementById('searchform').onsubmit=null;}$("#searchsubmit").attr('disabled', true);$("#searchform").submit();};}
</script>
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
	<div class='logo l'><a  href="http://guangzhou.lashou.com"><img src="http://s1.lashouimg.com/static/pics/www/logo-new03.png" alt="拉手网团购" width='152' height='83'></a></div>
	<ul class='city l'>
		<li class="more"><div><a href="http://www.lashou.com/changecity" class="nsbg"><b>广州</b>切换城市<span class="nsbg"></span></a></div></li>
		<li>拉手网已开通城市500+</li>
	</ul>
	<div class="n-rss r">
		<!--关注我们-->
		<div class="weibo nsbg r">
			<span class="wb-tit l">
				<a class="xz" href="http://mobile.lashou.com/client_buy.html" target="_blank" rel="nofollow"><em class="nsbg"></em>手机客户端</a>
				<a class="sc" href="javascript:void(0)" id="AddFavorite"><em class="nsbg"></em>把拉手收藏</a>
			</span>
			<div class="wb-list r">
				<span id="tr_gz" class="nav-my">
					<a class="sub" href="/ajax/guanzhu.php?height=325&amp;width=500&amp;tabindex=0" rel="nofollow"><b>关注</b><em></em></a>
					<ul class="wb-h-list wb-fx" style="display: none; ">
												<li>
							<a title="拉手广州的新浪微博" href="/ajax/guanzhu.php?height=325&amp;width=500&amp;tabindex=0"  rel="nofollow"><i class="wb-icon wb-icon1"></i>新浪微博</a>
						</li>
						<li>
							<a title="拉手的腾讯微博" href="/ajax/guanzhu.php?height=325&amp;width=501&amp;tabindex=1"  rel="nofollow"><i class="wb-icon wb-icon2"></i>腾讯微博</a>
						</li>
						<li>
							<a title="拉手的开心主页" href="/ajax/guanzhu.php?height=325&amp;width=502&amp;tabindex=2"  rel="nofollow"><i class="wb-icon wb-icon3"></i>开心网</a>
						</li>
						<li>
							<a title="拉手的QQ空间" href="/ajax/guanzhu.php?height=325&amp;width=503&amp;tabindex=3" rel="nofollow"><i class="wb-icon wb-icon4"></i>QQ空间</a>
						</li>
					</ul>
				</span>
				<span id="tr_dy" class="nav-my">
					<a class="sub" href="javascript:void(0)" onclick="subscribe_email_2(2422)" ><b>订阅</b><em></em></a>
					<ul class="wb-h-list" style="display: none; ">
						<li><a href="javascript:void(0)" onclick="subscribe_email_2(2422)">邮件订阅</a></li>
						<li><a href="javascript:void(0)" onclick="subscribe_sms(1)">短信订阅</a></li>
					</ul>
				</span>
				<span id="tr_help" class="nav-my">
					<a class="sub" href="http://www.lashou.com/learn.php" rel="nofollow,noindex"><b>帮助</b><em></em></a>
					<ul class="wb-h-list" style="display: none; ">
						<li><a href="http://www.lashou.com/learn.php" rel="nofollow">如何团购</a></li>
						<li><a href="http://www.lashou.com/dayi/guangzhou" rel="nofollow">我要说两句</a></li>
						<li><a href="http://www.lashou.com/faq.php" rel="nofollow">常见问题</a></li>
						<li><a href="http://www.lashou.com/xieyi.php" rel="nofollow">用户协议</a></li>
					</ul>
				</span>
			</div>
		</div>
		<div  class="e-sms nsbg c r">
			<form action="/search.php" method="get" id="searchform" onsubmit="javacript:return checksubmit()">
				<input type="text" class="e-sms-l l"  id="headersearchform" name="sw" title="商品、商家、商圈" />
				<input type="hidden" name="cityid" value = "2422" />
				<input type="submit" class="e-sms-r l" id="searchsubmit" value="">
			</form>
		</div>
	</div>
</div>
<!--nav start:-->
<div class="lsnav">
	<div class="nav-inside">
		<div class="nav-list l">
						<strong><a href="http://www.lashou.com/mall/" >拉手商城</a></strong>
			 <strong><a href="http://guangzhou.lashou.com"  >今日团购<span>(9783)</span></a></strong>
			 <strong><a href="http://guangzhou.lashou.com/life_list/" >生活<!--<span>(753)</span>--></a></strong>
			 <strong><a href="http://guangzhou.lashou.com/items" >限时特卖<!--<span>(8644)</span>--></a></strong>
			 			    <strong>
				<a href="/cate/dianyingktv">电影KTV</a>
				</strong>
			 			 				<strong>
				<a href="/cate/zizhu">自助餐</a>
				</strong>
			 			 <strong>
				<a href="http://www.lashou.com/house/" >团房</a>
			</strong>
			
			<strong id='n_hotel'  class="nav-hotel">
				<a href="http://www.lashou.com/travel/" class='sub'>酒店旅游<em></em></a>
				<ul class="n-h-list" style="display:none;width:120px;_right:0px;">
					<li><a href="http://www.lashou.com/travel/">旅游团购</a></li>
					<li><a href="http://www.lashou.com/travel/out_travel.php">出境游</a></li>
					<li><a href="http://www.lashou.com/hotel/">酒店团购</a></li>
					<li><a href="http://www.lashou.com/reserve/">酒店预订<em class="news_small"></em></a></li>
					<!--li><a href="http://www.lashou.com/room">今晚团酒店</a></li-->
					<!--li><a href="http://www.lashou.com/tcard.php">拉手商旅卡</a></li-->
				</ul>
				<!--[if IE 6]>
				<iframe id="hotel_select" style="filter:alpha(opacity=0); position:absolute; height:60px; top:150px; left:-1px; width:117px; display:none;"></iframe>
				<![endif]-->
			</strong>

									<strong>
				<div class="fpng" style=" position:absolute;right:5px;top:-11px;z-index:10; width:20px; height:19px; background-position:-53px -135px;"></div>
				<a href="http://cp.lashou.com/" target="_blank">彩票</a>
			</strong>
			
			
				</div>
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
                                  
				<div style="margin-left:135px;width:420px;border-top:1px #CCCCCC solid;padding-top:15px; height:140px;">
					<div style="color:#333">您也可以用合作网站账号登录拉手</div>
                	<table cellspacing="2" class="login_other">
						<tr>
							<!--td>
							  <input name="" id="163" type="button" class="sl-deng-163" value="" style="width:64px;height:24px;" onclick="window.location.href='http://www.lashou.com/login_163.php'"/>
							</td--> 
                            
                            <td class="sinalogin"><input name="" id="sina" type="button" class="sl-deng" value="" style="width:82px;height:27px;"  onClick="window.location.href='/login_sina.php?oauth_sina=1'"/></td>
                            <td class="sinalogin"><input name="" type="button" class="s360-deng" value="" style="width:82px;height:27px;" onClick="window.location.href='/login_360.php?oauth_360=1'"/></td>
                            <td class="sinalogin"><input name="" type="button" class="stuan800-deng" value="" style="width:82px;height:27px;" onClick="window.location.href='/login_tuan800.php?oauth_tuan800=1'"/></td>
							<td class="sinalogin">
								<input name="" id="sina" type="button" class="swanlitong-deng" value="" style="width:82px;height:27px;"  onClick="window.location.href='/need/wanlitong/wanlitong_login.php?act=jump'" />
							</td>
							<td class="sinalogin"><input name="" type="button" class="sqqzone-deng" value=""  style="width:64px;height:24px;" onClick="window.location.href='/login_qqzone.php?oauth_qqzone=1'"/></td>
						</tr>
						<tr>						
							<td class="sinalogin">
								<input name="" id="sina" type="button" class="sbaidu-deng" value="" style="width:82px;height:27px;"  onClick="window.location.href='/need/lashou_baidu/login_baidu.php'" />
							<td class="sinalogin"><input name="" type="button" class="sqq-deng" value="" style="width:82px;height:27px;" onClick="window.location.href='/login_qq.php?oauth_qq=1'"/></td>
							<td class="sinalogin">
								<input name="" type="button" class="stianya-deng" value="" style="width:82px;height:27px;" onClick="window.location.replace('http://co.tianya.cn/third/export/thirdLogin.jsp?fowardURL=http://www.lashou.com/need/tianyaClient/fromTianya.php?gotoUrl=/need/tianyaClient/notifyCaller.htm?http://www.lashou.com/?appName='+escape('拉手网'))">
							</td>
							<td class="sinalogin">
								<input name="" type="button" class="smobile-deng" value="" style="width:82px;height:27px;" onClick="window.location.href='/login_phonepay.php?mobile=1'">
							</td>
                            <td>
							<script src="http://rest.kaixin001.com/api/FeatureLoader_js.php" type="text/javascript"></script>
							<a id="kx001_btn_login" >登录</a>
							<script type="text/javascript">
							KX001.init("940662497425d6b1031667a43b1ac805", "/kx001_receiver.html","登录");
							function kx001_onlogin() {
								window.location.href="/sk1.php";
							}
							function kx001_onlogout() {
								window.location.href='/logout.php';
							};
							</script>
							</td>	
                         </tr>
						 <tr>
                            <td class="sinalogin" colspan="5">
								<input name="" type="button" class="salipay-deng" value="" style="width:82px; height:27px;" onClick="window.location.href='/need/alipay_login/login.php?alipay=1'">
							</td>
						 </tr>
					</table>
					</div>
                    
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
<!--footer start:-->
<div class="footer">
	<div class="g_footer c"></div>
	<div class="footer-inside">
		<dl class="aboutls" style=" padding-left:15px;">
			<dt><strong class="f_beginner">用户帮助</strong></dt>
			<dd>
				<a href="http://www.lashou.com/what.php" rel="nofollow"><i></i>拉手是什么</a>
				<a href="http://www.lashou.com/faq.php" rel="nofollow"><i></i>常见问题</a>
				<a href="http://www.lashou.com/faq.php?act=zhifu" rel="nofollow"><i></i>支付方式</a>
				<a href="http://www.lashou.com/setemails.php?type=163" rel="nofollow"><i></i>邮箱白名单设置</a>
				<a href="http://www.lashou.com/feedback.php" rel="nofollow"><i></i>意见反馈</a>
				<a target="_blank" href="http://www.lashou.com/event/lottery_form.php" rel="nofollow"><i></i>往期抽奖公布</a>
				<a target="_blank" href="/hot_deals/guangzhou"><i></i>往期团购</a>
			</dd>
		</dl>
		<dl class="aboutls">
			<dt><strong class="f_updates">获取更新</strong></dt>
			<dd>
				<a href="http://www.lashou.com/subscribe.php" rel="nofollow"><i></i>邮件订阅</a>
				<a target="_blank" href="http://www.lashou.com/rss.php?cityid=2422" rel="nofollow"><i></i>RSS订阅</a>
				<a target="_blank" href="http://t.sina.com.cn/lasho" rel="nofollow"><i></i>拉手新浪微博</a>
				<a target="_blank" href="http://www.douban.com/group/lashou/" rel="nofollow"><i></i>拉手豆瓣小组</a>
			</dd>
		</dl>
		<dl class="aboutls">
			<dt><strong class="f_businesses">商务合作</strong></dt>
			<dd>
				<a target="_blank" href="http://www.lashou.com/stores/commit.php?act=sp" rel="nofollow"><i></i>提供团购信息</a>
				<a href="http://www.lashou.com/open.php?page=api" rel="nofollow"><i></i>团购开放API</a>
				<a href="http://www.lashou.com/setwidget.php" rel="nofollow,noindex"><i></i>团购挂件</a>
				<a href="http://www.lashou.com/need/ad/hezuo.php"><i></i>合作伙伴</a>
				<a href="http://union.lashou.com" target="_blank"><i></i>拉手网联盟</a>
			</dd>
		</dl>
		<dl class="aboutls">
			<dt><strong class="f_company">公司信息</strong></dt>
			<dd>
				<a href="http://www.lashou.com/about.php" rel="nofollow"><i></i>关于拉手</a>
				<a href="http://www.lashou.com/about.php?act=press" rel="nofollow"><i></i>媒体报道</a>
				<a href="http://www.lashou.com/job.php" rel="nofollow"><i></i>加入我们</a>
				<a href="http://www.lashou.com/contact.php" rel="nofollow"><i></i>联系我们</a>
				<a href="http://www.lashou.com/rule.php" rel="nofollow"><i></i>隐私条款</a>
				<a href="http://www.lashou.com/xieyi.php" rel="nofollow"><i></i>用户协议</a>
				<a href="http://www.lashou.com/faq.php?act=promise" rel="nofollow"><i></i>团购三包</a>
				<a href="http://www.lashou.com/faq.php?act=server" rel="nofollow"><i></i>退换货服务</a>
			</dd>
		</dl>
		<dl class="aboutls">
			<dt><strong class="f_software">手机软件</strong></dt>
			<dd>
				<a href="http://mobile.lashou.com/client_buy.html" target="_blank"><i></i>拉手团购</a>
				<a href="http://mobile.lashou.com/client_hotel.html" target="_blank" rel="nofollow"><i></i>拉手酒店预订</a>
				<a href="http://mobile.lashou.com/client_caipiao.html" target="_blank" rel="nofollow"><i></i>拉手彩票</a>
			</dd>
		</dl>
		<!--logo-->
		<div class="footlogo l"><a href="http://guangzhou.lashou.com" title="拉手网全国统一客服电话4000-517-317" style="text-indent:-999em;z-index:2; overflow:hidden" rel="nofollow">拉手网</a><span></span></div>
		<div class="copyright c">
			<div style="padding-top:25px; overflow:hidden;">
				<a href="http://www.lashou.com/need/ad/chengxin.php" target="_blank" rel="nofollow" class="renz1"></a>
				<a target="_blank" href="http://www.lashou.com/need/ad/chengxin.php#renzheng" rel="nofollow" class="renz2"></a>
				<a target="_blank" href="http://www.lashou.com/need/ad/chengxin.php#zfb" rel="nofollow" class="renz3"></a>
				<a target="_blank" href="http://www.lashou.com/need/ad/chengxin.php#cft" rel="nofollow" class="renz4"></a>
				<a target="_blank" href="http://www.lashou.com/need/ad/chengxin.php#kxl" rel="nofollow" class="renz5"></a>
							</div>
			<div style="padding-top: 15px;"> &copy;  2012 北京拉手网络技术有限公司 LaShou.com 京ICP证100571号 京ICP备11004895号 京公网安备110105001181号 </div>
		</div>
	</div>
</div>
<!--footer end:--> 
<script type="text/javascript">
//<![CDATA[
(function() {
var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
ga.src = 'http://www.google-analytics.com/ga.js';
var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();
 //]]>
</script>

</body>
</html>