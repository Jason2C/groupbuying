<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0030)http://www.lashou.com/regn.php -->
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>注册 | 拉手网广州</TITLE>
<META content="text/html; charset=utf-8" http-equiv=Content-Type>
<META content=IE=7 http-equiv=x-ua-compatible>
<LINK rel="shortcut icon" href="/favicon.ico">
<LINK rel=stylesheet type=text/css href="regist_files/myls29.css">
<LINK rel=stylesheet type=text/css href="css/index.css">
<SCRIPT type=text/javascript src="regist_files/jquery-1.3.2.min.js"></SCRIPT>
<SCRIPT type=text/javascript src="js/jquery.validate.js"></SCRIPT>
<SCRIPT type=text/javascript src="showGwc_files/jquery.autocomplete-02-min.js"></SCRIPT>
<SCRIPT type=text/javascript src="showGwc_files/base0428-59-min.js"></SCRIPT>
<SCRIPT src="showGwc_files/tb-slider03-min.js"></SCRIPT>



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
<DIV class="logo l"><A href="goods.do"><IMG alt=拉手网团购 
src="regist_files/logo-new03.png" width=152 height=83></A></DIV>
<UL class="city l">
  <LI class=more>
  <LI>已开通城市500+ </LI></UL>
</DIV>
<div class="lsnav">
	<div class="nav-inside">
	<div class="nav-login r">
		<c:choose>
			<c:when test="${name!=null}">
				<jsp:include page="user.jsp" />
					   		欢迎${name}<a href="login.do">退出</a>
			</c:when>
			<c:otherwise>
				<span><a href="login.jsp">登录</a></span>
				<span><a href="regist.jsp">注册</a></span>
			</c:otherwise>
		</c:choose>
	</div>
	</div>
</div>
<STYLE>.reg_ok {
	LINE-HEIGHT: 28px; PADDING-LEFT: 25px; DISPLAY: inline-block; BACKGROUND: url(http://s2.lashouimg.com/static/pics/myls/icons-signup.png) no-repeat; HEIGHT: 28px
}
.reg_no {
	LINE-HEIGHT: 28px; PADDING-LEFT: 25px; DISPLAY: inline-block; BACKGROUND: url(http://s2.lashouimg.com/static/pics/myls/icons-signup.png) no-repeat; HEIGHT: 28px
}
.reg_ok {
	BACKGROUND-POSITION: 5px 8px; COLOR: #090
}
.reg_no {
	BACKGROUND-POSITION: 5px -42px; COLOR: #c66
}
</STYLE>

<SCRIPT type=text/javascript src="regist_files/sp11.js"></SCRIPT>


<script type="text/javascript">
	$(function() {
		$("#reg").validate({
			rules : {
				'users.email' : {
					required : true,
					email : true,
					remote : {
						url : "regist~verifyemailn.do",
						type : "post",
						dataType : "json",
						data : {
							'users.email' : function() {
								return $("#email").val();
							}
						}

					}
				},
				'users.username' : {
					required : true,
					remote : {
						url : "regist~verifynamen.do",
						type : "post",
						dataType : "json",
						data : {
							'username' : function() {
								return $("#user_name").val();
							}
						}
					}
				},
				'users.userpwd' : {
					required : true,
					minlength : 6
				},
				'confirmPassword' : {
					required : true,
					minlength : 6,
					equalTo : "#pwd"
				},
				'validateNum' : {
					required : true
				}
			},
			messages : {
				'users.email' : {
					required : '必填',
					email : "必须输入正确格式的电子邮件",
					remote : '邮箱已存在'
				},
				'users.username' : {
					required : '必填',
					remote : "用户已存在",
				},
				'users.userpwd' : {
					required : "请输入密码",
					minlength : "密码不能小于6个字符"
				},
				'confirmPassword' : {
					required : "请输入确认密码",
					minlength : "确认密码不能小于6个字符",
					equalTo : "两次输入密码不一致不一致"
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
<DIV class=content><!--content main-l-->
<DIV class="main-l l">
<DIV class=cont-detail>
<DIV class="c_cion detail-bg-t"></DIV>
<DIV class=detail-mid>
<DIV class=gbt_line><IMG src="regist_files/reg_title.jpg"></DIV>
<SCRIPT language=javascript type=text/javascript>
				//<!CDATA[
				function g(o){return document.getElementById(o);}
				function HoverLi(n){
				//如果有N个标签,就将i<=N;
				for(var i=1;i<=2;i++){g('tb_'+i).className='out_login';g('tbc_0'+i).className='undis';}g('tbc_0'+n).className='dis';g('tb_'+n).className='state_login';
				}
				//如果要做成点击后再转到请将<li>中的onmouseover 改成 onclick;
				//]]>
				</SCRIPT>

<DIV class="sect reg-con">
<DIV id=tb_ class=school_tab>
<UL>
  <LI id=tb_1 class=state_login  >
  <A href="#">个人用户</A> </LI>
  <!-- <LI id=tb_2 class=out_login onclick=x:HoverLi(2);>
  <A href="http://www.lashou.com/regn.php#">校园用户</A> </LI> --></UL></DIV>
  
  
<FORM id=reg method=post action=user.do>
<TABLE id=tbc_01 class=dis border=0 cellSpacing=0 cellPadding=0 width="100%" 
align=center>
  <TBODY>
  <TR>
    <TD style="FONT-SIZE: 14px" height=40 align=right>邮箱：</TD>
    <TD width="75%">
    <INPUT id=email class=kuangaa_login maxLength=200 size=28 name=users.email value="${user.email}"><span></span> </TD></TR>
    <TR>
    <TD style="FONT-SIZE: 14px" height=40 align=right>真是姓名：</TD>
    <TD width="75%">
    <INPUT id=email class=kuangaa_login maxLength=200 size=28 name=users.email value="${user.realname}"><span></span> </TD></TR>
    <TR>
    <TD style="FONT-SIZE: 14px" height=40 align=right>性别：</TD>
    <TD width="75%">
    <INPUT id=email class=kuangaa_login maxLength=200 size=28 name=users.email value="${user.sex}"><span></span> </TD></TR>
    <TR>
    <TD style="FONT-SIZE: 14px" height=40 align=right>电话：</TD>
    <TD width="75%">
    <INPUT id=email class=kuangaa_login maxLength=200 size=28 name=users.email value="${user.phone}"><span></span> </TD></TR>
    <TR>                                                                        
    <TD style="FONT-SIZE: 14px" height=40 align=right>地址：</TD>                  
    <TD width="75%">                                                            
    <INPUT id=email class=kuangaa_login maxLength=200 size=28 name=users.email value="${user.address}"><span></span> </TD></TR>
    <TR>                                                                        
    <TD style="FONT-SIZE: 14px" height=40 align=right>qq：</TD>                  
    <TD width="75%">                                                            
    <INPUT id=email class=kuangaa_login maxLength=200 size=28 name=users.email value="${user.qq}"><span></span> </TD></TR>
  <TR>
    <TD style="FONT-SIZE: 14px" height=40 align=right>所在城市：</TD>
    <TD><SELECT id=cityid name=users.type> <OPTGROUP 
        label=""></OPTGROUP><OPTGROUP label=安徽><OPTION 
          value=40>合肥</OPTION><OPTION value=43>马鞍山</OPTION><OPTION 
          value=48>芜湖</OPTION><OPTION value=25>淮南</OPTION><OPTION 
          value=22>蚌埠</OPTION><OPTION value=19>阜阳</OPTION><OPTION 
          value=69>黄山</OPTION><OPTION value=68>安庆</OPTION><OPTION 
          value=65>池州</OPTION><OPTION value=61>铜陵</OPTION><OPTION 
          value=51>宣城</OPTION><OPTION value=36>六安</OPTION><OPTION 
          value=6>亳州</OPTION><OPTION value=4>淮北</OPTION><OPTION 
          value=39>巢湖</OPTION><OPTION value=32>滁州</OPTION><OPTION 
          value=54>桐城</OPTION><OPTION value=24>天长</OPTION><OPTION 
          value=12>界首</OPTION><OPTION value=66>宁国</OPTION><OPTION 
          value=18>明光</OPTION><OPTION value=5>宿州</OPTION><OPTION 
          value=340122>肥东县</OPTION><OPTION 
        value=340123>肥西县</OPTION></OPTGROUP><OPTGROUP label=澳门><OPTION 
          value=2426>澳门</OPTION></OPTGROUP><OPTGROUP label=北京><OPTION 
          value=2419>北京</OPTION><OPTION value=110114>昌平区</OPTION><OPTION 
          value=110113>顺义区</OPTION></OPTGROUP><OPTGROUP label=重庆><OPTION 
          value=2418>重庆</OPTION><OPTION value=500101>万州</OPTION><OPTION 
          value=500102>涪陵</OPTION><OPTION value=500115>长寿区</OPTION><OPTION 
          value=500382>合川区</OPTION><OPTION value=500381>江津区</OPTION><OPTION 
          value=500384>南川区</OPTION></OPTGROUP><OPTGROUP label=福建><OPTION 
          value=171>福州</OPTION><OPTION value=196>厦门</OPTION><OPTION 
          value=191>泉州</OPTION><OPTION value=200>漳州</OPTION><OPTION 
          value=185>龙岩</OPTION><OPTION value=159>宁德</OPTION><OPTION 
          value=141>武夷山</OPTION><OPTION value=197>晋江</OPTION><OPTION 
          value=170>三明</OPTION><OPTION value=183>莆田</OPTION><OPTION 
          value=161>南平</OPTION><OPTION value=175>长乐</OPTION><OPTION 
          value=190>南安</OPTION><OPTION value=199>石狮</OPTION></OPTGROUP><OPTGROUP 
        label=广东><OPTION selected value=2422>广州</OPTION><OPTION 
          value=372>深圳</OPTION><OPTION value=354>佛山</OPTION><OPTION 
          value=322>东莞</OPTION><OPTION value=392>珠海</OPTION><OPTION 
          value=375>中山</OPTION><OPTION value=374>江门</OPTION><OPTION 
          value=361>肇庆</OPTION><OPTION value=358>惠州</OPTION><OPTION 
          value=389>湛江</OPTION><OPTION value=386>茂名</OPTION><OPTION 
          value=353>汕头</OPTION><OPTION value=351>潮州</OPTION><OPTION 
          value=342>梅州</OPTION><OPTION value=330>韶关</OPTION><OPTION 
          value=307>清远</OPTION><OPTION value=306>河源</OPTION><OPTION 
          value=311>花都</OPTION><OPTION value=305>从化</OPTION><OPTION 
          value=370>汕尾</OPTION><OPTION value=312>揭阳</OPTION><OPTION 
          value=324>阳江</OPTION><OPTION value=310>增城</OPTION><OPTION 
          value=440113>番禺</OPTION><OPTION value=440606>顺德</OPTION><OPTION 
          value=440306>宝安</OPTION><OPTION value=460106>龙华</OPTION><OPTION 
          value=365>云浮</OPTION><OPTION value=359>惠东</OPTION><OPTION 
          value=308>博罗</OPTION><OPTION value=304>龙门</OPTION><OPTION 
          value=378>开平</OPTION><OPTION value=379>恩平</OPTION><OPTION 
          value=352>四会</OPTION><OPTION value=441901>虎门</OPTION><OPTION 
          value=441902>长安</OPTION><OPTION value=441903>厚街</OPTION><OPTION 
          value=441904>常平</OPTION><OPTION value=440607>三水</OPTION><OPTION 
          value=440608>高明</OPTION><OPTION value=441905>樟木头</OPTION><OPTION 
          value=441906>大朗</OPTION><OPTION value=441907>大岭山</OPTION><OPTION 
          value=441908>凤岗</OPTION><OPTION value=440307>龙岗</OPTION><OPTION 
          value=440308>盐田</OPTION><OPTION value=440605>南海</OPTION><OPTION 
          value=2430>塘厦</OPTION></OPTGROUP><OPTGROUP label=贵州><OPTION 
          value=519>贵阳</OPTION><OPTION value=560>遵义</OPTION><OPTION 
          value=536>都匀</OPTION><OPTION value=534>安顺</OPTION><OPTION 
          value=526>六盘水</OPTION><OPTION value=490>仁怀</OPTION><OPTION 
          value=483>赤水</OPTION><OPTION value=494>毕节</OPTION><OPTION 
          value=493>铜仁</OPTION><OPTION value=514>福泉</OPTION><OPTION 
          value=505>镇远</OPTION><OPTION value=523>凯里</OPTION></OPTGROUP><OPTGROUP 
        label=甘肃><OPTION value=242>兰州</OPTION><OPTION 
          value=281>天水</OPTION><OPTION value=210>敦煌</OPTION><OPTION 
          value=214>酒泉</OPTION><OPTION value=623000>甘南</OPTION><OPTION 
          value=293>陇南</OPTION><OPTION value=241>白银</OPTION><OPTION 
          value=253>庆阳</OPTION><OPTION value=249>定西</OPTION><OPTION 
          value=257>平凉</OPTION><OPTION value=226>金昌</OPTION><OPTION 
          value=228>武威</OPTION><OPTION value=258>临夏</OPTION><OPTION 
          value=222>张掖</OPTION><OPTION value=215>嘉峪关</OPTION></OPTGROUP><OPTGROUP 
        label=广西><OPTION value=462>南宁</OPTION><OPTION 
          value=407>桂林</OPTION><OPTION value=427>柳州</OPTION><OPTION 
          value=475>北海</OPTION><OPTION value=465>玉林</OPTION><OPTION 
          value=472>防城港</OPTION><OPTION value=470>钦州</OPTION><OPTION 
          value=457>贵港</OPTION><OPTION value=414>河池</OPTION><OPTION 
          value=452>梧州</OPTION><OPTION 
        value=450206>来宾区</OPTION></OPTGROUP><OPTGROUP label=河北><OPTION 
          value=683>石家庄</OPTION><OPTION value=627>廊坊</OPTION><OPTION 
          value=618>唐山</OPTION><OPTION value=616>秦皇岛</OPTION><OPTION 
          value=596>承德</OPTION><OPTION value=730>邯郸</OPTION><OPTION 
          value=696>衡水</OPTION><OPTION value=661>定州</OPTION><OPTION 
          value=649>保定</OPTION><OPTION value=628>涿州</OPTION><OPTION 
          value=617>三河</OPTION><OPTION value=613>迁安</OPTION><OPTION 
          value=611>遵化</OPTION><OPTION value=668>沧州</OPTION><OPTION 
          value=717>邢台</OPTION><OPTION value=720>武安</OPTION><OPTION 
          value=677>鹿泉</OPTION><OPTION value=687>辛集</OPTION><OPTION 
          value=673>藁城</OPTION><OPTION value=667>新乐</OPTION><OPTION 
          value=685>晋州</OPTION><OPTION value=708>南宫</OPTION><OPTION 
          value=719>沙河</OPTION><OPTION value=700>冀州</OPTION><OPTION 
          value=681>深州</OPTION><OPTION value=650>任丘</OPTION><OPTION 
          value=660>河间</OPTION><OPTION value=598>张家口</OPTION></OPTGROUP><OPTGROUP 
        label=海南><OPTION value=562>海口</OPTION><OPTION 
          value=578>三亚</OPTION><OPTION value=573>万宁</OPTION><OPTION 
          value=576>保亭</OPTION><OPTION value=574>五指山</OPTION></OPTGROUP><OPTGROUP 
        label=湖南><OPTION value=2351>长沙</OPTION><OPTION 
          value=2361>株洲</OPTION><OPTION value=2332>常德</OPTION><OPTION 
          value=2325>岳阳</OPTION><OPTION value=2408>郴州</OPTION><OPTION 
          value=2387>衡阳</OPTION><OPTION value=2367>怀化</OPTION><OPTION 
          value=2362>湘潭</OPTION><OPTION value=2360>韶山</OPTION><OPTION 
          value=2346>浏阳</OPTION><OPTION value=2340>益阳</OPTION><OPTION 
          value=2329>张家界</OPTION><OPTION value=2397>耒阳</OPTION><OPTION 
          value=2366>冷水江</OPTION><OPTION value=2357>湘乡</OPTION><OPTION 
          value=2343>长沙县</OPTION><OPTION value=2364>醴陵</OPTION><OPTION 
          value=2381>邵阳</OPTION></OPTGROUP><OPTGROUP label=湖北><OPTION 
          value=975>武汉</OPTION><OPTION value=970>宜昌</OPTION><OPTION 
          value=954>襄阳</OPTION><OPTION value=1006>黄石</OPTION><OPTION 
          value=996>鄂州</OPTION><OPTION value=992>荆州</OPTION><OPTION 
          value=969>荆门</OPTION><OPTION value=949>十堰</OPTION><OPTION 
          value=994>潜江</OPTION><OPTION value=984>天门</OPTION><OPTION 
          value=995>黄冈</OPTION><OPTION value=980>孝感</OPTION><OPTION 
          value=1014>咸宁</OPTION><OPTION value=990>恩施</OPTION><OPTION 
          value=955>随州</OPTION><OPTION value=998>仙桃</OPTION></OPTGROUP><OPTGROUP 
        label=黑龙江><OPTION value=795>哈尔滨</OPTION><OPTION 
          value=782>大庆</OPTION><OPTION value=762>齐齐哈尔</OPTION><OPTION 
          value=815>绥芬河</OPTION><OPTION value=813>牡丹江</OPTION><OPTION 
          value=797>七台河</OPTION><OPTION value=781>佳木斯</OPTION><OPTION 
          value=748>伊春</OPTION><OPTION value=743>黑河</OPTION><OPTION 
          value=810>鸡西</OPTION><OPTION value=755>鹤岗</OPTION><OPTION 
          value=775>绥化</OPTION><OPTION value=786>双鸭山</OPTION><OPTION 
          value=232700>大兴安岭</OPTION></OPTGROUP><OPTGROUP label=河南><OPTION 
          value=852>郑州</OPTION><OPTION value=865>洛阳</OPTION><OPTION 
          value=857>开封</OPTION><OPTION value=836>新乡</OPTION><OPTION 
          value=942>荥阳</OPTION><OPTION value=884>汝州</OPTION><OPTION 
          value=875>登封</OPTION><OPTION value=870>商丘</OPTION><OPTION 
          value=869>新郑</OPTION><OPTION value=840>焦作</OPTION><OPTION 
          value=829>濮阳</OPTION><OPTION value=820>安阳</OPTION><OPTION 
          value=935>信阳</OPTION><OPTION value=901>平顶山</OPTION><OPTION 
          value=824>鹤壁</OPTION><OPTION value=944>许昌</OPTION><OPTION 
          value=905>漯河</OPTION><OPTION value=861>三门峡</OPTION><OPTION 
          value=920>南阳</OPTION><OPTION value=908>周口</OPTION><OPTION 
          value=925>驻马店</OPTION><OPTION value=843>济源</OPTION><OPTION 
          value=842>沁阳</OPTION><OPTION value=858>巩义</OPTION><OPTION 
          value=850>孟州</OPTION><OPTION value=880>禹州</OPTION><OPTION 
          value=863>义马</OPTION><OPTION value=866>灵宝</OPTION><OPTION 
          value=926>邓州</OPTION><OPTION value=887>永城</OPTION><OPTION 
          value=868>新密</OPTION><OPTION value=900>石龙</OPTION></OPTGROUP><OPTGROUP 
        label=江苏><OPTION value=1059>南京</OPTION><OPTION 
          value=1082>苏州</OPTION><OPTION value=1079>无锡</OPTION><OPTION 
          value=1085>徐州</OPTION><OPTION value=1065>镇江</OPTION><OPTION 
          value=1071>南通</OPTION><OPTION value=1061>泰州</OPTION><OPTION 
          value=1057>扬州</OPTION><OPTION value=1037>宿迁</OPTION><OPTION 
          value=1046>盐城</OPTION><OPTION value=1042>淮安</OPTION><OPTION 
          value=1026>连云港</OPTION><OPTION value=1073>常州</OPTION><OPTION 
          value=1083>昆山</OPTION><OPTION value=1081>宜兴</OPTION><OPTION 
          value=1077>常熟</OPTION><OPTION value=1074>张家港</OPTION><OPTION 
          value=1072>丹阳</OPTION><OPTION value=1075>江阴</OPTION><OPTION 
          value=1070>靖江</OPTION><OPTION value=320115>江宁区</OPTION><OPTION 
          value=1084>吴江</OPTION><OPTION value=1078>太仓</OPTION><OPTION 
          value=1068>海门</OPTION><OPTION value=1054>江都</OPTION><OPTION 
          value=1069>启东</OPTION><OPTION value=1080>溧阳</OPTION><OPTION 
          value=1063>泰兴</OPTION><OPTION value=1076>金坛</OPTION><OPTION 
          value=1062>如皋</OPTION><OPTION value=1053>东台</OPTION><OPTION 
          value=1050>兴化</OPTION><OPTION value=1056>海安县</OPTION><OPTION 
          value=1086>铜山县</OPTION><OPTION value=1055>姜堰</OPTION><OPTION 
          value=1028>邳州</OPTION><OPTION value=1024>沛县</OPTION><OPTION 
          value=1045>大丰</OPTION><OPTION value=1060>仪征</OPTION><OPTION 
          value=1067>句容</OPTION><OPTION value=1052>高邮</OPTION><OPTION 
          value=1035>沭阳县</OPTION><OPTION value=1038>射阳县</OPTION><OPTION 
          value=1064>扬中</OPTION><OPTION value=1066>通州</OPTION><OPTION 
          value=1044>建湖县</OPTION><OPTION value=320125>高淳县</OPTION><OPTION 
          value=1047>宝应县</OPTION><OPTION 
        value=320124>溧水县</OPTION></OPTGROUP><OPTGROUP label=吉林><OPTION 
          value=1202>长春</OPTION><OPTION value=1200>吉林</OPTION><OPTION 
          value=1230>辽源</OPTION><OPTION value=1228>集安</OPTION><OPTION 
          value=1226>通化</OPTION><OPTION value=1224>临江</OPTION><OPTION 
          value=1223>白山</OPTION><OPTION value=1215>梅河口</OPTION><OPTION 
          value=1211>延吉</OPTION><OPTION value=1198>蛟河</OPTION><OPTION 
          value=1195>敦化</OPTION><OPTION value=1191>德惠</OPTION><OPTION 
          value=1182>白城</OPTION><OPTION value=1212>四平</OPTION><OPTION 
          value=1194>九台</OPTION><OPTION value=1189>榆树</OPTION><OPTION 
          value=1207>桦甸</OPTION><OPTION value=1193>舒兰</OPTION><OPTION 
          value=1208>磐石</OPTION><OPTION value=1197>公主岭</OPTION><OPTION 
          value=1201>双辽</OPTION><OPTION value=1181>洮南</OPTION><OPTION 
          value=1183>大安</OPTION><OPTION value=1214>图们</OPTION><OPTION 
          value=1195>敦化</OPTION><OPTION value=1206>珲春</OPTION><OPTION 
          value=1209>龙井</OPTION><OPTION value=1216>和龙</OPTION><OPTION 
          value=1184>松原</OPTION></OPTGROUP><OPTGROUP label=江西><OPTION 
          value=1111>南昌</OPTION><OPTION value=1170>赣州</OPTION><OPTION 
          value=1155>吉安</OPTION><OPTION value=1122>上饶</OPTION><OPTION 
          value=1102>景德镇</OPTION><OPTION value=1093>九江</OPTION><OPTION 
          value=1146>萍乡</OPTION><OPTION value=1132>抚州</OPTION><OPTION 
          value=1137>宜春</OPTION><OPTION value=1131>鹰潭</OPTION><OPTION 
          value=1136>新余</OPTION><OPTION value=1094>鄱阳</OPTION><OPTION 
          value=1104>乐平</OPTION><OPTION value=1168>南康</OPTION><OPTION 
          value=1175>信丰</OPTION><OPTION value=1166>瑞金</OPTION><OPTION 
          value=1160>井冈山</OPTION><OPTION value=1121>高安</OPTION><OPTION 
          value=1133>樟树</OPTION><OPTION value=1129>丰城</OPTION><OPTION 
          value=1096>婺源</OPTION></OPTGROUP><OPTGROUP label=辽宁><OPTION 
          value=1242>沈阳</OPTION><OPTION value=1288>大连</OPTION><OPTION 
          value=1269>鞍山</OPTION><OPTION value=1268>葫芦岛</OPTION><OPTION 
          value=1267>锦州</OPTION><OPTION value=1266>盘锦</OPTION><OPTION 
          value=1291>铁岭</OPTION><OPTION value=1282>丹东</OPTION><OPTION 
          value=1278>营口</OPTION><OPTION value=1270>海城</OPTION><OPTION 
          value=1263>辽阳</OPTION><OPTION value=1258>本溪</OPTION><OPTION 
          value=1245>抚顺</OPTION><OPTION value=1240>新民</OPTION><OPTION 
          value=1290>阜新</OPTION><OPTION value=1251>朝阳</OPTION><OPTION 
          value=1274>凤城</OPTION><OPTION value=1283>东港</OPTION><OPTION 
          value=1275>大石桥</OPTION><OPTION value=1280>盖州</OPTION><OPTION 
          value=1253>灯塔</OPTION><OPTION value=1276>兴城</OPTION><OPTION 
          value=1284>庄河</OPTION><OPTION value=1286>普兰店</OPTION><OPTION 
          value=1285>瓦房店</OPTION></OPTGROUP><OPTGROUP label=宁夏><OPTION 
          value=1388>银川</OPTION><OPTION value=1393>吴忠</OPTION><OPTION 
          value=1395>中卫</OPTION><OPTION value=1398>固原</OPTION><OPTION 
          value=1391>青铜峡</OPTION><OPTION 
        value=1385>石嘴山</OPTION></OPTGROUP><OPTGROUP label=内蒙古><OPTION 
          value=1365>呼和浩特</OPTION><OPTION value=1380>鄂尔多斯</OPTION><OPTION 
          value=1372>包头</OPTION><OPTION value=1341>赤峰</OPTION><OPTION 
          value=1327>通辽市</OPTION><OPTION value=1320>锡林浩特</OPTION><OPTION 
          value=150702>海拉尔</OPTION><OPTION value=1328>二连浩特</OPTION><OPTION 
          value=1311>乌兰浩特</OPTION><OPTION 
        value=1381>乌海</OPTION></OPTGROUP><OPTGROUP label=青海><OPTION 
          value=1420>西宁</OPTION></OPTGROUP><OPTGROUP label=山西><OPTION 
          value=1709>太原</OPTION><OPTION value=1749>临汾</OPTION><OPTION 
          value=1673>大同</OPTION><OPTION value=1777>晋城</OPTION><OPTION 
          value=1770>运城</OPTION><OPTION value=1747>长治</OPTION><OPTION 
          value=1713>吕梁</OPTION><OPTION value=1711>晋中</OPTION><OPTION 
          value=1677>朔州</OPTION><OPTION value=1696>忻州</OPTION><OPTION 
          value=1708>阳泉</OPTION></OPTGROUP><OPTGROUP label=山东><OPTION 
          value=1591>济南</OPTION><OPTION value=1605>青岛</OPTION><OPTION 
          value=1637>临沂</OPTION><OPTION value=1630>济宁</OPTION><OPTION 
          value=1603>泰安</OPTION><OPTION value=1600>莱芜</OPTION><OPTION 
          value=1588>淄博</OPTION><OPTION value=1629>日照</OPTION><OPTION 
          value=1574>潍坊</OPTION><OPTION value=1562>东营</OPTION><OPTION 
          value=1555>威海</OPTION><OPTION value=1559>德州</OPTION><OPTION 
          value=1553>烟台</OPTION><OPTION value=1640>滕州</OPTION><OPTION 
          value=1639>枣庄</OPTION><OPTION value=1626>兖州</OPTION><OPTION 
          value=1622>曲阜</OPTION><OPTION value=1571>寿光</OPTION><OPTION 
          value=1567>文登</OPTION><OPTION value=1548>乐陵</OPTION><OPTION 
          value=1594>聊城</OPTION><OPTION value=1634>菏泽</OPTION><OPTION 
          value=1613>胶南</OPTION><OPTION value=1585>平度</OPTION><OPTION 
          value=1598>即墨</OPTION><OPTION value=1551>龙口</OPTION><OPTION 
          value=1578>莱阳</OPTION><OPTION value=1547>蓬莱</OPTION><OPTION 
          value=1589>青州</OPTION><OPTION value=1608>诸城</OPTION><OPTION 
          value=1614>新泰</OPTION><OPTION value=1565>荣成</OPTION><OPTION 
          value=1556>滨州</OPTION><OPTION value=1584>章丘</OPTION></OPTGROUP><OPTGROUP 
        label=上海><OPTION value=2421>上海</OPTION></OPTGROUP><OPTGROUP 
          label=四川><OPTION value=1840>成都</OPTION><OPTION 
          value=1934>攀枝花</OPTION><OPTION value=1907>宜宾</OPTION><OPTION 
          value=1904>泸州</OPTION><OPTION value=1884>峨眉山</OPTION><OPTION 
          value=1883>乐山</OPTION><OPTION value=1838>南充</OPTION><OPTION 
          value=1811>绵阳</OPTION><OPTION value=1829>德阳</OPTION><OPTION 
          value=1892>自贡</OPTION><OPTION value=1872>雅安</OPTION><OPTION 
          value=1870>眉山</OPTION><OPTION value=1854>遂宁</OPTION><OPTION 
          value=1828>都江堰</OPTION><OPTION value=1881>内江</OPTION><OPTION 
          value=1802>巴中</OPTION><OPTION value=1924>西昌</OPTION><OPTION 
          value=1830>达州</OPTION></OPTGROUP><OPTGROUP label=陕西><OPTION 
          value=1494>西安</OPTION><OPTION value=1527>汉中</OPTION><OPTION 
          value=1503>咸阳</OPTION><OPTION value=1492>宝鸡</OPTION><OPTION 
          value=1490>渭南</OPTION><OPTION value=1463>延安</OPTION><OPTION 
          value=1448>榆林</OPTION><OPTION value=1477>铜川</OPTION><OPTION 
          value=1513>商洛</OPTION><OPTION value=1496>华阴</OPTION><OPTION 
          value=1504>兴平</OPTION><OPTION value=1470>韩城</OPTION><OPTION 
          value=1529>安康</OPTION></OPTGROUP><OPTGROUP label=天津><OPTION 
          value=2420>天津</OPTION></OPTGROUP><OPTGROUP label=""><OPTION 
          value=2423></OPTION><OPTION value=4000></OPTION><OPTION 
          value=4001></OPTION></OPTGROUP><OPTGROUP label=""><OPTION 
          value=2425></OPTION></OPTGROUP><OPTGROUP label=西藏><OPTION 
          value=2093>拉萨</OPTION></OPTGROUP><OPTGROUP label=新疆><OPTION 
          value=1990>乌鲁木齐</OPTION><OPTION value=1965>克拉玛依</OPTION><OPTION 
          value=2047>和田</OPTION><OPTION value=2031>喀什</OPTION><OPTION 
          value=1995>吐鲁番</OPTION><OPTION value=1994>哈密</OPTION><OPTION 
          value=1971>昌吉</OPTION><OPTION value=2009>库尔勒</OPTION><OPTION 
          value=1983>石河子</OPTION><OPTION value=1981>奎屯</OPTION><OPTION 
          value=2023>阿克苏</OPTION></OPTGROUP><OPTGROUP label=云南><OPTION 
          value=2179>昆明</OPTION><OPTION value=2228>普洱</OPTION><OPTION 
          value=2215>瑞丽</OPTION><OPTION value=2203>玉溪</OPTION><OPTION 
          value=2170>曲靖</OPTION><OPTION value=2160>大理</OPTION><OPTION 
          value=2139>丽江</OPTION><OPTION value=2135>昭通</OPTION><OPTION 
          value=2211>临沧</OPTION><OPTION value=2243>景洪</OPTION><OPTION 
          value=2122>香格里拉</OPTION><OPTION value=2225>文山</OPTION><OPTION 
          value=2178>楚雄</OPTION><OPTION value=2227>个旧</OPTION><OPTION 
          value=2229>蒙自</OPTION><OPTION value=2167>保山</OPTION></OPTGROUP><OPTGROUP 
        label=浙江><OPTION value=2259>杭州</OPTION><OPTION 
          value=2308>温州</OPTION><OPTION value=2297>台州</OPTION><OPTION 
          value=2286>金华</OPTION><OPTION value=2268>宁波</OPTION><OPTION 
          value=2267>绍兴</OPTION><OPTION value=2265>舟山</OPTION><OPTION 
          value=2249>嘉兴</OPTION><OPTION value=2250>湖州</OPTION><OPTION 
          value=2284>衢州</OPTION><OPTION value=2281>东阳</OPTION><OPTION 
          value=2278>义乌</OPTION><OPTION value=2274>建德</OPTION><OPTION 
          value=2266>富阳</OPTION><OPTION value=2258>海宁</OPTION><OPTION 
          value=2254>桐乡</OPTION><OPTION value=330109>萧山</OPTION><OPTION 
          value=330110>余杭</OPTION><OPTION value=2269>桐庐</OPTION><OPTION 
          value=2270>淳安</OPTION><OPTION value=2261>临安</OPTION><OPTION 
          value=2262>余姚</OPTION><OPTION value=2264>上虞</OPTION><OPTION 
          value=2260>慈溪</OPTION><OPTION value=2273>奉化</OPTION><OPTION 
          value=2295>江山</OPTION><OPTION value=2298>丽水</OPTION><OPTION 
          value=2290>永康</OPTION><OPTION value=2291>临海</OPTION><OPTION 
          value=2302>温岭</OPTION><OPTION value=2301>乐清</OPTION><OPTION 
          value=2300>瑞安</OPTION><OPTION value=2282>兰溪</OPTION><OPTION 
          value=2271>诸暨</OPTION><OPTION value=2304>龙泉</OPTION><OPTION 
          value=2272>嵊州</OPTION><OPTION value=2258>海宁</OPTION></OPTGROUP><OPTION 
        value=0>其他</OPTION></SELECT> </TD></TR>
  <!-- <TR>
    <TD style="FONT-SIZE: 14px" height=40 align=right>验证码：</TD>
    <TD><INPUT style="WIDTH: 60px" class=kuangaa_login maxLength=4 size=4 name=validateNum>
      <IMG style="VERTICAL-ALIGN: middle" id=chkimg name=chkimg align=absMiddle src="validateImage.jsp" width=65 height=20> 
      <SPAN style="CURSOR: pointer" onclick=cimg()>
      <SPAN style="COLOR: #666">看不清，</SPAN>
      <SPAN style="COLOR: #3366cc">换一张?</SPAN></SPAN>
      <SCRIPT>
						function cimg(){
							var changetime =new Date().getTime();
							document.getElementById('chkimg').src="validateImage.jsp?r=" + Math.random();
						}
					  </SCRIPT>
       </TD></TR> -->
  <TR>
    <TD style="FONT-SIZE: 14px" height=45 align=right></TD>
    <TD><INPUT class="gdbtn_bef agree_btn" value=确定修改 type=submit name=submited> 
    </TD></TR></TBODY></TABLE></FORM>
</DIV></DIV>
<DIV class="c_cion detail-bg-b"></DIV></DIV></DIV><!--content main-r-->
<DIV class="main-r r"><!--登录1-->
<DIV class=ycsamebox>
<DIV class="c_cion help-side-t"></DIV>
<DIV class=login-side-mid>
<DL class=login-side-reg>
  <DT>已有账户？ 
  <DD>请直接 <A class=reg_login href="login.jsp">登 录</A> 
</DD></DL></DIV>
<DIV class="c_cion help-side-b"></DIV></DIV></DIV>
<DIV class=c></DIV></DIV><!--content end-->
</BODY></HTML>
