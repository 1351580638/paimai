<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/common.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"> </script>
	<script  type="text/javascript">
	//用户名
	function checkName(){
		var name=$("#name").val();
		if(name.length>=3&&name.length<=20){
			$("#aname").html("正确");
			return true;
		}else{
			$("#aname").html("请正确输入");
			return false;
		}
	}
	
	//密码
	function checkPwd(){
		var pwd=$("#pwd").val();
		if(pwd.length>=6&&pwd.length<=10){
			$("#apwd").html("正确");
			return true;
		}else{
			$("#apwd").html("请正确输入");
			return false;
		}
	}
	//身份证
	function checkId(){
		var aid=$("#aid").val();
		if(aid.length==2){
			$("#aaid").html("正确");
			return true;
		}else{
			$("#aaid").html("请正确输入");
			return false;
		}
	}
	//电话
	function checkIp(){
		var ip=$("#ip").val();
		if(ip.length==3){
			$("#aip").html("正确");
			return true;
		}else{
			$("#aip").html("请正确输入");
			return false;
		}
	}
	//住地
	function checkAdd(){
		var add=$("#add").val();
		if(add.length>=1&&add.length<=10){
			$("#adda").html("正确");
			return true;
		}else{
			$("#adda").html("请正确输入");
			return false;
		}
		
		
	}
	//邮编
	function checkPost(){
		var post=$("#post").val();
		if(post.length==6){
			$("#apost").html("正确");
			return true;
		}else{
			$("#apost").html("请正确输入");
			return false;
		}
	}
	//验证码
	function test(){
		$("#kaptchaImage").prop("src","getKaptcha.action?t="+new Date().getTime());
	}
	
	//表单
	function checkForm(){
		var n=checkName();
		var p=checkPwd();
		var i=checkId();
		var ip=checkIp();
		var po=checkPost();
		if(n && p && i && ip && po){
			return true;
		}else{
			return false;
		}
		
	}
	</script>




</head>

<body>
<div class="wrap">
  <form action="${pageContext.request.contextPath}/add.action" method="post" onsubmit="return checkForm()">
  <!-- main begin-->
      <div class="zclf login logns">
        <h1  class="blue">用户注册</h1>
          <dl>
            <dd>
              <label> <small>*</small>用户名</label>
              <input name="user_name" type="text" class="inputh lf" value="" onblur="checkName()" id="name" />
             <div class="lf red laba">
             	<p>用户名要求不低于6个字符</p>
           		<span id="aname" style="color:green"></span>
             </div>
            </dd>
            <dd>
              <label> <small>*</small>密码</label>
              <input name="user_password" type="text" class="inputh lf" value="" onblur="checkPwd()" id="pwd" />
              <div class="lf red laba">
              	<p>密码要求不低于6个字符</p>
              	<span id="apwd" style="color:green"></span>
              	</div>
            </dd>
            <dd>
              <label> <small>*</small>身份证号</label>
              <input name="user_card_no" type="text" class="inputh lf" value="" onblur="checkId()" id="aid" />
              <div class="lf red laba">
              		<p>身份证号必填</p>
              		<span id="aaid" style="color:green"></span>
              </div>
            </dd>
            <dd>
              <label> <small>*</small>电话</label>
              <input name="user_tel" type="text" class="inputh lf" value="" onblur="checkIp()" id="ip" />
              <div class="lf red laba">
             		<p> 电话号码必填</p>
             		<span id="aip" style="color:green"></span>
              </div>
            </dd>
            <dd>
              <label> <small>*</small>住址</label>
              <input name="user_address" type="text" class="inputh lf" value="" onblur="checkAdd()" id="add" />
              <span id="adda" style="color:green"></span>
            </dd>
            <dd>
              <label> <small>*</small>邮政编码</label>
              <input name="user_post_number" type="text" class="inputh lf" value="" onblur="checkPost()" id="post"/>
              		<span id="apost" style="color:green" ></span>
            </dd>
            <dd class="hegas">
              <label> <small>*</small>验证码</label>
              <input name="kaptcha" type="text" class="inputh inputs lf" value="" />
               <span class="wordp lf"><img src="getKaptcha.action" width="96" height="27" alt="" id="kaptchaImage"/></span>
               <span class="blues lf"><a href="javascript:void(0)" onclick="test()" title="">看不清</a></span>
            </dd>
            <dd class="hegas">
              <label>&nbsp;</label>
               <input name=""  type="checkbox" id="rem_u"   />
              <label for="rem_u" class="labels">我同意<span class="blues">《服务条款》</span></label>
            </dd>
            <dd class="hegas">
              <label>&nbsp;</label>
              <input name="" type="submit" value="立即注册" class="spbg buttombg buttombgs f14 lf" />
            </dd>
          </dl>
    </div>
<!-- main end-->
<!-- footer begin-->
 </form>
</div>
 <!--footer end-->

</div>
</body>
</html>
