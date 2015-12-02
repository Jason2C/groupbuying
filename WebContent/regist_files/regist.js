//document.domain="lashou.com";
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


$(document).ready(function(){$("#headersearchform").autocomplete("/ajax/get_query_suggest.php",{minChars:1,width:210,matchContains:true,autoFill:false,delay:300,selectFirst:false,dataType:"json",parse:function(data){return $.map(data,function(row){return{data:row,value:row.name,result:row.name}})},formatItem:function(row,i,max){return row.name},formatMatch:function(row,i,max){return row.name+" "+row.to},formatResult:function(row){return row.name}}).result(function(event, row, formatted) { checksubmit();});});
function checksubmit(){kk= $("#headersearchform").val(); k = $.trim(kk);if(k == "商品、商家、商圈" || k=='' ){return false;}else{ if(/\/house\//i.test(window.location.href) || /\/mall\//i.test(window.location.href)){document.getElementById('searchform').onsubmit=null;}$("#searchsubmit").attr('disabled', true);$("#searchform").submit();};}

		
		$(function(){
			$('#cityid').change(function(){
				get_school(this.value,'city','hide');
		});
		$('#job').click(function(){
				var theid = $('#cityid').val();
				get_school(theid,'city');
		});

		$('#school_city ul li').click(function(){
			var theid = $(this).attr('id').replace('p_','');
			get_school(theid);
		});
		var get_school = function(theid,type,hide){
			if(type=='city'){
				obj = {'type':'city','cid':theid};
			}else{
				obj = {'pid':theid};
			}
			$.get('/ajax/aj_school.php',obj,function(data){
					if(!hide) $('#students_school').show();
					if(data.state=='ok'){
						$('#school_sch ul').html(data.msg);	
						$('#school_sch ul li input').click(function(){
							$("#job").val($(this).next('span').text());
							})
						$('#school_city ul').find('li').removeClass('cit_act').end().find('#p_'+data.pid).addClass('cit_act');
					}
			},'json');
		}

		var tishi = function(data,e){
						if(data == 3){
							e.css({'background-color':'#FFE2D2','border':'1px solid #FF9D9D'});
							e.parent().find('img').remove();
							if(e.parent().find('span')){
								e.parent().find('span').remove();
							}
							e.after('<span class=reg_no>已注册过，请直接<a href="/login.php">登录</a></span>');
						}else if(data == 2){
							e.css({'background-color':'#FFFF99','border':'1px solid #FFCC00'});
							if(e.parent().find('span')){
								e.parent().find('span').remove();
							}
							e.after('<span class=reg_ok>可用</span><span style="display:none">1</span>');
							e.parent().find('img').remove();
						}else if(data==4){
							e.css({'background-color':'#FFE2D2','border':'1px solid #FF9D9D'});
							e.parent().find('img').remove();
							if(e.parent().find('span')){
								e.parent().find('span').remove();
							}
							e.after('<span class=reg_no>只能用英文、数字或汉字</span>');
						}else if(data == 1){
							alert('程序因缺少参数终止');
						}
		};
		var flags = [0,0,0,0,0,0];
			function validFlags(obj){
				//var submited = $('input[name=submited]');
				var submited = obj;
				if($.inArray(0,flags)>=0){
					submited.removeClass('gdbtn');
					submited.addClass('gdbtn_bef');
					return;
				}
				submited.removeClass('gdbtn_bef');
				submited.addClass('gdbtn');
			}

			$('.sect table :input[type!=submit]').not("select").click(function(){
				$(this).css({'background-color':'#FFFF99','border':'1px solid #FFCC00'});
			});
			
			var veremail =function(obj,obj1){
				//var e=$('#email');
				var e=obj;
				var email = e.val();
				var testEmail = /^[A-Za-z0-9](([_\+\-\.]*[a-zA-Z0-9]+)*)@([A-Za-z0-9]+)(([\.\-]*[a-zA-Z0-9]+)*)\.([A-Za-z]{2,})$/;
				if(!testEmail.test(email)){
					e.css({'background-color':'#FFE2D2','border':'1px solid #FF9D9D'});
					if(e.parent().find('span')){
						e.parent().find('span').remove();
					}
					e.after('<span class=reg_no>格式不正确</span>');
					flags[0] = 0;
					validFlags(obj1)
				}else{
					$.ajax({
						url:'regist~verifyemailn.do',
						type:'POST',
						data:'email='+email,
						dataType:'text',
						beforeSend:function(){
								e.after('<img src="http://d2.lashouimg.com/templates/default/images/ajax_loader.gif" />');
						},
						success:function(data){
							tishi(data,e);
							if(data == 2){
								flags[0] = 1;
							}else{
								flags[0] = 0;
							}
							validFlags(obj1)
						}
					});
				}
			};

			$('#email').bind('change',function(){
				veremail($(this),$("input[name=submited]"));
			});
			$('#email1').bind('change',function(){
				veremail($(this),$("input[name=submited1]"));
			});


			var verRName = function(obj,obj1){
				//var rn=$('#user_id');
				var rn=obj;
				var user_id = rn.val();
				if(rn.parent().find('span')){
					rn.parent().find('span').remove();
				}
				if(user_id == ''){
					rn.css({'background-color':'#FFE2D2','border':'1px solid #FF9D9D'});
					rn.after('<span class=reg_no>名称不能为空</span>');
					flags[1] = 0;
					validFlags(obj1)
					return false;
				}
		        var testUser = /^[\u4E00-\u9FA5a-z0-9_]+$/i;
				if(!testUser.test(user_id)){
					rn.css({'background-color':'#FFE2D2','border':'1px solid #FF9D9D'});
					rn.after('<span class=reg_no>仅可使用字母、数字、汉字和下划线</span>');
					flags[1] = 0;
					validFlags(obj1)
					return false;
		        }
		        var lenght = user_id.length;
		        for(var i=0; i<user_id.length; i++){
		            if(user_id.charCodeAt(i) > 127) lenght++;
		        }
		        if(lenght>20 || lenght<4){
					rn.css({'background-color':'#FFE2D2','border':'1px solid #FF9D9D'});
		            rn.after('<span class=reg_no>4到20个字符，一个汉字为2个字符</span>');
					flags[1] = 0;
					validFlags(obj1)
					return false;
		        }
				$.ajax({
					url:'/ajax/verifyRnamen.php',
					type:'POST',
					dataType:'text',
					data:'user_id='+user_id,
					beforeSend:function(){
							rn.after('<img src="http://s1.lashouimg.com/templates/default/images/ajax_loader.gif" />');
					},
					success:function(data){
						tishi(data,rn);
						if(data == 2){
							flags[1] = 1;
						}else{
							flags[1] = 0;
						}
						validFlags(obj1)
					}
				});
			};
			$('#user_id').bind('change',function(){
		        verRName($(this),$('input[name=submited]'));
			});
			$('#user_id1').bind('change',function(){
		        verRName($(this),$('input[name=submited1]'));
			});
			var verpwd = function(pwd,pwd1,obj1){
				//pwd2 = $('#pwd2');
				pwd2=pwd1;
				if(pwd.val().length <6){
					pwd.css({'background-color':'#FFE2D2','border':'1px solid #FF9D9D'});
					if(pwd.parent().find('span')){
						pwd.parent().find('span').remove();
					}
					pwd.after('<span class=reg_no>密码长度最小六位</span>');
					flags[2] = 0;
					validFlags(obj1)
				}else{
					pwd.css({'background-color':'#FFFF99','border':'1px solid #FFCC00'});
					if(pwd.parent().find('span')){
						pwd.parent().find('span').remove();
					}
					pwd.after('<span class=reg_ok>正确</span><span style="display:none">1</span>');
					flags[2] = 1;
					validFlags(obj1)
					if(pwd.val() == pwd2.val()){
						pwd2.css({'background-color':'#FFFF99','border':'1px solid #FFCC00'});
						if(pwd2.parent().find('span')){
							pwd2.parent().find('span').remove();
						}
						pwd2.after('<span class=reg_ok>正确</span><span style="display:none">1</span>');
						flags[3] = 1;
						validFlags(obj1)
					}else{
						pwd2.css({'background-color':'#FFE2D2','border':'1px solid #FF9D9D'});
						if(pwd2.parent().find('span')){
							pwd2.parent().find('span').remove();
						}
						pwd2.after('<span class=reg_no>两次密码不一致</span>');
						flags[3] = 0;
						validFlags(obj1)
					}
				}
			};
			$('#pwd').keyup(function(){
				var pwd = $(this);
				verpwd(pwd,$('#pwd2'),$('input[name=submited]'));
			});
			$('#pwd3').keyup(function(){
				var pwd = $(this);
				verpwd(pwd,$('#pwd4'),$('input[name=submited1]'));
			});
			var verpwd2 = function(pwd2,pwd,obj1){
				//var pwd = $('#pwd').val();
				var pwd=pwd.val();
				if(pwd2.val().length <6){
					pwd2.css({'background-color':'#FFE2D2','border':'1px solid #FF9D9D'});
					if(pwd2.parent().find('span')){
						pwd2.parent().find('span').remove();
					}
					pwd2.after('<span class=reg_no>密码长度最小六位</span>');
					flags[3] = 0;
					validFlags(obj1)
				}else{
					if(pwd == pwd2.val()){
						pwd2.css({'background-color':'#FFFF99','border':'1px solid #FFCC00'});
						if(pwd2.parent().find('span')){
							pwd2.parent().find('span').remove();
						}
						pwd2.after('<span class=reg_ok>正确</span><span style="display:none">1</span>');
						flags[3] = 1;
						validFlags(obj1)
					}else{
						pwd2.css({'background-color':'#FFE2D2','border':'1px solid #FF9D9D'});
						if(pwd2.parent().find('span')){
							pwd2.parent().find('span').remove();
						}
						pwd2.after('<span class=reg_no>两次密码不一致</span>');
						flags[3] = 0;
						validFlags(obj1)
					}
				}
			};

			$('#pwd2').keyup(function(){
				var pwd2 = $('#pwd2');
				verpwd2(pwd2,$('#pwd'),$('input[name=submited]'));
			});
			$('#pwd4').keyup(function(){
				var pwd2 = $('#pwd4');
				verpwd2(pwd2,$('#pwd3'),$('input[name=submited1]'));
			});

			$('input[name=yan]').bind('blur',function(){
				if($(this).val().length != 4){
					flags[4] = 0;
				}else{
					flags[4] = 1;
				}
				validFlags($('input[name=submited]'))
			});
			$('#yan1').bind('blur',function(){
				if($(this).val().length != 4){
					flags[4] = 0;
				}else{
					flags[4] = 1;
				}
				validFlags($('input[name=submited1]'))
			});
			
			$('input[name=xieyi]').click(function(){
				if($(this).attr('checked')){
					flags[5] = 1;
				}else{
					flags[5] = 0;
				}
				validFlags($('input[name=submited]'))
			})
			$('input[name=xieyi1]').click(function(){
				if($(this).attr('checked')){
					flags[5] = 1;
				}else{
					flags[5] = 0;
				}
				validFlags($('input[name=submited1]'))
			})
			
			$('#reg').submit(function(){
				var e = $('#email');
				var rn = $('#user_id');
				var pwd = $('#pwd');
				var pwd2 = $('#pwd2');
				var pwd3 = verpwd(pwd,pwd2,$('input[name=submited]'));
				var pwd4 = verpwd2(pwd2,pwd,$('input[name=submited]'));
				var e1 = e.parent().find('span:eq(1)').text();
				var e2 = rn.parent().find('span:eq(1)').text();
				var e3 = pwd.parent().find('span:eq(1)').text();
				var e4 = pwd2.parent().find('span:eq(1)').text();
				var e6=$('input[name=xieyi]').attr('checked')?1:0;
				if(e1 != 1){
					veremail(e,$("input[name=submited]"));
				}
				if(e2 != 1){
					verRName(rn,$("input[name=submited]"));
				}
				$('input[name=yan]').change();

				if(e1==1  && e2==1 && e3==1 && e4==1 && e6==1){
					return true;
				}else{
					return false;
				}

			});
			$('#reg1').submit(function(){
				var e = $('#email1');
				var rn = $('#user_id1');
				var pwd = $('#pwd3');
				var pwd2 = $('#pwd4');
				var pwd3 = verpwd(pwd,pwd2,$('input[name=submited1]'));
				var pwd4 = verpwd2(pwd2,pwd,$('input[name=submited1]'));
				var e1 = e.parent().find('span:eq(1)').text();
				var e2 = rn.parent().find('span:eq(1)').text();
				var e3 = pwd.parent().find('span:eq(1)').text();
				var e4 = pwd2.parent().find('span:eq(1)').text();
				var e6=$('input[name=xieyi1]').attr('checked')?1:0;
				if($('#job').val()==''){
					alert("请选所在学校");
					return false;
					}
				if(e1 != 1){
					veremail(e,$("input[name=submited1]"));
				}
				if(e2 != 1){
					verRName(rn,$("input[name=submited1]"));
				}
				$('#yan1').change();

				if(e1==1  && e2==1 && e3==1 && e4==1 && e6==1){
					return true;
				}else{
					return false;
				}

			});
		});



//<!CDATA[
function g(o){return document.getElementById(o);}
function HoverLi(n){
//如果有N个标签,就将i<=N;
for(var i=1;i<=2;i++){g('tb_'+i).className='out_login';g('tbc_0'+i).className='undis';}g('tbc_0'+n).className='dis';g('tb_'+n).className='state_login';
}
//如果要做成点击后再转到请将<li>中的onmouseover 改成 onclick;
//]]>



function cimg(){
	var changetime =new Date().getTime();
	document.getElementById('chkimg').src='/need/code.php?'+changetime;
}



function cimg1(){
	var changetime =new Date().getTime();
	document.getElementById('chkimg1').src='/need/code.php?'+changetime;
}



//<![CDATA[
(function() {
var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
ga.src = 'http://www.google-analytics.com/ga.js';
var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();
 //]]>