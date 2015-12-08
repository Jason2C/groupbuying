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
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>购物车</TITLE>
<META content="text/html; charset=utf-8" http-equiv=Content-Type>
<META content=IE=7 http-equiv=x-ua-compatible>
<META name=copyright content=lashou>
<LINK rel="shortcut icon" href="/favicon.ico">
<LINK rel=Bookmark href="http://www.lashou.com/favicon.ico">
<LINK title=RSS rel=alternate 
type=application/rss+xml href="http://www.lashou.com/rss.php?cityid=2422">
<LINK rel=stylesheet type=text/css href="showGwc_files/base80.css"><LINK 
rel=stylesheet type=text/css href="showGwc_files/myls29.css">
<SCRIPT type=text/javascript src="showGwc_files/jquery-1.3.2.min.js"></SCRIPT>

<!-- <SCRIPT type=text/javascript 
src="showGwc_files/jquery.autocomplete-02-min.js"></SCRIPT> -->

<!-- <SCRIPT type=text/javascript src="showGwc_files/base0428-59-min.js"></SCRIPT> -->

<!-- <SCRIPT src="showGwc_files/tb-slider03-min.js"></SCRIPT> -->


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
<DIV class="logo l"><A href="goods.do"><IMG alt=广州团购 
src="showGwc_files/logo-new03.png" width=152 height=83></A></DIV>
<UL class="city l">
  <LI class=more>
  <LI>已开通城市500+ </LI></UL>
</DIV>

<STYLE type=text/css>@import url( http://d1.lashouimg.com/templates/default/images/img_buy/liuch110910.css );
</STYLE>
<script type="text/javascript">
$(function(){
	var count=0;
	$.each($('.goodcount'),function(i,v){
		count=Number(count)+ Number($(this).text());
		$('.lc_redzi').text("¥"+count);
		$('.lc_redzi2').val(count);
	});
});
</script>
<!-- <SCRIPT type=text/javascript src="showGwc_files/buy0428-32.js"></SCRIPT> -->
<!--content start:-->
<DIV class=content>
<FORM id=sub_form onsubmit="return validate_buy()" method=post 
action=goods~addOrder.do><INPUT id=ch type=hidden name=ch> <!--content main-l-->
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
    <TD align=middle><INPUT id=order_amount class=lc_wbkuang disabled="true" value='${showgwc.tuangoucount}' 
      name=amount autocomplete="off"> </TD>
    <TD style="FONT-FAMILY: Tahoma" class=lc_fontz align=middle>×</TD>
    <TD style="FONT-FAMILY: Arial" class=lc_fontz0 align=middle>¥<SPAN 
      id=price>${showgwc.tuangouprice }</SPAN></TD>
    <TD class=lc_fontz align=middle>=</TD>
    <TD style="FONT-FAMILY: Arial" class=lc_fontz0 align=middle>¥ <SPAN  class=goodcount
      id=total_money_no_cf><fmt:formatNumber value="${showgwc.tuangouprice*showgwc.tuangoucount }" pattern="0.00"/></SPAN> 
      </TD></TR>
      </c:forEach>
      <!--显示配送产品的运费相关信息-->
  <TR>
    <TD style="FONT-FAMILY: Arial" class="lc_padd lc_zongj" colSpan=7 
    align=right><EM style="FONT-WEIGHT: bold"></EM>总额：
    <input name=allCount class=lc_redzi2 type="hidden" value="" />
    <SPAN id=total_money class=lc_redzi>¥<fmt:formatNumber value="${showgwc.tuangouprice*showgwc.tuangoucount}" pattern="0.00"/></SPAN> </TD></TR></TBODY></TABLE>
</DIV>
<DIV class=lc_bigbut><INPUT value=895973 type=hidden name=id> <INPUT value=1 
type=hidden name=type> <INPUT style="CURSOR: pointer" class=lc_buttonbig type=submit name="" value=""> 
</DIV></DIV>
</DIV></DIV></FORM><!-- 右侧-->
</BODY></HTML>
