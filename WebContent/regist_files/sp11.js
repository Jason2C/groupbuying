function edit_password(){
	var pwd = $("#newpassword").val();
	var lel=checkStrong(pwd); 
	
	if(lel < 3){
		alert('密码强度不够');
		return false;
	}
}


jQuery.MsgBox = function(settings){
    settings = jQuery.extend({
        img_url_prefix:'',   //图片的绝对路径
        overlayBgColor:'black',
        overlayOpacity: 0.2,
        title:'提示',
        boxwidth:"400px",
        html: '',
		mid:0,
        hidden:false,
        callback:''
     },settings);
    function _initialize() {
        _start();
        return false;
    };
    function _start(){
        $('embed, object,select').css({ 'visibility' : 'hidden' });
        _set_interface();
    };
    function _set_interface(){
        $('body').append('<div id="floatbox-overlay"></div><div id="floatbox" style="display:none;'+settings.boxwidth+'"><div class="topCon"><div style="float:left;width:340px"><strong>'+settings.title+'</strong></div><a class="close_float" href="javascript:void(0)" onclick="close_msg_box2('+settings.mid+');">关闭</a></div>'+settings.html+'</div>');

        var arrPageSizes = ___getPageSize();

        $('#floatbox-overlay').css({
            backgroundColor:	settings.overlayBgColor,
            opacity:			settings.overlayOpacity,
            width:				arrPageSizes[0],
            height:				arrPageSizes[1]
        }).fadeIn();

        var arrPageScroll = ___getPageScroll();
        $('#floatbox').css({
            top:	parseInt(arrPageScroll[1] + (arrPageSizes[3] / 10)+100),
            left:	parseInt((arrPageSizes[0] - $('#floatbox').width())/2)
        }).show();

        $(window).resize(function() {
            var arrPageSizes = ___getPageSize();
            $('#floatbox-overlay').css({width:arrPageSizes[0],height:arrPageSizes[1]});
        });
		/*
        $('.topCon')[0].onmousedown = function(event) {try{menudrag($('#floatbox')[0], event, 1);}catch(e){}};
		document.body.onmousemove = function(event) {try{menudrag($('#floatbox')[0], event, 2);}catch(e){}};
		$('.topCon')[0].onmouseup = function(event) {try{menudrag($('#floatbox')[0], event, 3);}catch(e){}};
		*/
        if(typeof (settings.callback) == 'function'){
             //alert(settings.callback)
            settings.callback.apply($('#floatbox')[0],[1,2,3,4,5]);
        }
    };
    function ___getPageSize() {
        var xScroll, yScroll;
        if (window.innerHeight && window.scrollMaxY) {
            xScroll = window.innerWidth + window.scrollMaxX;
            yScroll = window.innerHeight + window.scrollMaxY;
        } else if (document.body.scrollHeight > document.body.offsetHeight){ // all but Explorer Mac
            xScroll = document.body.scrollWidth;
            yScroll = document.body.scrollHeight;
        } else { // Explorer Mac...would also work in Explorer 6 Strict, Mozilla and Safari
            xScroll = document.body.offsetWidth;
            yScroll = document.body.offsetHeight;
        }
        var windowWidth, windowHeight;
        if (self.innerHeight) {	// all except Explorer
            if(document.documentElement.clientWidth){
                windowWidth = document.documentElement.clientWidth;
            } else {
                windowWidth = self.innerWidth;
            }
            windowHeight = self.innerHeight;
        } else if (document.documentElement && document.documentElement.clientHeight) { // Explorer 6 Strict Mode
            windowWidth = document.documentElement.clientWidth;
            windowHeight = document.documentElement.clientHeight;
        } else if (document.body) { // other Explorers
            windowWidth = document.body.clientWidth;
            windowHeight = document.body.clientHeight;
        }
        // for small pages with total height less then height of the viewport
        if(yScroll < windowHeight){
            pageHeight = windowHeight;
        } else {
            pageHeight = yScroll;
        }
        // for small pages with total width less then width of the viewport
        if(xScroll < windowWidth){
            pageWidth = xScroll;
        } else {
            pageWidth = windowWidth;
        }
        arrayPageSize = new Array(pageWidth,pageHeight,windowWidth,windowHeight);
        return arrayPageSize;
    }
    /**
     / THIRD FUNCTION
     * getPageScroll() by quirksmode.com
     *
     * @return Array Return an array with x,y page scroll values.
     */
    function ___getPageScroll() {
        var xScroll, yScroll;
        if (self.pageYOffset) {
            yScroll = self.pageYOffset;
            xScroll = self.pageXOffset;
        } else if (document.documentElement && document.documentElement.scrollTop) {	 // Explorer 6 Strict
            yScroll = document.documentElement.scrollTop;
            xScroll = document.documentElement.scrollLeft;
        } else if (document.body) {// all other Explorers
            yScroll = document.body.scrollTop;
            xScroll = document.body.scrollLeft;
        }
        arrayPageScroll = new Array(xScroll,yScroll);
        return arrayPageScroll;
    };
    //移动
    var menudragstart = [];
    function menudrag(menuobj, e, op){
        if(op == 1) {
            if(['TEXTAREA', 'INPUT', 'BUTTON', 'SELECT','A'].inArray($.browser.msie ? event.srcElement.tagName : e.target.tagName)){
                return;
            }
            menudragstart = $.browser.msie ? [event.clientX, event.clientY] : [e.clientX, e.clientY];
            menudragstart[2] = parseInt(menuobj.style.left);
            menudragstart[3] = parseInt(menuobj.style.top);
            doane(e);
        } else if(op == 2 && menudragstart[0]) {
            var menudragnow = $.browser.msie ? [event.clientX, event.clientY] : [e.clientX, e.clientY];
            menuobj.style.left = (menudragstart[2] + menudragnow[0] - menudragstart[0]) + 'px';
            menuobj.style.top = (menudragstart[3] + menudragnow[1] - menudragstart[1]) + 'px';
            doane(e);
        } else if(op == 3) {
            menudragstart = [];
            doane(e);
        }
    }
    function doane(event) {
        e = event ? event : window.event;
        if($.browser.msie) {
            e.returnValue = false;
            e.cancelBubble = true;
        } else if(e) {
            e.stopPropagation();
            e.preventDefault();
        }
    }
    function _finish() {
        //$('#floatbox').slideUp('fast',function(){ $('#floatbox').remove(); });
        $('#floatbox').remove();
        $('#floatbox-overlay').remove();
        $('embed, object, select').css({ 'visibility' : 'visible' });
    }
    if(settings.hidden){
        setTimeout(function(){_finish();},1000);
    }
	return _initialize();
 }

//外部调用的close box
function close_msg_box(mid){
    try{
        $('#floatbox').remove();
        $('#floatbox-overlay').remove();
        // Show some elements to avoid conflict with overlay in IE. These elements appear above the overlay.
        $('embed, object, select').css({ 'visibility' : 'visible' });
		if(mid>0){
			$.get('/sp/ajax/aj_sp_message.php?mid='+mid,'',function(){});
		}
    }catch(e){}
}

function check_mima(goods_id){
	var a=[];
	a.push('<table cellspacing="0" cellpadding="0" style="width:100%">');
	a.push('<tr><td style="text-align:center;padding:10px">密码：<input type="text" id="mima" size="30" style="padding:2px;height:20px;"/></td></tr>');
	a.push('<tr><td style="text-align:center;padding:10px"><input type="button" onclick="jiesuan('+goods_id+')" value="确认" ></td></tr>');
	a.push('<tr><td style="text-align:center;height:40px;" ><td></tr>');
	a.push("</table>");	
	b='查询密码';
	$.MsgBox({title:b,html:a.join("\n"),hidden:false});

}

function jiesuan(goods_id){

	var bol = true;
	var mima = $("#mima").val();
	
	$.ajax({
		type:'POST',
		dataType:"json",
		data:'mima='+mima,
		url:'ajax/mima.php',
		success:function(data){
			if(data == 1){
				bol = true;
			}else{
				bol = false;
			}
		},
		async:false
	});
		
	if(bol){
		close_msg_box2()
		window.open('jiesuan.php?goods_id='+goods_id);

	}else{
		alert('密码错误,如果有问题，请联系销售人员。');
		return;
	}
}
	
//不再提示发货信息
function no_appear(){
	$.post('./ajax/fahuo.php','',function(data){
		close_msg_box2();
	},'json');	
}

//CharMode函数       
//测试某个字符是属于哪一类.       
function CharMode(iN)      
{       
	if (iN>=48 && iN <=57) //数字       
	return 1;       
	if (iN>=65 && iN <=90) //大写字母       
	return 2;       
	if (iN>=97 && iN <=122) //小写       
	return 4;       
	else       
	return 8; //特殊字符       
}       
          
//bitTotal函数       
//计算出当前密码当中一共有多少种模式       
function bitTotal(num)      
{       
	modes=0;       
	for (i=0;i<4;i++)      
	{       
		if (num & 1) modes++;       
		num>>=1;       
	}       
	return modes;       
}       
          
//checkStrong函数       
//返回密码的强度级别       
	  
function checkStrong(sPW)      
{       
	if (sPW.length<=4)       
	return 0; //密码太短       
	Modes=0;       
	for (i=0;i<sPW.length;i++)      
	{       
		//测试每一个字符的类别并统计一共有多少种模式.       
		Modes|=CharMode(sPW.charCodeAt(i));       
	}     
 
	return bitTotal(Modes);       
}       
	  
//pwStrength函数       
//当用户放开键盘或密码输入框失去焦点时,根据不同的级别显示不同的颜色       
	  
function pwStrength(pwd)      
{       
      
		S_level=checkStrong(pwd); 
		
        O_color="0px";       
        L_color="64px";       
        M_color="127px";       
        H_color="190px";       
        if (pwd==null||pwd=="")      
        {       
            Lcolor=O_color;
			Lcolor_H="";
        }       
        else     
        {       
            S_level=checkStrong(pwd);       
            switch(S_level)      
            {       
                case 0:       
                Lcolor=O_color;
				Lcolor_H="";
                case 1:       
                Lcolor=L_color;
				Lcolor_H="低";
                break;       
                case 2:       
                Lcolor=M_color; 
				Lcolor_H="中";
                break;       
                default:       
                Lcolor=H_color;
				Lcolor_H="高";
            }       
        }       
        document.getElementById("strength_L1").style.width=Lcolor;
		document.getElementById("strength_H1").innerHTML=Lcolor_H;
}   
function pwStrengthtwo(pwd)      
{       
      
		S_level=checkStrong(pwd); 
		
        O_color="0px";       
        L_color="64px";       
        M_color="127px";       
        H_color="190px";       
        if (pwd==null||pwd=="")      
        {       
            Lcolor=O_color;
			Lcolor_H="";
        }       
        else     
        {       
            S_level=checkStrong(pwd);       
            switch(S_level)      
            {       
                case 0:       
                Lcolor=O_color;
				Lcolor_H="";
                case 1:       
                Lcolor=L_color;
				Lcolor_H="低";
                break;       
                case 2:       
                Lcolor=M_color; 
				Lcolor_H="中";
                break;       
                default:       
                Lcolor=H_color;
				Lcolor_H="高";
            }       
        }
		//document.getElementById("strength_L2").style.width=Lcolor;
		//document.getElementById("strength_H2").innerHTML=Lcolor_H; 
	      	       
  
}  
// start 以下方法用在 refund.php  页面 
function refund(trade_no,obj){
	$.ajax({
		url:"ajax/refund.php",
		type:"POST",
		dataType:"json",
		data:'act=yes&trade_no='+trade_no,
		success:function(data){
			if(data == 1){
				$(obj).parent().html('退款中');
			}else{
				alert(data);
			}
		},
		async:false
		
	});
}
function v_code(code){
	var a=[];
	a.push('<table cellspacing="0" cellpadding="0" style="width:100%">');
	a.push('<tr><td style="text-align:center;padding:10px">请输入此拉手券的密码：<input type="type" id="pwd"></td></tr>');
	a.push('<tr><td style="text-align:center;padding:10px"><input type="button" onclick="comfirm_code('+code+')"  value="确认验证" ></td></tr>');
	a.push('<tr><td style="text-align:center;height:40px;" ><td></tr>');
	a.push("</table>");	
	b="拉手券"+code+":";
	$.MsgBox({title:b,html:a.join("\n"),hidden:false});
}

function comfirm_code(code){

	var password = $("#pwd").val();
	$.ajax({
		url:"ajax/refund.php",
		type:"POST",
		dataType:"json",
		data:'act=no&code='+code+'&password='+password,
		success:function(data){
			if(data == 1){
				close_msg_box2();
				alert('已经补验');
				location.reload(); 
			}else{
				alert(data);
			}
		},
		async:false
		
	});
}

$(document).ready(function(){
	document.getElementById("strength_L1").style.width="0px";
	document.getElementById("strength_H1").innerHTML=""; 
	//document.getElementById("strength_L2").style.width="0px";
	//document.getElementById("strength_H2").innerHTML="";
	$(".c_span").mouseover( function() { $(this).addClass('orange') } ); 
	$(".c_span").mouseout( function() { $(this).removeClass('orange') } ); 
});


//end --------------------