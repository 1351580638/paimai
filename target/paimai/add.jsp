<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"> </script>
<script type="text/javascript">
		//名称
		function checkName(){
			var name=$("#name").val();
			if(name.length>=5&&name.length<=500){
				$("#aname").html("正确");
				return true;
			}else{
				$("#aname").html("请正确输入");
			}
		}
		//起拍价
		function checkPrice(){
			var price=$("#price").val();
			if(price.length<=9){
				$("#price").html("正确");
				return true;
			}else{
				$("#aprice").html("请正确输入");
				return false;
			}
		}
		//底价
		function checkUp(){
			var up=$("up").val();
			if(up.length<=9){
				$("#aup").html("正确");
				return true;
			}else{
				$("#aup").html("请正确输入");
				return false;
			}
		}
		
		function checkForm(){
			var n=checkName();
			var c=checkPrice();
			var ch=checkUp();
			if(n&c&ch){
				return true;
			}else{
				return false;
			}
		}
		
 	  //  var reg=/^[1-9]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])\s+(20|21|22|23|[0-1]\d):[0-5]\d:[0-5]\d$/;


</script>
</head>

<body>
<form action="${pageContext.request.contextPath}/insert.action" method="post" onsubmit="return checkForm()">
<div class="wrap">

  <!-- main begin-->
  <div class="sale">
    <h1 class="lf">在线拍卖系统</h1>
    <div class="logout right"><a href="#" title="注销">注销</a></div>
  </div>
      <div class="login logns produce">
        <h1 class="blues">拍卖品信息</h1>
          <dl>
            <dd>
              <label>名称：</label>
              <input type="text" class="inputh lf" value="" name="auction_name" id="name" onblur="checkName()"/>
              <div class="xzkbg spbg lf"></div>
              <span id="aname" style='color:red'></span>
            </dd>
            <dd>
              <label>起拍价：</label>
              <input type="text" class="inputh lf" value=""  name="auction_start_price" id="price" onblur="checkPrice()"/>
              <div class="lf red laba">必须为数字</div>
              <span id="aprice" style='color:red'></span>
            </dd>
            <dd>
              <label>底价：</label>
              <input type="text" class="inputh lf" value=""  name="auction_upset" id="up" onblur="checkUp()"/>
              <div class="lf red laba">必须为数字</div>
              <span id="aup" style='color:red'></span>
            </dd>
            <dd>
              <label>开始时间：</label>
              <input type="text" class="inputh lf" value=""  name="auction_start_time"/>
              <div class="lf red laba">格式：2010/05/05 12:30:00</div>
            </dd>
            <dd>
              <label>结束时间：</label>
              <input type="text" class="inputh lf" value=""  name="auction_end_time"/>
              <div class="lf red laba">格式：2010/05/06 16:30:00</div>
            </dd>
            <dd class="dds">
              <label>拍卖品图片：</label>
               <div class="lf salebd"><a href="#"><img src="images/ad20.jpg" width="100" height="100" /></a></div>
              <input name="" type="file" class="offset10 lf" />
             
            </dd>
             <dd class="dds">
              <label>描述：</label>
              <textarea name="auction_desc" cols="" rows="" class="textarea"></textarea>
            </dd>
            <dd class="hegas">
                <input name="" type="submit" value="保 存" class="spbg buttombg buttombgs buttomb f14 lf" />
                <input name="" type="submit" value="取 消" class="spbg buttombg buttombgs buttomb f14 lf" />
            </dd>
          </dl>
    </div>
<!-- main end-->
<!-- footer begin-->

</div>
 <!--footer end-->
 
</div>
</form>
</body>
</html>
