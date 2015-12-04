<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>东方趣购团购网广州站-IT实训专家</title>
<meta http-equiv="x-ua-compatible" content="IE=7" />
<meta name="alexaVerifyID" content="8itXFZsHbEIm-LUNHfD2q3xw-Ek" />
<link rel="shortcut icon" href="/favicon.ico" />
<link rel="Bookmark" href="http://www.lashou.com/favicon.ico" />
<link rel="alternate" type="application/rss+xml"
	href="http://www.lashou.com/rss.php?cityid=2419" title="RSS" />
<link rel="apple-touch-icon-precomposed"
	href="http://s2.lashouimg.com/static/pics/www/touch-icon-iphone.png" />
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="http://d1.lashouimg.com/static/pics/www/touch-icon-ipad.png" />
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="http://d2.lashouimg.com/static/pics/www/touch-icon-iphone4.png" />
<LINK rel=stylesheet type=text/css href="css/index.css">
<SCRIPT type=text/javascript src="showOne_files/jquery-1.3.2.min.js"></SCRIPT>
<c:if test="${books==null and param.lk==null}">
	<jsp:forward page="goods.do?lk=1000" />
</c:if>
<script src="http://s2.lashouimg.com/js/lab.min.js"
	type="text/javascript"></script>
<style >
.button-red, .button-cart, .button-gray {
display: inline-block;
width: 101px;
height: 20px;
line-height: 44px;
letter-spacing: 1px;
text-align: center;
float: left;
-webkit-border-radius: 4px;
-moz-border-radius: 4px;
border-radius: 22px;
}
.button-red {
background-color: #FF7E00;
color: #FFF;
font-size: 18px;
margin-right: 15px;
box-shadow: 0 1px 0 #EB5E00;
}
</style>
<script type="text/javascript">
	var src = ('https:' == document.location.protocol ? 'https://ssl'
			: 'http://www')
			+ '.google-analytics.com/ga.js';
	$LAB
			.script("http://d1.lashouimg.com/js/jquery-1.3.2.min.js")
			.wait()
			.script("http://d2.lashouimg.com/js/jquery.autocomplete-01-min.js")
			.wait()
			.script("http://s1.lashouimg.com/js/baseindex-11-min.js")
			.wait(
					function() {
						var youhui_temp = 0;
						if (youhui_temp) {
							$
									.MsgBox({
										title : '',
										html : '',
										hidden : false,
										page : 'index',
										str : '<div id="floatbox-overlay"></div><div id="floatbox" class="wabao" style="height:370px;width:500px;background-color:transparent;border:none;"><div class="indexWa" onclick="hide_wabao()"></div><div class="gotoWa" onclick="gotoGet()"></div></div>'
									});
							$(".close_float,#floatbox-overlay").click(
									function() {
										try {
											$('#floatbox').remove();
											$('#floatbox-overlay').remove();
											$('embed, object, select').css({
												'visibility' : 'visible'
											});
											return false;
										} catch (e) {
										}
									});
							setTimeout(function() {
								try {
									close_msg_box();
									$.cookie('wabao', 1, {
										expires : 0.1,
										path : '/',
										domain : '.lashou.com',
										secure : false
									});
								} catch (e) {
								}
							}, 12000);
						}
					}).script(src).wait(function() {
				document.domain = "lashou.com";
				var _gaq = _gaq || [];
				_gaq.push([ '_setAccount', 'UA-15429888-1' ]);
				_gaq.push([ '_addOrganic', 'baidu', 'word' ]);
				_gaq.push([ '_addOrganic', 'soso', 'w' ]);
				_gaq.push([ '_addOrganic', 'vnet', 'kw' ]);
				_gaq.push([ '_addOrganic', 'sogou', 'query' ]);
				_gaq.push([ '_addOrganic', 'youdao', 'q' ]);
				_gaq.push([ '_addIgnoredOrganic', 'lashou.com' ]);
				_gaq.push([ '_addIgnoredOrganic', 'www.lashou.com' ]);
				_gaq.push([ '_addIgnoredOrganic', 'lashou' ]);
				_gaq.push([ '_addIgnoredOrganic', '拉手网' ]);
				_gaq.push([ '_addIgnoredOrganic', '拉手' ]);
				_gaq.push([ '_setDomainName', ".lashou.com" ]);
				_gaq.push([ '_setAllowHash', false ]);
				_gaq.push([ '_trackPageview' ]);
			});
</script>
</head>
<body>
	<!--header start:-->
	<div class="header">
		<h1 style="display: none">趣购网</h1>
		<div class='logo l'>
			<a href="http://beijing.lashou.com"><img
				src="imgs/logo-new03.png" width='152' height='83'></a>
		</div>
		<ul class='city l'>
			<li class="more"><div>
					<a href="http://www.lashou.com/changecity" class="nsbg"><b>广州</b>切换城市<span
						class="nsbg"></span></a>
				</div></li>
			<li>IT实训专家</li>
		</ul>
		<div class="n-rss r">
			<!--关注我们-->
			<div class="weibo nsbg r">

				<div class="wb-list r">
					<span id="tr_help" class="nav-my"> <a class="sub"
						href="http://www.lashou.com/learn.php" rel="nofollow,noindex"><b>帮助</b><em></em></a>
						<ul class="wb-h-list" style="display: none;">
							<li><a href="http://www.lashou.com/learn.php" rel="nofollow">如何团购</a></li>
							<li><a href="http://www.lashou.com/dayi/beijing"
								rel="nofollow">我要说两句</a></li>
							<li><a href="http://www.lashou.com/faq.php" rel="nofollow">常见问题</a></li>
							<li><a href="http://www.lashou.com/xieyi.php" rel="nofollow">用户协议</a></li>
						</ul>
					</span>
				</div>
			</div>
			<div class="e-sms nsbg c r">
				<form action="/search.php" method="get" id="searchform"
					onsubmit="javacript:return checksubmit()">
					<input type="text" class="e-sms-l l" id="headersearchform"
						name="sw" value="商品、商家、商圈" style="color: #999999" title="商品、商家、商圈"
						autocomplete='off' /> <input type="hidden" name="cityid"
						value="2419" /> <input type="submit" class="e-sms-r l"
						id="searchsubmit" value="">
				</form>
			</div>
		</div>
	</div>
	<!--nav start:-->
	<div class="lsnav">
		<div class="nav-inside">
			<div class="nav-list l">
				<strong><a href="goods.do">团购商城</a></strong>
				<c:forEach items="${gtList}" var="goodstype">
					<strong><a href="goods.do?typeid=${goodstype.id}">${goodstype.typename}</a></strong> 
				</c:forEach>
				<!-- <strong><a href="http://www.lashou.com/mall/">团购商城</a></strong> <strong><a
					href="http://beijing.lashou.com" class="cur">今日团购<span>(254)</span></a></strong>
				<strong><a href="http://beijing.lashou.com/life_list/">乐怡家居<span>(344)</span></a></strong>
				<strong><a href="http://beijing.lashou.com/items">限时特卖<span>(4736)</span></a></strong>

				<strong> <a href="/cate/dianyingktv">影音娱乐</a>
				</strong> <strong> <a href="/cate/zizhu">美食饕餮</a>
				</strong> <strong> <a href="http://www.lashou.com/house/">汽车兵团</a>
				</strong> <strong id='n_hotel' class="nav-hotel"> <a
					href="http://www.lashou.com/travel/" class='sub'>时尚IT<em></em></a>
					<ul class="n-h-list"
						style="display: none; width: 120px; _right: 0px;">
						<li><a href="http://www.lashou.com/travel/">旅游团购</a></li>
						<li><a href="http://www.lashou.com/travel/out_travel.php">出境游</a></li>
						<li><a href="http://www.lashou.com/hotel/">酒店团购</a></li>
						<li><a href="http://www.lashou.com/reserve/">酒店预订<em
								class="news_small"></em></a></li>
						li><a href="http://www.lashou.com/room">今晚团酒店</a></li
						li><a href="http://www.lashou.com/tcard.php">拉手商旅卡</a></li
					</ul>
				</strong> -->



			</div>
			<div class="nav-login r">

				<span id="n_ml" class="nav-my"> <a class="sub"
					href="http://www.lashou.com/mycode.php">用户中心<em></em></a>
					<ul class="n-h-list" style="display: none">
						<li><a href="
								<c:choose>  
								   <c:when test="${name!=null}">
								   		goods~goGWC.do
								   </c:when>  
								   <c:otherwise>  
								   		login.jsp  
								   </c:otherwise>  
								</c:choose>">我的购物车</a></li>
						<li><a href="http://www.lashou.com/mycode.php">我的拉手券</a></li>
						<li><a href="http://www.lashou.com/mygo.php">我的订单</a></li>
						<li><a href="http://www.lashou.com/mycollection.php">我的收藏</a></li>
						<li><a href="http://www.lashou.com/deliver_address.php">常用地址</a></li>
						<li><a href="http://www.lashou.com/bills.php">拉手账本</a></li>
						<li><a href="http://www.lashou.com/settings.php">账户设置</a></li>
						<li><a href="http://www.lashou.com/message.php">我的消息</a></li>
					</ul></span> 
					<c:choose>  
					   <c:when test="${name!=null}">
					   		欢迎${name}<a href="login.do">退出</a>
					   </c:when>  
					   <c:otherwise>  
					   		<span><a href="login.jsp">登录</a></span> <span><a href="regist.jsp">注册</a></span>
					   </c:otherwise>  
					</c:choose>
				
			</div>
		</div>
	</div>
	<!--nav end-->

	<!--content start:-->
	<!--content end-->
	<table width="30%" height="80%" border="1" cellspacing="0"
		align="center">
		<tr>

			<c:forEach items="${goodList }" var="good" varStatus="vs">
				<td><a name="${good.name}"></a>
					<div class="con-pic">
						<a href="<c:choose>  
								   <c:when test="${name!=null}">
								   		goods~showOne.do?gid=${good.id}
								   </c:when>  
								   <c:otherwise>  
								   		login.jsp  
								   </c:otherwise>  
								</c:choose> " target="_blank"><img width="250px" height="250px" src="${good.goodspic}"></a>
						<div class="con-num">
							<span>市场价:<del>${good.price}</del></span><em><strong><fmt:formatNumber type="number" value="${good.tuangouprice/good.price}" maxFractionDigits="2"/></strong>折</em> 
							<span class="n_buy_ed"> <strong>${good.tuangoucount}</strong>人团购</span> 
						</div>
						<div class="n_news"></div>
					</div>
					<div class="con-pre">
						<a class="con-but" href="<c:choose>  
												   <c:when test="${name!=null}">
												   			goods~showOne.do?gid${good.id}       
												   </c:when>  
												   <c:otherwise>  
												   		login.jsp  
												   </c:otherwise>  
												</c:choose> " target="_blank">
							<span class="units">¥</span>${good.tuangouprice}
						</a>
					</div> <!--				<div class="con-but1">
					<span class="units">¥</span>25<span  class="small_price">.00</span>				</div>
				-->
					<h2 class="pro-tit">
						<a href="#" target="_blank" class="short_title">${good.name}
						</a><a class="button-red" 
												<c:choose>  
												   <c:when test="${name!=null}">
												   		href="javascript:clickadd('${good.id}')"	     
												   </c:when>  
												   <c:otherwise>  
												   		href="login.jsp"  
												   </c:otherwise>  
												 </c:choose>>立即购买</a>
						<div class="adre_widtd" style="display: none;">
							<p>
								${good.details}
							</p>
							<em></em>
						</div> 
					</h2></td>
				<c:if test="${vs.count mod 3 ==0}">
		</tr>
		<tr>
			</c:if>
			</c:forEach>
		</tr>
	</table>
	<table align="center">
		<tr>
			<td><a href="goods.do?currpage=0&typeid=${typeid }">首页</a>&nbsp;&nbsp;</td>
			<td><c:if test="${currpage>0}">
					<a href="goods.do?currpage=${currpage-1}&pageSize=${pageSize}&typeid=${typeid }">上一页</a> &nbsp;&nbsp;
	</c:if></td>
			<td><c:if test="${currpage<last-1}">
					<a href="goods.do?currpage=${currpage+1}&pageSize=${pageSize}&typeid=${typeid }">下一页</a>&nbsp;&nbsp;
	</c:if></td>
			<td><a href="goods.do?currpage=${last}&pageSize=${last}&typeid=${typeid }">末页</a></td>
		</tr>
	</table>
<script type="text/javascript">
$(function(){
	/* $(".button-red").click(function(){
		$.ajax({
			url:'goods~addGWC.do?gid=${goods.id}',
			success:function(){
				//$('.cm-success').html('<SPAN class=c_cion></SPAN>团购已成功，可继续购买');
				alert("添加购物车成功!!!");
			}
		});
	}); */
	
});
function clickadd(id){
	$.ajax({
		url:'goods~addGWC.do?gid='+id,
		success:function(data){
			//$('.cm-success').html('<SPAN class=c_cion></SPAN>团购已成功，可继续购买');
			if(data){
				alert("添加购物车成功!!!");
			}else{
				alert("添加购物车失败!!!");
			}
		}
	});
}
</script>

	<!--footer start:-->
	<div class="footer">
		<div class="g_footer c"></div>
		<div class="footer-inside">
			<dl class="aboutls" style="padding-left: 15px;">
				<dt>
					<strong class="f_beginner">用户帮助</strong>
				</dt>
				<dd>
					<a href="http://www.lashou.com/what.php" rel="nofollow"><i></i>拉手是什么</a>
					<a href="http://www.lashou.com/faq.php" rel="nofollow"><i></i>常见问题</a>
					<a href="http://www.lashou.com/faq.php?act=zhifu" rel="nofollow"><i></i>支付方式</a>
					<a href="http://www.lashou.com/setemails.php?type=163"
						rel="nofollow"><i></i>邮箱白名单设置</a> <a
						href="http://www.lashou.com/feedback.php" rel="nofollow"><i></i>意见反馈</a>
					<a target="_blank"
						href="http://www.lashou.com/event/lottery_form.php" rel="nofollow"><i></i>往期抽奖公布</a>
					<a target="_blank" href="/hot_deals/beijing"><i></i>往期团购</a>
				</dd>
			</dl>
			<dl class="aboutls">
				<dt>
					<strong class="f_updates">获取更新</strong>
				</dt>
				<dd>
					<a href="http://www.lashou.com/subscribe.php" rel="nofollow"><i></i>邮件订阅</a>
					<a target="_blank" href="http://www.lashou.com/rss.php?cityid=2419"
						rel="nofollow"><i></i>RSS订阅</a> <a target="_blank"
						href="http://t.sina.com.cn/lasho" rel="nofollow"><i></i>拉手新浪微博</a>
					<a target="_blank" href="http://www.douban.com/group/lashou/"
						rel="nofollow"><i></i>拉手豆瓣小组</a>
				</dd>
			</dl>
			<dl class="aboutls">
				<dt>
					<strong class="f_businesses">商务合作</strong>
				</dt>
				<dd>
					<a target="_blank"
						href="http://www.lashou.com/stores/commit.php?act=sp"
						rel="nofollow"><i></i>提供团购信息</a> <a
						href="http://www.lashou.com/open.php?page=api" rel="nofollow"><i></i>团购开放API</a>
					<a href="http://www.lashou.com/setwidget.php"
						rel="nofollow,noindex"><i></i>团购挂件</a> <a
						href="http://www.lashou.com/need/ad/hezuo.php"><i></i>合作伙伴</a> <a
						href="http://union.lashou.com" target="_blank"><i></i>拉手网联盟</a>
				</dd>
			</dl>
			<dl class="aboutls">
				<dt>
					<strong class="f_company">公司信息</strong>
				</dt>
				<dd>
					<a href="http://www.lashou.com/about.php" rel="nofollow"><i></i>关于拉手</a>
					<a href="http://www.lashou.com/about.php?act=press" rel="nofollow"><i></i>媒体报道</a>
					<a href="http://www.lashou.com/job.php" rel="nofollow"><i></i>加入我们</a>
					<a href="http://www.lashou.com/contact.php" rel="nofollow"><i></i>联系我们</a>
					<a href="http://www.lashou.com/rule.php" rel="nofollow"><i></i>隐私条款</a>
					<a href="http://www.lashou.com/xieyi.php" rel="nofollow"><i></i>用户协议</a>
					<a href="http://www.lashou.com/faq.php?act=promise" rel="nofollow"><i></i>团购三包</a>
				</dd>
			</dl>
			<dl class="aboutls">
				<dt>
					<strong class="f_software">手机软件</strong>
				</dt>
				<dd>
					<a href="http://mobile.lashou.com/client_buy.html" target="_blank"><i></i>拉手团购</a>
					<a href="http://mobile.lashou.com/client_hotel.html"
						target="_blank" rel="nofollow"><i></i>拉手酒店预订</a> <a
						href="http://mobile.lashou.com/client_caipiao.html"
						target="_blank" rel="nofollow"><i></i>拉手彩票</a>
					<!--<a href="http://mobile.lashou.com/conversion.html" target="_blank" rel="nofollow"><i></i>拉手万能转换</a>-->
				</dd>
			</dl>
			<!--logo-->
			<div class="footlogo l">
				<a href="http://www.lashou.com" title="拉手网全国统一客服电话4000-517-317"
					style="text-indent: -999em; z-index: 2; overflow: hidden"
					rel="nofollow">拉手网</a><span></span>
			</div>
			<div class="copyright c">
				<div style="padding-top: 25px; overflow: hidden;">
					<a href="http://www.lashou.com/need/ad/chengxin.php"
						target="_blank" rel="nofollow" class="renz1"></a> <a
						target="_blank"
						href="http://www.lashou.com/need/ad/chengxin.php#renzheng"
						rel="nofollow" class="renz2"></a> <a target="_blank"
						href="http://www.lashou.com/need/ad/chengxin.php#zfb"
						rel="nofollow" class="renz3"></a> <a target="_blank"
						href="http://www.lashou.com/need/ad/chengxin.php#cft"
						rel="nofollow" class="renz4"></a>
					<!--可信网站-->
					<a target="_blank"
						href="http://www.lashou.com/need/ad/chengxin.php#kxl"
						rel="nofollow" class="renz5"></a> <span class="renz6"></span> <span
						class="renz7"></span>
				</div>
				<div style="padding-top: 15px;">&copy; 2012 北京拉手网络技术有限公司
					LaShou.com 京ICP证100571号 京ICP备11004895号 京公网安备110105001181号</div>
			</div>
		</div>
	</div>
	<!--footer end:-->
	<div class="indexuptop" id="go_lstop" style="display: none;">
		<a class="like"></a><a href="http://www.lashou.com/feedback.php"
			target="_blank" rel="nofollow"></a><a class="last"></a>
	</div>
	<!-- load js start-->
	<!--[if IE 6]>
<SCRIPT src="http://s1.lashouimg.com/templates/default/images/iepng.js"></SCRIPT>
<SCRIPT>
DD_belatedPNG.fix('.bq_discount,.news_small,.footlogo span,.n_news,li.eb a,li.eb,.cont-share,.c_cion,.proicon,.cm-over img,.detail-mid h4 span,.c-buy-num img,.hs_cion,.hscon-mid,.hs_pic,.mini-pro-buy,.mini-time,.m-buy-btn002,.m-buy-btn-1,.fpng,.n_hots,.weibo,.wb-tit,.n-rss,.nform,.con-item dt,.con-item1,.indexuptop');
</SCRIPT>
<![endif]-->

	<script type="text/javascript">
		//         
		(function() {
			if (window.top !== window.self) {
				var ROOT_HOST = "www.lashou.com";
				try {
					var host = window.top.location.host;
					if (ROOT_HOST === host)
						return;
				} catch (e) {
				}
				setTimeout(function() {
					window.top.location = window.self.location;
					document.body.innerHTML = '';
				}, 0);
				window.self.onload = function() {
					document.body.innerHTML = '';
				};
			}
		})();
		//
	</script>

	<!-- load js end -->
	<script type="text/javascript">
		function record_log() {
			var str = "v=20120628&m=2012-06-28+15%3A02%3A51&a=&b=58.248.178.230&c=2419&d=1339744509f2601625620b4d73cfb672&e=9v29vjrcuvcdij1fesn15hqfr0&f=&g=0&h=Mozilla%2F4.0+%28compatible%3B+MSIE+8.0%3B+Windows+NT+6.1%3B+Win64%3B+x64%3B+Trident%2F4.0%3B++Embedded+Web+Browser+from%3A+http%3A%2F%2Fbsalsa.com%2F%3B+.NET+CLR+2.0.50727%3B+SLCC2%3B+.NET+CLR+3.5.30729%3B+.NET+CLR+3.0.30729%3B+Media+Center+PC+6.0%3B+InfoPath.3%3B+Tablet+PC+2.0%3B+.NET4.0C%3B+.NET4.0E%29&i=http%3A%2F%2Fbeijing.lashou.com%2F%3F%26%26&k=rz.sino%40gmail.com&l=888808%2C885101%2C885982%2C885981%2C855781%2C888703%2C885884%2C888278%2C859314%2C888702%2C885983%2C885980%2C885409%2C885445%2C851172%2C885873%2C100001829%2C9%2C885934%2C885972%2C885933%2C885974%2C885973%2C885979%2C885975%2C879120%2C884959%2C884956%2C887342%2C884954%2C884955%2C884957%2C884682%2C884766%2C880216%2C804212%2C880929%2C883347%2C883355%2C883348%2C883360%2C884960%2C883342%2C883351%2C883343%2C880934%2C884028%2C754985%2C870428%2C864471%2C882321%2C875653%2C883352%2C880928%2C880799%2C880812%2C883356%2C880388%2C880007%2C873382&n=5c0f1736c35df22bd0c43ce4edc5a034";
			$.ajax({
				async : false,
				cache : false,
				url : 'http://lg.lashou-inc.com/ajax/v.php',
				type : 'GET',
				dataType : 'jsonp',
				jsonp : str
			});
		}
		if (typeof ($LAB) != 'object') {
			$(function() {
				record_log();
			});
		} else {
			$LAB.script("http://s2.lashouimg.com/js/jquery-1.3.2.min.js").wait(
					function() {
						record_log();
					});
		}
	</script>
</body>
</html>