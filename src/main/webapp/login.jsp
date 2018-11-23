<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"> </script>
<script type="text/javascript">
//验证码
		function test(){
	$("#kaptchaImage").prop("src","getKaptcha.action?t="+new Date().getTime());
}
		function checkName(){
			var aname=$("#aname").val();
			if(aname.length>=2&&aname.length<=10){
				$("#n").html("正确");
				return true;
			}else{
				$("#n").html("请正确输入");
				return false;
			}
		}

		function checkPwd(){
			var pass=$("#password").val();
			if(pass.length>=5&&pass.length<=10){
				$("#p").html("正确");
				return true;
			}else{
				$("#p").html("请正确输入");
				return false;
			}
		}

		function checkForm(){
			var name=checkName();
			var pwd=checkPwd();
			if(name & pwd){
				return true;
			}else{
				return false;
			}

		}

</script>
</head>

<body>
<div class="wrap">
<!-- main begin-->
 <div class="main">
   <div class="sidebar">
     <p><img src="${pageContext.request.contextPath}/images/img1.jpg" width="443" height="314" alt="" /></p>
   </div>
   <div class="sidebarg">
     <form action="${pageContext.request.contextPath}/getOne.action" method="post" target='_blank'  onsubmit="return checkForm()">
    <div class="login">
      <dl>
        <dt class="blues">用户登陆</dt>
        <dd>
        <label for="name">用户名：</label><input type="text" name="user_name" class="inputh" value="" id="aname" onblur="checkName()"/>
        
        <span id="n" style='color:red'></span>
        
        </dd>
        <dd>
        <label for="password">密 码：</label><input type="text" name="user_password" class="inputh" value="" id="password" onblur="checkPwd()"/>
         <span id="p" style='color:red'></span>
        </dd>
        <dd>
           <label class="lf" for="passwords">验证码：</label>
           <input type="text" name="kaptcha" class="inputh inputs lf" value="验证码" id="passwords" id="kaptchaImage"/>
           <span class="wordp lf"><img src="getKaptcha.action" width="96" height="27" alt="" id="kaptchaImage" /></span>
           <span class="blues lf"><a href="javascript:void(0)" onclick="test()" title="">看不清？换一张</a></span>
        </dd>
        <dd>
          <%-- <input name=""  type="checkbox" id="rem_u"  />--%>
           <span for="rem_u">下次自动登录</span>
        </dd>
        <dd class="buttom">
           <input name="" type="submit" value="登 录" class="spbg buttombg f14 lf" />
          <a href="${pageContext.request.contextPath}/auctionreg.jsp"><input name="" type="" value="注 册" class="spbg buttombg f14 lf" /></a>
           <span class="blues  lf"><a href="" title="">忘记密码?</a></span>
           <div class="cl"></div>
        </dd>
       
      </dl>
    </div>
    </form>
   </div>
  <div class="cl"></div>
 </div>
<!-- main end-->
 
<!-- footer begin-->
</div>
 <!--footer end-->
 
</div>
</body>
</html>
