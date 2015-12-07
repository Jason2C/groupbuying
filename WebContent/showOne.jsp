<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0047)http://www.lashou.com/travel/detail/859836.html -->
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<TITLE>${goods.name}</TITLE>
<META content="text/html; charset=utf-8" http-equiv=Content-Type>
<META content=IE=7 http-equiv=x-ua-compatible>
<LINK rel=stylesheet type=text/css href="showOne_files/base79.css">
<LINK rel=stylesheet type=text/css href="showOne_files/lashou57.css">
<SCRIPT type=text/javascript src="showOne_files/jquery-1.3.2.min.js"></SCRIPT>

<SCRIPT type=text/javascript 
src="showOne_files/jquery.autocomplete-02-min.js"></SCRIPT>

<!-- <SCRIPT type=text/javascript src="showOne_files/base0428-59-min.js"></SCRIPT> -->

<SCRIPT src="showOne_files/tb-slider03-min.js"></SCRIPT>

<!--[if IE 6]>
<SCRIPT src="http://s1.lashouimg.com/templates/default//images/iepng.js"></SCRIPT>
<SCRIPT>
DD_belatedPNG.fix('.bq_discount,.news_small,.footlogo span,.n_news,li.eb a,li.eb,.cont-share,.c_cion,.proicon,.cm-over img,.detail-mid h4 span,.c-buy-num img,.hs_cion,.hscon-mid,.hs_pic,.mini-pro-buy,.mini-time,.m-buy-btn002,.m-buy-btn-1,.fpng,.c_other,.prodetail h4 span,.weibo,.wb-tit,.n-rss,.nform,.indexuptop2');
</SCRIPT>
<![endif]-->
</HEAD>
<BODY><!--header start:-->
<DIV 
style="BACKGROUND: url(http://s2.lashouimg.com/static/pics/www/header_bangy005.jpg) no-repeat" 
class=header>
<DIV class="logo l"><A href="goods.do"><IMG alt=拉手网团购 
src="showOne_files/logo-new03.png" width=152 height=83></A></DIV>
<UL class="city l">
  <LI class=more>
  <LI>已开通城市500+ </LI></UL>
</DIV>
<STYLE>
#like-button {
	POSITION: absolute; TEXT-INDENT: -9999px; MARGIN: 45px 0px 0px 950px; WIDTH: 24px; DISPLAY: block; BACKGROUND: url(http://img.test.lashou.com/static/templates/default/images/like_icon.png) 0px -100px; HEIGHT: 71px; OVERFLOW: hidden; CURSOR: pointer
}
#TB_overlay {
	Z-INDEX: 99999; POSITION: fixed; WIDTH: 100%; HEIGHT: 100%; TOP: 0px; LEFT: 0px
}
.TB_overlayBG {
	FILTER: alpha(opacity=75); BACKGROUND-COLOR: #000; opacity: 0.75; -moz-opacity: 0.75
}
* HTML #TB_overlay {
	POSITION: absolute
}
#TB_window {
	Z-INDEX: 999999; BORDER-BOTTOM: #525252 4px solid; POSITION: fixed; TEXT-ALIGN: left; BORDER-LEFT: #525252 4px solid; DISPLAY: none; BACKGROUND: #ffffff; COLOR: #000000; BORDER-TOP: #525252 4px solid; TOP: 50%; BORDER-RIGHT: #525252 4px solid; LEFT: 50%
}
* HTML #TB_window {
	POSITION: absolute
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
	POSITION: absolute
}
#TB_HideSelect {
	Z-INDEX: 99999; POSITION: fixed; BORDER-BOTTOM-STYLE: none; FILTER: alpha(opacity=0); BORDER-RIGHT-STYLE: none; BACKGROUND-COLOR: #fff; WIDTH: 100%; BORDER-TOP-STYLE: none; HEIGHT: 100%; BORDER-LEFT-STYLE: none; TOP: 0px; LEFT: 0px; opacity: 0; -moz-opacity: 0
}
* HTML #TB_HideSelect {
	POSITION: absolute
}
#TB_iframeContent {
	BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none; MARGIN-TOP: 1px; BORDER-TOP-STYLE: none; MARGIN-BOTTOM: -1px; CLEAR: both; BORDER-LEFT-STYLE: none; _margin-bottom: 1px
}
</STYLE>
<LINK rel=stylesheet type=text/css href="showOne_files/travel_d05.css">
<SCRIPT type=text/javascript src="showOne_files/jquery.lazyload.js"></SCRIPT>

<SCRIPT type=text/javascript>
        $(function(){
                //lazyload
                var load_img = new Image();
                load_img.src = "http://d1.lashouimg.com/static/pics/hotel/_loading.gif";
                  $("#img_load img").lazyload({
			placeholder : load_img.src,
			effect : "fadeIn"
		})
                
                //time
                var  SysSecond2 = parseInt($('#sec_left2').text());
		var InterValObj2 = window.setInterval(SetRemainTime2, 1000);
		function SetRemainTime2() {
		  if (SysSecond2 > 0) {
		   SysSecond2 = SysSecond2 - 1;
		   var second = Math.floor(SysSecond2 % 60);
		   var minite = Math.floor((SysSecond2 / 60) % 60);
		   var hour = Math.floor((SysSecond2 / 3600) % 24);
		   var day = Math.floor((SysSecond2 / 3600) / 24);
			$("#time2").html(hour + "小时" + minite + "分" + second + "秒");
		  }else{
			window.clearInterval(InterValObj2);
		  }
		}
		var  SysSecond = parseInt($('#sec_left').text());
		var InterValObj = window.setInterval(SetRemainTime, 1000);
		function SetRemainTime() {
		  if (SysSecond > 0) {
		   SysSecond = SysSecond - 1;
		   var second = Math.floor(SysSecond % 60);
		   var minite = Math.floor((SysSecond / 60) % 60);
		   var hour = Math.floor((SysSecond / 3600) % 24);
		   var day = Math.floor((SysSecond / 3600) / 24);
			$("#time").html(day + "天" + hour + "小时" + minite + "分" + second + "秒");
		  }else{
			window.clearInterval(InterValObj);
		  }
		}
        });
</SCRIPT>

<DIV class=content>
<SCRIPT type=text/javascript>
	function _reserve_ad_close(){
		$("#slideshow2_wrap").css("display","none");
	}
</SCRIPT>

<DIV class="main-l l">
<DIV class=sharebox>
<DIV style="DISPLAY: none" id=deal-share-im-c class="c qqmsndown">把下面的内容通过 MSN 或 
QQ 发送给好友：<BR><INPUT 
style="BORDER-BOTTOM: #c1c1c1 1px solid; BORDER-LEFT: #c1c1c1 1px solid; PADDING-BOTTOM: 3px; PADDING-LEFT: 3px; WIDTH: 350px; PADDING-RIGHT: 3px; COLOR: #999; FONT-SIZE: 12px; BORDER-TOP: #c1c1c1 1px solid; BORDER-RIGHT: #c1c1c1 1px solid; PADDING-TOP: 3px" 
id=invite_url onclick=this.select() 
value="${goods.details}" 
readOnly name=""> </DIV></DIV>
<DIV class=cont-titbox>
<DIV class="c_cion con-bg-t"></DIV>
<DIV class=con-mid>
<H1><FONT color=#ff0000></FONT>${goods.name}
</H1>
<DIV class=dealinfo>
<DIV class="deal-l lsm-deal l">
<DIV class=c-pro-price>
<DIV class="c_cion c-pro-buy"><SPAN class=c-buy-num><SPAN>¥</SPAN>${goods.tuangouprice}</SPAN> <A 
class="proicon c-buy-btn" href="http://www.lashou.com/buy.php?id=859836">购买</A> 
</DIV></DIV>
<DIV class=lsm-deal-fm>
<TABLE class="c-pro-discount lsm-dit" border=0 cellSpacing=0 cellPadding=0 
width="100%">
  <TBODY>
  <TR>
    <TD>市场价<SPAN class=val>¥${goods.price}</SPAN></TD>
    <TD>折扣<SPAN><fmt:formatNumber value="${goods.tuangouprice/goods.price}" pattern="0.0"/>折</SPAN></TD>
    <TD>节省<SPAN>¥<fmt:formatNumber value="${goods.price-goods.tuangouprice}" pattern="0.0"/></SPAN></TD></TR></TBODY></TABLE></DIV>
<script type="text/javascript">
$(function(){
	$(".button-red").click(function(){
		$.ajax({
			url:'goods~addGWC.do?gid=${goods.id}',
			success:function(){
				//$('.cm-success').html('<SPAN class=c_cion></SPAN>团购已成功，可继续购买');
				alert("添加购物车成功!!!");
			}
		});
	});
	
});
</script>
<UL class=c-pro-mode>
  <LI class=cm-mun><EM>${goods.sold}</EM>人已购买 
  <LI style="COLOR: #666">剩余3天以上 </LI>
  <LI class="cm-success o"><SPAN class=c_cion></SPAN><a class="button-red" href="javascript:;">添加购物车</a><!-- 团购已成功，可继续购买 --> 
  <!-- <LI style="MARGIN: -3px 0px 12px; COLOR: #666">22点05分达到最低团购人数：<STRONG>5</STRONG>人 </LI> -->
  <LI class="cm-refund lsm-refund"><SPAN class=lsm-refund7>
  <A class=c_cion title="支持 “7天内未消费，无条件退款”" href="http://www.lashou.com/faq.php?act=promise" target=_blank>支持“7天退款”</A></SPAN> 
  <SPAN class=lsm-refundout><A class=c_cion title="支持 “过期未消费，一键退款”" href="http://www.lashou.com/faq.php?act=promise" target=_blank>支持“过期退款”</A></SPAN> </LI></UL></DIV>
<DIV class="deal-r r">
<DIV class=c-pro-image><IMG alt="" src="showOne_files/133836752150639000.jpg" width=440 height=280></DIV>
<DIV 
class=c-pro-text>悠悠珠江水，缱绻柔情对，船游夜珠江，美景媲漓江！认识千年南国红豆，弹奏动情珠水流光，从这里起航！&nbsp;</DIV></DIV>
<DIV class=c></DIV></DIV></DIV>
<DIV class="c_cion con-bg-b"></DIV></DIV></DIV><!--新版下部信息-->
<DIV class=c></DIV></DIV>
<DIV class=c></DIV>
<DIV></DIV>
<SCRIPT type=text/javascript src="showOne_files/init.htm"></SCRIPT>
</BODY></HTML>
