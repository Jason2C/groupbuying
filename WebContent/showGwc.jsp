<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0045)http://guangzhou.lashou.com/buy.php -->
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>仅售38元！市场价78元的精心茶餐厅的尊享即点即蒸点心自助餐一人次！ | 拉手网广州</TITLE>
<META content="text/html; charset=utf-8" http-equiv=Content-Type>
<META content=IE=7 http-equiv=x-ua-compatible>
<META name=alexaVerifyID content=8itXFZsHbEIm-LUNHfD2q3xw-Ek>
<META name=application-name content=拉手网－超人气团购网站>
<META name=msapplication-window content=width=device-width;height=device-height>
<META name=msapplication-tooltip content=拉手网,超人气团购网站。>
<META name=keywords content=" 团购,团购网,广州团购,拉手,拉手网,优惠券">
<META name=description 
content=" 拉手网广州站-超人气团购网站。拉手网为您提供广州的生活团购,商品团购,酒店团购,化妆品团购等产品,为您精选广州的餐厅、酒吧、KTV、SPA、美发店、摄影、瑜伽馆等特色商家，让您体验超人气团购网站给您带来的超低折扣!今日团购:新店开业！仅售38元！市场价78元的精心茶餐厅的尊享即点即蒸点心自助餐一人次（使用时段：08:30-20:30）：蟹子烧卖皇、蚝皇叉烧包、香酱蒸排骨、古法马拉糕、荔湾艇仔粥、鲜竹猪肉丸、传统靓油条、腊味萝卜糕、叉烧焗餐包、农家鲜蛋挞、上汤云吞面等60多种点心任选+十多款饮料任君选择！用餐时间：两个半小时！各种美味，现点现做，热气腾腾点心，在这里任君选择。无限欢乐，尽在激情盛夏！无限享受，尽在精心茶餐厅！">
<META name=copyright content=lashou><LINK rel="shortcut icon" 
href="/favicon.ico"><LINK rel=Bookmark 
href="http://www.lashou.com/favicon.ico"><LINK title=RSS rel=alternate 
type=application/rss+xml href="http://www.lashou.com/rss.php?cityid=2422">
<SCRIPT type=text/javascript>
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
</SCRIPT>

<SCRIPT type=text/javascript>
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
</SCRIPT>
<LINK rel=stylesheet type=text/css href="showGwc_files/base80.css"><LINK 
rel=stylesheet type=text/css href="showGwc_files/myls29.css">
<SCRIPT type=text/javascript src="showGwc_files/jquery-1.3.2.min.js"></SCRIPT>

<SCRIPT type=text/javascript 
src="showGwc_files/jquery.autocomplete-02-min.js"></SCRIPT>

<SCRIPT type=text/javascript src="showGwc_files/base0428-59-min.js"></SCRIPT>

<SCRIPT src="showGwc_files/tb-slider03-min.js"></SCRIPT>

<SCRIPT>

$(document).ready(function(){$("#headersearchform").autocomplete("/ajax/get_query_suggest.php",{minChars:1,width:210,matchContains:true,autoFill:false,delay:300,selectFirst:false,dataType:"json",parse:function(data){return $.map(data,function(row){return{data:row,value:row.name,result:row.name}})},formatItem:function(row,i,max){return row.name},formatMatch:function(row,i,max){return row.name+" "+row.to},formatResult:function(row){return row.name}}).result(function(event, row, formatted) { checksubmit();});});
function checksubmit(){kk= $("#headersearchform").val(); k = $.trim(kk);if(k == "商品、商家、商圈" || k=='' ){return false;}else{ if(/\/house\//i.test(window.location.href) || /\/mall\//i.test(window.location.href)){document.getElementById('searchform').onsubmit=null;}$("#searchsubmit").attr('disabled', true);$("#searchform").submit();};}
</SCRIPT>

<STYLE>#TB_overlay {
	Z-INDEX: 99999; POSITION: fixed; WIDTH: 100%; HEIGHT: 100%; TOP: 0px; LEFT: 0px
}
.TB_overlayBG {
	FILTER: alpha(opacity=75); BACKGROUND-COLOR: #000; opacity: 0.75; -moz-opacity: 0.75
}
* HTML #TB_overlay {
	POSITION: absolute; ; HEIGHT: expression(document.body.scrollHeight > document.body.offsetHeight ? document.body.scrollHeight:document.body.offsetHeight + 'px')
}
#TB_window {
	Z-INDEX: 999999; BORDER-BOTTOM: #525252 4px solid; POSITION: fixed; TEXT-ALIGN: left; BORDER-LEFT: #525252 4px solid; DISPLAY: none; BACKGROUND: #ffffff; COLOR: #000000; BORDER-TOP: #525252 4px solid; TOP: 50%; BORDER-RIGHT: #525252 4px solid; LEFT: 50%
}
* HTML #TB_window {
	POSITION: absolute; ; MARGIN-TOP: expression(0 - parseInt(this.offsetHeight / 2) + (TBWindowMargin = document.documentElement && document.documentElement.scrollTop || document.body.scrollTop) + 'px')
}
#TB_title {
	HEIGHT: 15px
}
#TB_ajaxContent {
	TEXT-ALIGN: left; CLEAR: both; OVERFLOW: auto
}
.TB_modal#TB_ajaxContent {
	PADDING-BOTTOM: 15px; PADDING-LEFT: 15px; PADDING-RIGHT: 15px; PADDING-TOP: 15px
}
#TB_load {
	Z-INDEX: 9999; POSITION: fixed; MARGIN: -6px 0px 0px -104px; WIDTH: 208px; DISPLAY: none; HEIGHT: 13px; TOP: 50%; LEFT: 50%
}
* HTML #TB_load {
	POSITION: absolute; ; MARGIN-TOP: expression(0 - parseInt(this.offsetHeight / 2) + (TBWindowMargin = document.documentElement && document.documentElement.scrollTop || document.body.scrollTop) + 'px')
}
#TB_HideSelect {
	Z-INDEX: 99999; POSITION: fixed; BORDER-BOTTOM-STYLE: none; FILTER: alpha(opacity=0); BORDER-RIGHT-STYLE: none; BACKGROUND-COLOR: #fff; WIDTH: 100%; BORDER-TOP-STYLE: none; HEIGHT: 100%; BORDER-LEFT-STYLE: none; TOP: 0px; LEFT: 0px; opacity: 0; -moz-opacity: 0
}
* HTML #TB_HideSelect {
	POSITION: absolute; ; HEIGHT: expression(document.body.scrollHeight > document.body.offsetHeight ? document.body.scrollHeight:document.body.offsetHeight + 'px')
}
#TB_iframeContent {
	BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none; MARGIN-TOP: 1px; BORDER-TOP-STYLE: none; MARGIN-BOTTOM: -1px; CLEAR: both; BORDER-LEFT-STYLE: none; _margin-bottom: 1px
}
</STYLE>
<!--[if IE 6]>
<SCRIPT src="http://s1.lashouimg.com/templates/default//images/iepng.js"></SCRIPT>
<SCRIPT>
DD_belatedPNG.fix('.bq_discount,.news_small,.footlogo span,.n_news,li.eb a,li.eb,.cont-share,.c_cion,.proicon,.cm-over img,.detail-mid h4 span,.c-buy-num img,.hs_cion,.hscon-mid,.hs_pic,.mini-pro-buy,.mini-time,.m-buy-btn002,.m-buy-btn-1,.fpng,.c_other,.prodetail h4 span,.n_hots,.weibo,.wb-tit,.n-rss,.nform,.m_news,.con-item dt,.con-item1,.h-tel-fm1,.h-submit-btn,.hot-hsbtn,.hs_in,.backg,.jxz,.hspayicon,.n_318,.m-pro-info i,.m-pro-t-bg em,a.m-pro-menu,.malldis,.m-pro-info span,.btn_buy,.h-nlist li a,.hc-titl,.hc-titr,.common-item li .xs,.common-item li .xl,.common-item li .xsxl,.hc-feel,.hc-xsxl,.hc-xs,.hc-xl,.mall-mr,.msbutton,.prodetail-sp h4 div,.indexuptop2');
</SCRIPT>
<![endif]-->
<META name=GENERATOR content="MSHTML 8.00.7601.17824"></HEAD>
<BODY><!--header start:-->
<DIV 
style="BACKGROUND: url(http://d2.lashouimg.com/static/pics/www/header_bangy005.jpg) no-repeat" 
class=header>
<DIV class="logo l"><A href="http://guangzhou.lashou.com/"><IMG alt=广州团购 
src="showGwc_files/logo-new03.png" width=152 height=83></A></DIV>
<UL class="city l">
  <LI class=more>
  <DIV><A class=nsbg href="http://www.lashou.com/changecity"><B>广州</B>切换城市<SPAN 
  class=nsbg></SPAN></A></DIV>
  <LI>拉手网已开通城市500+ </LI></UL>
<DIV class="n-rss r"><!--关注我们-->
<DIV class="weibo nsbg r"><SPAN class="wb-tit l"><A class=xz 
href="http://mobile.lashou.com/client_buy.html" rel=nofollow target=_blank><EM 
class=nsbg></EM>手机客户端</A> <A id=AddFavorite class=sc 
href="javascript:void(0)"><EM class=nsbg></EM>把拉手收藏</A> </SPAN>
<DIV class="wb-list r"><SPAN id=tr_gz class=nav-my><A class=sub 
href="http://guangzhou.lashou.com/ajax/guanzhu.php?height=325&amp;width=500&amp;tabindex=0" 
rel=nofollow><B>关注</B><EM></EM></A> 
<UL style="DISPLAY: none" class="wb-h-list wb-fx">
  <LI><A title=拉手广州的新浪微博 
  href="http://guangzhou.lashou.com/ajax/guanzhu.php?height=325&amp;width=500&amp;tabindex=0" 
  rel=nofollow><I class="wb-icon wb-icon1"></I>新浪微博</A> </LI>
  <LI><A title=拉手的腾讯微博 
  href="http://guangzhou.lashou.com/ajax/guanzhu.php?height=325&amp;width=501&amp;tabindex=1" 
  rel=nofollow><I class="wb-icon wb-icon2"></I>腾讯微博</A> </LI>
  <LI><A title=拉手的开心主页 
  href="http://guangzhou.lashou.com/ajax/guanzhu.php?height=325&amp;width=502&amp;tabindex=2" 
  rel=nofollow><I class="wb-icon wb-icon3"></I>开心网</A> </LI>
  <LI><A title=拉手的QQ空间 
  href="http://guangzhou.lashou.com/ajax/guanzhu.php?height=325&amp;width=503&amp;tabindex=3" 
  rel=nofollow><I class="wb-icon wb-icon4"></I>QQ空间</A> </LI></UL></SPAN><SPAN 
id=tr_dy class=nav-my><A class=sub onclick=subscribe_email_2(2422) 
href="javascript:void(0)"><B>订阅</B><EM></EM></A> 
<UL style="DISPLAY: none" class=wb-h-list>
  <LI><A onclick=subscribe_email_2(2422) href="javascript:void(0)">邮件订阅</A> 
</LI>
  <LI><A onclick=subscribe_sms(1) href="javascript:void(0)">短信订阅</A> 
</LI></UL></SPAN><SPAN id=tr_help class=nav-my><A class=sub 
href="http://www.lashou.com/learn.php" 
rel=nofollow,noindex><B>帮助</B><EM></EM></A> 
<UL style="DISPLAY: none" class=wb-h-list>
  <LI><A href="http://www.lashou.com/learn.php" rel=nofollow>如何团购</A> </LI>
  <LI><A href="http://www.lashou.com/dayi/guangzhou" rel=nofollow>我要说两句</A> 
</LI>
  <LI><A href="http://www.lashou.com/faq.php" rel=nofollow>常见问题</A> </LI>
  <LI><A href="http://www.lashou.com/xieyi.php" rel=nofollow>用户协议</A> 
</LI></UL></SPAN></DIV></DIV>
<DIV class="e-sms nsbg c r">
<FORM id=searchform onsubmit="javacript:return checksubmit()" method=get 
action=/search.php><INPUT id=headersearchform class="e-sms-l l" title=商品、商家、商圈 
name=sw> <INPUT value=2422 type=hidden name=cityid> <INPUT id=searchsubmit class="e-sms-r l" type=submit> </FORM></DIV></DIV></DIV><!--nav start:-->
<DIV class=lsnav>
<DIV class=nav-inside>
<DIV class="nav-list l"><STRONG><A 
href="http://www.lashou.com/mall/">拉手商城</A></STRONG> <STRONG><A 
href="http://guangzhou.lashou.com/">今日团购<SPAN>(9783)</SPAN></A></STRONG> 
<STRONG><A href="http://guangzhou.lashou.com/life_list/">生活<!--<span>(753)</span>--></A></STRONG> 
<STRONG><A href="http://guangzhou.lashou.com/items">限时特卖<!--<span>(8644)</span>--></A></STRONG> 
<STRONG><A href="http://guangzhou.lashou.com/cate/dianyingktv">电影KTV</A> 
</STRONG><STRONG><A href="http://guangzhou.lashou.com/cate/zizhu">自助餐</A> 
</STRONG><STRONG><A href="http://www.lashou.com/house/">团房</A> </STRONG><STRONG 
id=n_hotel class=nav-hotel><A class=sub 
href="http://www.lashou.com/travel/">酒店旅游<EM></EM></A> 
<UL style="WIDTH: 120px; DISPLAY: none; _right: 0px" class=n-h-list>
  <LI><A href="http://www.lashou.com/travel/">旅游团购</A> </LI>
  <LI><A href="http://www.lashou.com/travel/out_travel.php">出境游</A> </LI>
  <LI><A href="http://www.lashou.com/hotel/">酒店团购</A> </LI>
  <LI><A href="http://www.lashou.com/reserve/">酒店预订<EM 
  class=news_small></EM></A> <!--li><a href="http://www.lashou.com/room">今晚团酒店</a></li--><!--li><a href="http://www.lashou.com/tcard.php">拉手商旅卡</a></li--></LI></UL><!--[if IE 6]>
				<iframe id="hotel_select" style="filter:alpha(opacity=0); position:absolute; height:60px; top:150px; left:-1px; width:117px; display:none;"></iframe>
				<![endif]--></STRONG><STRONG>
<DIV 
style="Z-INDEX: 10; POSITION: absolute; WIDTH: 20px; BACKGROUND-POSITION: -53px -135px; HEIGHT: 19px; TOP: -11px; RIGHT: 5px" 
class=fpng></DIV><A href="http://cp.lashou.com/" target=_blank>彩票</A> 
</STRONG></DIV>
<DIV class="nav-login r"><SPAN class=nav-name 
title=rz.sino272789>rz.sino272789</SPAN> <SPAN class=nav-x><A 
href="http://guangzhou.lashou.com/grade.php" target=_blank><IMG alt="" 
src="showGwc_files/ico_jbb.gif" width=16 height=16></A> </SPAN><SPAN id=n_ml 
class=nav-my><A class=sub 
href="http://www.lashou.com/mycode.php">我的拉手<EM></EM></A> 
<UL style="DISPLAY: none" class=n-h-list>
  <LI><A href="http://www.lashou.com/mycode.php">我的拉手券</A> </LI>
  <LI><A href="http://www.lashou.com/mygo.php">我的订单</A> </LI>
  <LI><A href="http://www.lashou.com/mycollection.php">我的收藏</A> </LI>
  <LI><A href="http://www.lashou.com/deliver_address.php">常用地址</A> </LI>
  <LI><A href="http://www.lashou.com/bills.php">拉手账本</A> </LI>
  <LI><A href="http://www.lashou.com/settings.php">账户设置</A> </LI>
  <LI><A href="http://www.lashou.com/message.php">我的消息</A> 
</LI></UL></SPAN><SPAN><A href="http://www.lashou.com/logout.php">退出</A></SPAN> 
</DIV></DIV></DIV><!--nav end-->
<STYLE type=text/css>@import url( http://d1.lashouimg.com/templates/default/images/img_buy/liuch110910.css );
</STYLE>

<SCRIPT>
var goods = {
	'type':1,
	'max_per_user':50,
	'real_max_per_user':50,
	'min_per_user':0,
	'max_per_order':0,
	'max_bought':0,
	'convey_fee':0,
	'bought':1826,
	'user_can_bought':50,
	'price':38.00,
	'radio':0,
	'enum':0,
	'free_convey_amount':0,
	'left':0,
	'sub_goods_limit':[],
	'promotion':0,
	'leave_bought':0,
	'cycle_time':0,
	'cycle_amount':0}
</SCRIPT>

<SCRIPT type=text/javascript src="showGwc_files/buy0428-32.js"></SCRIPT>
<!--content start:-->
<DIV class=content>
<FORM id=sub_form onsubmit="return validate_buy()" method=post 
action=buy2.php?act=buy><INPUT id=ch type=hidden name=ch> <!--content main-l-->
<DIV class="main-l l">
<DIV class=cont-detail>
<DIV class="c_cion detail-bg-t"></DIV>
<DIV class=detail-mid>
<DIV class=gbt_line><IMG src="showGwc_files/tj_sanbu.gif"> </DIV>
<DIV class=lc_out>
<TABLE class=lc_heatab border=0 cellSpacing=0 cellPadding=0 width="100%">
  <TBODY>
  <TR class=lc_hhbg>
    <TD width="42%" align=middle>名称</TD>
    <TD class=lc_online width="2%" align=middle>&nbsp;</TD>
    <TD width="15%" align=middle>数量</TD>
    <TD class=lc_online width="2%" align=middle>&nbsp;</TD>
    <TD width="17%" align=middle>单价</TD>
    <TD class=lc_online width="2%" align=middle>&nbsp;</TD>
    <TD width="20%" align=middle>总价</TD></TR>
    <c:forEach items="${showGwc}" var="showgwc">
  <TR>
    <TD class=lc_padd><A href="http://guangzhou.lashou.com/deal/895973.html" 
      target=_blank>${showgwc.name }</A> </TD>
    <TD>&nbsp;</TD>
    <TD align=middle><INPUT id=order_amount class=lc_wbkuang value='${showgwc.tuangoucount}' 
      name=amount autocomplete="off"> </TD>
    <TD style="FONT-FAMILY: Tahoma" class=lc_fontz align=middle>×</TD>
    <TD style="FONT-FAMILY: Arial" class=lc_fontz0 align=middle>¥<SPAN 
      id=price>${showgwc.tuangouprice }</SPAN></TD>
    <TD class=lc_fontz align=middle>=</TD>
    <TD style="FONT-FAMILY: Arial" class=lc_fontz0 align=middle>¥ <SPAN 
      id=total_money_no_cf><fmt:formatNumber value="${showgwc.tuangouprice*showgwc.tuangoucount }" pattern="0.00"/></SPAN> 
      </TD></TR>
      </c:forEach>
      <!--显示配送产品的运费相关信息-->
  <TR>
    <TD style="FONT-FAMILY: Arial" class="lc_padd lc_zongj" colSpan=7 
    align=right><EM style="FONT-WEIGHT: bold"></EM>总额：<SPAN id=total_money 
      class=lc_redzi>¥<fmt:formatNumber value="${showgwc.tuangouprice*showgwc.tuangoucount}" pattern="0.00"/></SPAN> </TD></TR></TBODY></TABLE>
<DIV class=lc_phone>
<TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
  <TBODY>
  <TR>
    <TD class=lc_dbt height=28>您的手机</TD></TR>
  <TR>
    <TD height=25><SPAN class=zi14>团购成功后，拉手券密码将发送至：<SPAN 
      class=exist_mobile>186****3343</SPAN>，凭拉手券密码去商家消费！ </SPAN><INPUT id=shouji 
      value=186****3343 type=hidden name=bindmobile> </TD></TR>
  <TR>
    <TD style="COLOR: #666; FONT-SIZE: 12px" height=23>· 
  送朋友？转发拉手券短信给TA即可！</TD></TR>
  <TR>
    <TD height=20><SPAN style="COLOR: #666; FONT-SIZE: 12px" class=zi14>· 换号了？ 
      <A id=auth_bindmobile_link href="javascript:void(0)">绑定新手机号»</A> 
  </SPAN></TD></TR></TBODY></TABLE></DIV>
<SCRIPT type=text/javascript> 
					function show(){$("#zx").css("display", "none");$(".yzm").css("display", "block");}
				</SCRIPT>
</DIV>
<DIV class=lc_bigbut><INPUT value=895973 type=hidden name=id> <INPUT value=1 
type=hidden name=type> <INPUT style="CURSOR: pointer" class=lc_buttonbig type=submit name=""> 
</DIV></DIV>
<DIV class="c_cion detail-bg-b"></DIV></DIV></DIV></FORM><!-- 右侧-->
<DIV class="main-r r"></DIV>
<DIV class=c></DIV></DIV><!--footer start:-->
<DIV class=footer>
<DIV class="g_footer c"></DIV>
<DIV class=footer-inside>
<DL style="PADDING-LEFT: 15px" class=aboutls>
  <DT><STRONG class=f_beginner>用户帮助</STRONG> 
  <DD><A href="http://www.lashou.com/what.php" rel=nofollow><I></I>拉手是什么</A> <A 
  href="http://www.lashou.com/faq.php" rel=nofollow><I></I>常见问题</A> <A 
  href="http://www.lashou.com/faq.php?act=zhifu" rel=nofollow><I></I>支付方式</A> <A 
  href="http://www.lashou.com/setemails.php?type=163" 
  rel=nofollow><I></I>邮箱白名单设置</A> <A href="http://www.lashou.com/feedback.php" 
  rel=nofollow><I></I>意见反馈</A> <A 
  href="http://www.lashou.com/event/lottery_form.php" rel=nofollow 
  target=_blank><I></I>往期抽奖公布</A> <A 
  href="http://guangzhou.lashou.com/hot_deals/guangzhou" 
  target=_blank><I></I>往期团购</A> </DD></DL>
<DL class=aboutls>
  <DT><STRONG class=f_updates>获取更新</STRONG> 
  <DD><A href="http://www.lashou.com/subscribe.php" rel=nofollow><I></I>邮件订阅</A> 
  <A href="http://www.lashou.com/rss.php?cityid=2422" rel=nofollow 
  target=_blank><I></I>RSS订阅</A> <A href="http://t.sina.com.cn/lasho" 
  rel=nofollow target=_blank><I></I>拉手新浪微博</A> <A 
  href="http://www.douban.com/group/lashou/" rel=nofollow 
  target=_blank><I></I>拉手豆瓣小组</A> </DD></DL>
<DL class=aboutls>
  <DT><STRONG class=f_businesses>商务合作</STRONG> 
  <DD><A href="http://www.lashou.com/stores/commit.php?act=sp" rel=nofollow 
  target=_blank><I></I>提供团购信息</A> <A 
  href="http://www.lashou.com/open.php?page=api" rel=nofollow><I></I>团购开放API</A> 
  <A href="http://www.lashou.com/setwidget.php" 
  rel=nofollow,noindex><I></I>团购挂件</A> <A 
  href="http://www.lashou.com/need/ad/hezuo.php"><I></I>合作伙伴</A> <A 
  href="http://union.lashou.com/" target=_blank><I></I>拉手网联盟</A> </DD></DL>
<DL class=aboutls>
  <DT><STRONG class=f_company>公司信息</STRONG> 
  <DD><A href="http://www.lashou.com/about.php" rel=nofollow><I></I>关于拉手</A> <A 
  href="http://www.lashou.com/about.php?act=press" rel=nofollow><I></I>媒体报道</A> 
  <A href="http://www.lashou.com/job.php" rel=nofollow><I></I>加入我们</A> <A 
  href="http://www.lashou.com/contact.php" rel=nofollow><I></I>联系我们</A> <A 
  href="http://www.lashou.com/rule.php" rel=nofollow><I></I>隐私条款</A> <A 
  href="http://www.lashou.com/xieyi.php" rel=nofollow><I></I>用户协议</A> <A 
  href="http://www.lashou.com/faq.php?act=promise" rel=nofollow><I></I>团购三包</A> 
  <A href="http://www.lashou.com/faq.php?act=server" 
  rel=nofollow><I></I>退换货服务</A> </DD></DL>
<DL class=aboutls>
  <DT><STRONG class=f_software>手机软件</STRONG> 
  <DD><A href="http://mobile.lashou.com/client_buy.html" 
  target=_blank><I></I>拉手团购</A> <A 
  href="http://mobile.lashou.com/client_hotel.html" rel=nofollow 
  target=_blank><I></I>拉手酒店预订</A> <A 
  href="http://mobile.lashou.com/client_caipiao.html" rel=nofollow 
  target=_blank><I></I>拉手彩票</A> </DD></DL><!--logo-->
<DIV class="footlogo l"><A 
style="Z-INDEX: 2; TEXT-INDENT: -999em; OVERFLOW: hidden" 
title=拉手网全国统一客服电话4000-517-317 href="http://guangzhou.lashou.com/" 
rel=nofollow>拉手网</A><SPAN></SPAN></DIV>
<DIV class="copyright c">
<DIV style="OVERFLOW: hidden; PADDING-TOP: 25px"><A class=renz1 
href="http://www.lashou.com/need/ad/chengxin.php" rel=nofollow 
target=_blank></A><A class=renz2 
href="http://www.lashou.com/need/ad/chengxin.php#renzheng" rel=nofollow 
target=_blank></A><A class=renz3 
href="http://www.lashou.com/need/ad/chengxin.php#zfb" rel=nofollow 
target=_blank></A><A class=renz4 
href="http://www.lashou.com/need/ad/chengxin.php#cft" rel=nofollow 
target=_blank></A><A class=renz5 
href="http://www.lashou.com/need/ad/chengxin.php#kxl" rel=nofollow 
target=_blank></A></DIV>
<DIV style="PADDING-TOP: 15px">© 2012 北京拉手网络技术有限公司 LaShou.com 京ICP证100571号 
京ICP备11004895号 京公网安备110105001181号 </DIV></DIV></DIV></DIV><!--footer end:-->
<SCRIPT type=text/javascript>
//<![CDATA[
(function() {
var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
ga.src = 'http://www.google-analytics.com/ga.js';
var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();
 //]]>
</SCRIPT>
</BODY></HTML>
