var CODE = {
	sign:0,
	init:function(){
		$.getJSON('/ajax/outcode.php?act=auth',function(data){
			CODE.sign = data.status;
		});
	},
	pwdauth:function(name,code){
		close_msg_box();
		if(CODE.sign == 0){
			$.getJSON('/ajax/outcode.php?act=auth',function(data){
				CODE.sign = data.status;
				if(CODE.sign == 0){
					password_dialog(name,code);
				}
			});
		}
		return CODE.sign;
	},
	pwdprint:function(code){
		if(CODE.pwdauth('print',code) == 1){
			$('#code_action_form_'+code).attr('action','print_new.php?code='+code);
			setTimeout(function(){$('#code_action_form_'+code).submit()},0);
		}
	},
	pwddownload:function(code){
		if(CODE.pwdauth('download',code) == 1){
			$('#code_action_form_'+code).attr('action','newcode.php?code='+code);
			setTimeout(function(){$('#code_action_form_'+code).submit()},0);
		}
	},
	auth:function(name,code){
		close_msg_box();
		if(CODE.sign == 0){
			$.getJSON('/ajax/outcode.php?act=auth',function(data){
				CODE.sign = data.status;
				if(CODE.sign == 0){
					auth_dialog(name,code);
				}
			});
		}
		return CODE.sign;
	},
	print:function(code){
		if(CODE.auth('print',code) == 1){
			$('#code_action_form_'+code).attr('action','print_new.php?code='+code);
			setTimeout(function(){$('#code_action_form_'+code).submit()},0);
		}
	},
	download:function(code){
		if(CODE.auth('download',code) == 1){
			$('#code_action_form_'+code).attr('action','newcode.php?code='+code);
			setTimeout(function(){$('#code_action_form_'+code).submit()},0);
		}
	},
	send:function(code,mobile,title){
		if(mobile == ''){
			alert("为了你的账户安全，请到账户设置中绑定手机号！\n券号密码将发送到你的绑定手机号中。");
			return;
		}
		var a=[];
		a.push('<table cellspacing="0" cellpadding="0" style="width:100%">');
		a.push('<tr><td style="text-align:center;padding:10px">接收号码：<input type="text" name="phone_1" id="phone_1" value="'+mobile+'" size="20" style="padding:2px" readonly/></td></tr>');
		a.push('<tr><td style="text-align:center;padding:10px"><input type="button" name="" value="发送" onclick="CODE.send_ok('+code+')" style="padding:2px 8px;overflow: visible;"/></td></tr>');
		a.push('<tr><td style="text-align:center;height:50px;" id="send_msg"><td></tr>');
		a.push("</table>");
		b=title?title:'发送拉手券号密码';
		$.MsgBox({title:b,html:a.join("\n"),hidden:false})
	},
	clearCon:function(){
		$("#phone_2").attr("value",'');
	},
	clearSp:function(obj){
		$(obj).attr("value",'');
	},
	shenzhenact:function(trade_no){
		$.post('/ajax/shenzhenact.php',{'trade_no':trade_no},function(data){
			CODE.ticket = data;
		});
		var a=[];
		a.push('<table cellspacing="0" cellpadding="0" style="width:100%">');
		a.push('<tr><td style="padding:0px 10px">&nbsp;</td></tr>');
		a.push('<tr><td style="padding:0px 10px">抽奖号:'+CODE.ticket+'</td></tr>');
		a.push('<tr><td style="padding:0px 10px">&nbsp;</td></tr>');
		a.push("</table>");
		b='抽奖号';
		$.MsgBox({title:b,html:a.join("\n"),hidden:false})
	},
	sendMMS:function(code,mobile,title){
		if(mobile == ''){
			alert("为了你的账户安全，请到账户设置中绑定手机号！\n券号密码将发送到你的绑定手机号中。");
			return;
		}
		var a=[];
		a.push('<table cellspacing="0" cellpadding="0" style="width:100%">');
		a.push('<tr><td style="text-align:center;padding:10px">手机号：<input type="text" name="phone_1" id="phone_1" value="'+mobile+'" size="20" style="padding:2px" readonly/></td></tr>');
		a.push('<tr><td style="text-align:center;padding:10px"><input type="hidden" name="send_type" id="send_type" value="MMS"/><input type="button" name="" value="发送" onclick="CODE.send_ok('+code+')"/></td></tr>');
		a.push('<tr><td style="text-align:center;height:50px;" id="send_msg"><td></tr>');
		a.push("</table>");
		b=title?title:'发送拉手券号密码';
		$.MsgBox({title:b,html:a.join("\n"),hidden:false})
	},
	send_ok:function(code){
		var phone_1=$('#phone_1').val();
		if(!phone_1){
			alert('请到账户设置中绑定手机号！');
			return false;
		}
		var send_type = $('#send_type').val();
		$.ajax({
			url:'/send_sm.php',
			type:'GET',
			dataType:'text',
			data:'code='+code+'&mobile='+phone_1+((send_type==undefined)?'':('&send_type='+send_type)),
			success:function(data){
				$('#send_msg').html("<span style='color:red'>"+data+"</span>");
				setTimeout(function(){close_msg_box();},3000);
			}
		});
	},
	donate:function(code){
		
		var first = true;
		$.ajax({
			url:'/ajax/first_buy.php',
			type:'POST',
			dataType:'json',
			data:'code='+code,
			success:function(data){
				if(data == 2){
					first = false;
					
					alert('用注册返利或充值卡充值首次购买的订单不能赠送');
					
				}
			}
		});
		if(!first){
			return;
		}
		if(CODE.auth('donate',code) == 1){
			var a=[];
			a.push('<table cellspacing="0" cellpadding="0" style="width:100%">');
			a.push('<tr><td style="padding:0px 10px">赠送拉手券</td></tr>');
			a.push('<tr><td style="text-align:right;padding:10px 50px 10px 0px">拉手帐号或邮箱：<input type="text" name="user_id" id="user_id" size="40" style="padding:2px" maxlength="100"/></td></tr>');
			a.push('<tr><td style="text-align:right;padding:10px 50px 10px 0px">赠  言：<input type="text" name="donor_say" id="donor_say" size="40" style="padding:2px" maxlength="100"/></td></tr>');
			a.push('<tr><td style="text-align:center;padding:10px"><input type="button" name="" value="确定" onclick="CODE.donate_ok('+code+',this)"/></td></tr>');
			a.push('<tr><td style="text-align:center;height:50px;" id="send_msg"><td></tr>');
			a.push("</table>");
			b='赠送拉手券';
			$.MsgBox({title:b,html:a.join("\n"),hidden:false})
		}
	},
	donate_ok:function(code,obj){
		$(obj).attr('disabled',true);
		var user_id = $('#user_id').val();
		var donor_say = $('#donor_say').val();
		if(user_id==''){
			alert('请输入用户名或邮箱');
			$(obj).attr('disabled',false);
			return false;
		}
		if(confirm("你确定要把这张拉手券赠送给"+user_id+"吗?")){
			$.ajax({
				url:'/donate.php',
				type:'GET',
				dataType:'text',
				data:'code='+code+'&receiver='+user_id+'&donor_say='+donor_say,
				success:function(data){
					$('#send_msg').html("<span style='color:red'>"+data+"</span>");
					setTimeout(function(){close_msg_box();},1500);
				}
			});
		}
	},
	sell:function(code){
		var a=[];
		a.push('<table cellspacing="0" cellpadding="0" style="width:100%">');
		a.push('<tr><td style="padding:10px">发布转让信息，不要忘记写下联系方式哦！</td></tr>');
		a.push('<tr><td style="text-align:right;padding:10px 50px 10px 0px"><span style="vertical-align:top">附 言：</span><textarea name="exchange_msg" id="exchange_msg" cols="40" style="padding:2px" rows="3"/></textarea></td></tr>');
		a.push('<tr><td style="text-align:center;padding:10px"><input type="button" name="" value="确定" onclick="CODE.sell_ok('+code+',this)" style="padding:2px 8px;overflow: visible;"/></td></tr>');
		a.push('<tr><td style="text-align:center;height:50px;" id="send_msg"><td></tr>');
		a.push("</table>");
		b='转让拉手券';
		$.MsgBox({title:b,html:a.join("\n"),hidden:false})
	},
	sell_ok:function(code,obj){
		if($.trim($('#exchange_msg').val()) == ''){
			return
		}
		if(confirm('你确认要转让这张拉手券吗？')){
			$(obj).attr('disabled',true);
			var content = encodeURIComponent($('#exchange_msg').val());
			$.ajax({
				url:'/exchanges_ok2.php',
				type:'POST',
				dataType:'text',
				data:{'code':code,'content':content},
				success:function(data){
					$('#send_msg').html("<span style='color:red'>"+data+"</span>");
					setTimeout(function(){close_msg_box();},1500);
				}
			});
		}
	},
	send_confirm_code:function(obj){
		$(this).attr('disabled',true);
		$.getJSON('/ajax/outcode.php?act=send_confirm_code',function(data){
			if(data.status == 1){
				alert(data.msg);
				return
			}
			$(obj).replaceWith("<span style='color:red'>验证短信已发送到你的手机上，收到后请输入的你的验证码 </span>"); 
		});
	},

	check_confirm_code:function(obj,name,code){
		var confirm_code = $.trim($('#confirm_code').val());
		if(!confirm_code){
			alert('请输入验证码');
			return
		}
		$.getJSON('/ajax/outcode.php?act=check_confirm_code&confirm_code='+confirm_code,function(data){
			if(data.status == 1){
				$(obj).parent().html('<span class="reg_ok">验证成功</span>')
				CODE.sign == 1;
				setTimeout(function(){close_msg_box();CODE[name](code);},2000);
				return
			}else{
				alert(data.msg);
			}
		});
	},

	check_confirm_pwd:function(obj,name,code){
		var confirm_code = $('#confirm_code').val();
		if(!confirm_code){
			alert('请输入网站登录密码');
			return
		}
		$.getJSON('/ajax/outcode.php?act=check_confirm_pwd&confirm_code='+confirm_code,function(data){
			if(data.status == 1){
				$(obj).parent().html("<span style='color:red'>验证成功，可以继续操作 </span>")
				CODE.sign == 1;
				setTimeout(function(){close_msg_box();CODE[name](code);},1500)
				return
			}else{
				alert(data.msg);
			}
		});
	},

	gift:function(donor_name,donor_say){
		//CODE.gift('{:$value[donor_name]}','{:$value[donor_say]}')
		var a=[];
		a.push('<table cellspacing="0" cellpadding="0" style="width:100%">');
		a.push('<tr><td style="padding:0px 10px"></td></tr>');
		a.push('<tr><td style="text-align:left;padding:0px 10px">你的好友 '+ donor_name +' 赠送给你的</td></tr>');
		a.push('<tr><td style="text-align:left;padding:10px">附言：'+donor_say+'</td></tr>');
		a.push('<tr><td style="text-align:center;height:50px;"><td></tr>');
		a.push("</table>");
		b='';
		$.MsgBox({title:b,html:a.join("\n"),hidden:false})
		setTimeout(function(){close_msg_box();},5000)
	}
}

function auth_dialog(name,code){
	var a=[];
	a.push('<table cellspacing="0" cellpadding="0" style="width:100%">');
	a.push('<tr><td style="padding:0px 10px"></td></tr>');
	a.push('<tr><td style="text-align:left;padding:10px">验证短信会发送到你的绑定手机上(在“账户设置”中可以查看)</td></tr>');
	a.push('<tr><td style="text-align:center;padding:10px;"><input type="button" name="" value="发送验证短信" onclick="CODE.send_confirm_code(this)" style="padding:2px 8px;overflow: visible;"/></td></tr>');
	a.push('<tr><td style="text-align:center;padding:10px"><input type="text" name="confirm_code" id="confirm_code" value="" size="6" style="padding:2px"/><input type="button" name="" value="验证" onclick="CODE.check_confirm_code(this,\''+name+'\',\''+code+'\')" style="padding:2px 8px;overflow: visible; margin-left:8px;"/></td></tr>');
    a.push('<tr><td><p class="my-v-tips" style="text-align:left; font-size:12px; padding:0 0 25px 21px;"><strong>温馨提示：</strong><br />1、您可以随时到“<a href="settings.php?act=settype" target="_blank">自定义设置</a>”中，将短信验证方式更改<br>为“登录密码验证”；<br />	2、短信验证方式安全性高，可以更好地保障您的账户安全。</p><td></tr>');
	a.push('<tr><td style="text-align:center;height:50px;"><td></tr>');
	a.push("</table>");
	b='动态码验证';
    $.MsgBox({title:b,html:a.join("\n"),hidden:false})
}

function password_dialog(name,code){
	var a=[];
	a.push('<table cellspacing="0" cellpadding="0" style="width:100%">');
	a.push('<tr><td style="padding:0px 10px"></td></tr>');
	a.push('<tr><td style="text-align:left;padding:0px 10px">请输入您的拉手网登录密码进行验证</td></tr>');
	a.push('<tr><td style="text-align:center;padding:10px"><input type="password" name="confirm_code" id="confirm_code" value="" size="10" style="padding:2px"/><input type="button" name="" value="验证" onclick="CODE.check_confirm_pwd(this,\''+name+'\',\''+code+'\')"/></td></tr>');
	a.push('<tr><td style="text-align:center;height:50px;"><td></tr>');
	a.push("</table>");
	b='登录密码验证';
    $.MsgBox({title:b,html:a.join("\n"),hidden:false})
}
var COMMENT = {
	edit:function(trade,select_1,select_2,comment,reply,gtype,gf_agree){
		var a=[];
		a.push('<div class="k_content_box">');
		a.push('<div style=" padding-bottom:5px; overflow:hidden;_display:inline-block;"><span style="float:left;display:inline-block; height:26px; line-height:26px; padding-right:5px;">商品与网站描述是否相符:</span>');
		a.push('<span class="ks l" id="'+trade+'_1"></span>');
		a.push('<input name="select" id="select_1" value="'+select_1+'" type="hidden"/><div style="clear:both;"></div></div>');
		if(gtype==1)
		{
			a.push('<div style=" padding-bottom:10px; overflow:hidden;_display:inline-block;"><span style="float:left;display:inline-block; height:26px; line-height:26px; padding-right:5px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;商家服务态度:</span>');
		}else{
		a.push('<P>物流服务</P>');
		}
		a.push('<span class="ks1 l" id="'+trade+'_2"></span>');
		a.push('<input name="select" id="select_2" value="'+select_2+'" type="hidden"/><div style="clear:both"></div></div>');
		if(reply){
			a.push('<P>商家回复：'+reply+'</p>');
		}
		a.push('<p>是否愿意再次去商家消费:');
		a.push('&nbsp;<input type="radio" value="1" name="gf_agree" ');
		if(gf_agree!=2)
		{
			a.push(' checked ');
		}
		a.push('/>是&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" value="2" name="gf_agree" ');
		if(gf_agree==2)
		{
			a.push(' checked ');
		}
		a.push('/>否</p>');
		a.push('<P>&nbsp;</P><P class="k_t_comment">评论：<span style="color:red" id="notice"></span></P>');
		a.push('<P><textarea name="comment" id="comment" cols="" rows="" class="k_comment">'+comment+'</textarea></P>');
		a.push('<input type="hidden" name="trade" id="trade" value="'+trade+'"/><input type="hidden" name="gtype" id="gtype" value="'+gtype+'"/>');
		a.push('<P><input type="button" onclick="COMMENT.edit_ok(this)" id="comment_button" value="修改" class="k_release_but"/></P></div>');
		b='修改评论';
		$.MsgBox({title:b,html:a.join("\n"),hidden:false});
		$("#"+trade+"_1").studyplay_star({MaxStar:5,CurrentStar:select_1,Enabled:true},1,function(value){$('#select_1').val(value)}, select_1);
		$("#"+trade+"_2").studyplay_star({MaxStar:5,CurrentStar:select_2,Enabled:true},2,function(value){$('#select_2').val(value)}, select_2);
	},
	edit_ok:function(){
		var select_1 = $('#select_1').val();
		var select_2 = $('#select_2').val();
		var comment = $.trim($('#comment').val());
		comment=comment.replace(/[\n\r]/g,"");
		var gtype = $('#gtype').val();
		var gf_agree = $('input[name=gf_agree]:checked').val();
		if(select_1 == 0 || select_2 == 0 || comment == ''){
			$('#notice').html("请填写评论")
			return
		}
		$.ajax({
			url:'/ajax/gfeedback.php',
			type:'POST',
			dataType:'json',
			data:{'select_1':select_1,'select_2':select_2,"trade":$('#trade').val(),"gf_agree":gf_agree,"comment":comment,"gtype":gtype,"gf_agree":gf_agree},
			success:function(data){
				$('#send_msg').html("<span style='color:red'>"+data.msg+"</span>");
				if(data.status == 1){
					setTimeout(function(){close_msg_box();window.location.reload();},1500);
				}
			}
		});	
	},
	del:function(trade){
		if(confirm("确定要删除此券的评论吗?")){
			$.getJSON('/ajax/gfeedback.php?act=del&trade='+trade,function(){
				window.location.reload();
			});
		}
	},
	publish:function(sp_id,goods_id,trade,consumer_time,gtype){
		var a=[];
		a.push('<div class="k_content_box">');
		a.push('<div style=" padding-bottom:5px; overflow:hidden;_display:inline-block;"><span style="float:left;display:inline-block; height:26px; line-height:26px; padding-right:5px;">商品与网站描述是否相符:</span>');
		a.push('<span class="ks l" id="'+trade+'_1"></span>');
		a.push('<input name="select" id="select_1" value="0" type="hidden"/><div style="clear:both;"></div></div>');
		if(gtype==1){
		a.push('<div style=" padding-bottom:10px; overflow:hidden;_display:inline-block;"><span style="float:left;display:inline-block; height:26px; line-height:26px; padding-right:5px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;商家服务态度:</span>');
		}else{
		a.push('<P>物流服务态度:');
		}
		a.push('<span class="ks1 l" id="'+trade+'_2"></span>');
		a.push('<input name="select" id="select_2" value="0" type="hidden"/><div style="clear:both;"></div></div>');
		a.push('<p>是否愿意再次去商家消费:');
		a.push('&nbsp;<input type="radio" value="1" name="gf_agree" checked/>是&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" value="2" name="gf_agree"/>否</p>');
		a.push('<P>&nbsp;</P><P class="k_t_comment">评论：<span style="color:red" id="notice"></span></P>');
		a.push('<P><textarea name="comment" id="comment" cols="" rows="" class="k_comment" onfocus="CODE.clearSp(this)">非常不错！我还会再来哦</textarea></P>');
		a.push('<input type="hidden" name="sp_id" id="sp_id" value="'+sp_id+'"/><input type="hidden" name="goods_id" id="goods_id" value="'+goods_id+'"/><input type="hidden" name="trade" id="trade" value="'+trade+'"/><input type="hidden" name="consumer_time" id="consumer_time" value="'+consumer_time+'"/><input type="hidden" name="gtype" id="gtype" value="'+gtype+'"/>');
		a.push('<P><input type="button" onclick="COMMENT.publish_ok(this)" id="comment_button" value="发布" class="k_release_but"/></P></div>');
		b='发布评论';
		$.MsgBox({title:b,html:a.join("\n"),hidden:false});
		$("#"+trade+"_1").studyplay_star({MaxStar:5,CurrentStar:0,Enabled:true},1,function(value){$('#select_1').val(value)}, 0);
		$("#"+trade+"_2").studyplay_star({MaxStar:5,CurrentStar:0,Enabled:true},2,function(value){$('#select_2').val(value)}, 0);
	},
	publish_ok:function(obj){
		$('#comment_button').attr('disabled',true);
		var select_1 = $('#select_1').val();
		var select_2 = $('#select_2').val();
		var comment = $.trim($('#comment').val());
		var gtype = $('#gtype').val();
		var gf_agree = $('input[name=gf_agree]:checked').val();
		comment=comment.replace(/[\n\r]/g,"");
		if(select_1 == 0 ){
			$('#word1').html("请选择")
			$('#comment_button').attr('disabled',false);
			
			return
		}
		if(select_2 == 0){
			$('#comment_button').attr('disabled',false);
			$('#word2').html("请选择")
			return
		}
		if(comment == ''){
			$('#comment_button').attr('disabled',false);
			$('#notice').html("请填写评论")
			return
		}
		$.ajax({
			url:'/ajax/gfeedback.php',
			type:'POST',
			dataType:'json',
			data:{'select_1':select_1,'select_2':select_2,"sp_id":$('#sp_id').val(),
				"goods_id":$('#goods_id').val(),"trade":$('#trade').val(),
				"consumer_time":$('#consumer_time').val(),"comment":comment,"gf_agree":gf_agree,
				'gtype':gtype
				},
			success:function(data){
				if(data.status == 1){
					close_msg_box();
					var a=[];
					a.push('<table cellspacing="0" cellpadding="0" style="width:100%;height=60px;">');
					a.push('<tr><td style="text-align:center;height:200px;font-size:16px;font-weight:bold;color:#ff3300;" id="send_msg">'+data.msg+'<td></tr>');
					a.push("</table>");
					b='发布评论';
					$.MsgBox({title:b,html:a.join("\n"),hidden:false});
					setTimeout(function(){close_msg_box();window.location.reload();},3500);
				}else{
					$('#comment_button').attr('disabled',false);
					$('#send_msg').html("<span style='color:red'>"+data.msg+"</span>");	
				}
			}
		});
	},
	refund_tip:function(trade_no){
		var a=[];
		a.push('<table cellspacing="0" cellpadding="0" style="width:100%">');
		a.push('<tr><td style="padding:20px;color:red;font-size:20px;font-weight:bold;text-align:center;">您确定要退款吗？</td></tr>');
		a.push('<tr><td style="padding:0px 0px 0px 20px;color:#333;font-size:14px;">*&nbsp; 一旦您确认退款，将不能撤销。<br>*&nbsp;您确认退款后，您的拉手券将不能使用。<br>*&nbsp; 确定退款后，工作人员将在2-15个工作日左右为您办理退款手续。<br>*&nbsp;退款手续办理完毕，您帐户绑定的手机将会收到相应短信通知。</td></tr>');
		a.push('<tr><td style="text-align:center;padding:10px"><input type="button" class="zcbt gdbtn" name="" value="我要退款" onclick="COMMENT.refund(\''+trade_no+'\')"/>&nbsp&nbsp<input type="button" value="取 消" class="zcbt gdbtn" style="background:#f0f0f0;border:#999;" onclick="close_msg_box()"</td></tr>');
		a.push('<tr><td style="text-align:center;height:50px;" id="send_msg"><td></tr>');
		a.push("</table>");
		b='7天无条件退款申请';
		$.MsgBox({title:b,html:a.join("\n"),hidden:false})
	},
	refund:function(trade_no){
		close_msg_box();
		var a=[];
		a.push('<table cellspacing="0" cellpadding="0" style="width:100%">')
		a.push('<tr><td style="text-align:left;padding:5px 20px">退款理由：<textarea name="comment" id="comment" cols="50" style="padding:2px;vertical-align:top;width:270px;" rows="5"></textarea></td></tr>');
		a.push('<tr><td style="text-align:center;padding:10px"><input type="hidden" name="trade_no" id="trade_no" value="'+trade_no+'"/><input type="button" name="" value="我要退款" class="zcbt gdbtn" onclick="COMMENT.refund_ok(this)"/>&nbsp&nbsp<input type="button" class="zcbt gdbtn" style="background:#f0f0f0;border:#999;" value="取 消" onclick="close_msg_box()"</td></tr>');
		a.push('<tr><td style="text-align:center;height:50px;" id="send_msg"><td></tr>');
		a.push("</table>");
		b='我要退款';
		$.MsgBox({title:b,html:a.join("\n"),hidden:false})
	},
	refund_ok:function(obj){
		var comment = $.trim($('#comment').val());
		$.ajax({
			url:'/ajax/refund.php',
			type:'POST',
			dataType:'json',
			data:{"trade_no":$('#trade_no').val(),"comment":comment},
			success:function(data){
				$('#send_msg').html("<span style='color:red'>"+data.msg+"</span>");
				if(data.status == 1){
					setTimeout(function(){close_msg_box();window.location.reload();},1000);
				}
			}
		});
	},
	look_reply:function(comment){
		var a=[];
		a.push('<table cellspacing="0" cellpadding="0" style="width:100%">');
		a.push('<tr><td style="padding:0px 10px"></td></tr>');
		a.push('<tr><td style="text-align:left;padding:5px 20px">我的评论：'+comment+'</td></tr>');
		a.push('<tr><td style="text-align:center;padding:10px"><input type="button" name="" value="关闭窗口" onclick="close_msg_box()"/></td></tr>');
		a.push("</table>");
		b='查看评论';
		$.MsgBox({title:b,html:a.join("\n"),hidden:false})
		
	},
	sp_reply:function(comment,reply,reply_time){
		var a=[];
		a.push('<table cellspacing="0" cellpadding="0" style="width:100%">');
		a.push('<tr><td style="padding:0px 10px"></td></tr>');
		a.push('<tr><td style="text-align:left;padding:5px 20px">我的评论：'+comment+'</td></tr>');
		a.push('<tr><td style="text-align:left;padding:5px 20px">商家回复：'+reply+'</td></tr>');
		a.push('<tr><td style="text-align:left;padding:5px 20px">回复时间：'+reply_time+'</td></tr>');
		a.push('<tr><td style="text-align:center;padding:10px"><input type="button" name="" value="关闭窗口" onclick="close_msg_box()"/></td></tr>');
		a.push('<tr><td style="text-align:center;height:50px;" id="send_msg"><td></tr>');
		a.push("</table>");
		b='查看商家回复';
		$.MsgBox({title:b,html:a.join("\n"),hidden:false})
	}
}
//评论星星
$.fn.studyplay_star=function(options,num,callback,ranknum){
	//默认设置
	var settings ={
		MaxStar      :5,
		StarWidth    :21,
		CurrentStar  :0,
		Enabled      :true
		};
	var ranks = new Array();
	ranks[1] = '非常不满意';
	ranks[2] = '不满意';
	ranks[3] = '一般';
	ranks[4] = '满意';
	ranks[5] = '非常满意';
	if(ranknum != ''){rk = ranks[ranknum]}else{rk = ''};
	if(options) { jQuery.extend(settings, options); };
	var container = jQuery(this);
	container.css({"position":"relative"})
	.html('<ul class="studyplay_starBg_'+num+'"></ul><span style="padding-left:10px;" id="word'+num+'">'+rk+'</span>')	
	.find('.studyplay_starBg_'+num).width(settings.MaxStar*settings.StarWidth)
	.html('<li class="studyplay_starovering_'+num+'" style="width:'+settings.CurrentStar*settings.StarWidth+'px; z-index:0;" id="studyplay_current_'+num+'"></li>');
	if(settings.Enabled)
	{
	var ListArray = "";	
	for(k=1;k<settings.MaxStar+1;k++)
	{
		ListArray +='<li class="studyplay_starON_'+num+'" style="width:'+settings.StarWidth*k+'px;z-index:'+(settings.MaxStar-k+1)+';"></li>';
	}
	container.find('.studyplay_starBg_'+num).append(ListArray)
	container.find('.studyplay_starON_'+num).hover(function(){
											  star_num = settings.MaxStar - $(this).css("z-index")+1;
											  if(star_num == 5){
												rank = '非常满意';
											  }else if(star_num == 4){
												rank = '满意';
											  }else if(star_num == 3){
												rank = '一般';
											  }else if(star_num == 2){
												rank = '不满意';
											  }else if(star_num == 1){
												rank = '非常不满意';
											  }
											  $("#word"+num+"").html(rank);
											  $(this).removeClass('studyplay_starON_'+num).addClass("studyplay_starovering_"+num);
											  $("#studyplay_current_"+num).hide();
											  },
											 function(){
											  $(this).removeClass('studyplay_starovering_'+num).addClass("studyplay_starON_"+num);
											  $("#studyplay_current_"+num).show();
											   var studyplay_count = settings.MaxStar - $(this).css("z-index")+1;
											   $("#studyplay_current_"+num).width(studyplay_count*settings.StarWidth);
											   if (typeof callback == 'function') {
													callback(studyplay_count);
													return ;
												}
										  })
	.click(function(){
					var studyplay_count = settings.MaxStar - $(this).css("z-index")+1;
					$("#studyplay_current_"+num).width(studyplay_count*settings.StarWidth)
					//回调函数
					if (typeof callback == 'function') {
					callback(studyplay_count);
					return ;
					}
					})
 }
}


$(function(){
	$.ajaxSetup({async: false});
	CODE.init();
})