<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="javax.servlet.http.HttpSession"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"> </script>

<script type="text/javascript">
		
		function checkForm(){
			var aucprice=$("#auctionPrice").html();
			var price=$("#sale").val();//获取到输入的竞拍价钱
			if(parseFloat(aucprice)>=parseFloat(price)){
				
				alert("不能低于最高竞拍价");
				return false;
			}else{
				return true;
			};
		};
		
		
		
		
	</script>


</head>

<body>
<div class="wrap">
<!-- main begin-->
  <div class="sale">
    <h1 class="lf">在线拍卖系统</h1>
    <div class="logout right"><a href="#" title="注销">注销</a></div>
  </div>
  <div class="items sg-font lf">
      <ul class="rows">
        <li>名称：</li>
        <li class="borderno">${product.auction_name}</li>
      </ul>
      <ul class="rows">
        <li>描述：</li>
        <li class="borderno">${product.auction_desc}</li>
      </ul>
      <ul class="rows">
        <li>开始时间：</li>
        <li class="borderno"><fmt:formatDate value="${product.auction_start_time}" pattern="yyyy-MM-dd"/></li>
      </ul>
      <ul class="rows">
        <li>结束时间：</li>
        <li class="borderno"><fmt:formatDate value="${product.auction_end_time}" pattern="yyyy-MM-dd"/></li>
      </ul>
      <ul class="rows border-no">
        <li>起拍价：</li>
        <li class="borderno">${product.auction_upset}</li>
      </ul>
  </div>
  <div class="rg borders"><img src="images/ad20.jpg" width="270" height="185" alt="" /></div>
  <div class="cl"></div>
  <div class="top10 salebd">
  <form action="${pageContext.request.contextPath}/getinsert.action" method="post">
       <p>
       <label for="sale">出价：</label>
        <input type="hidden" name="user_id" value="${sessionScope.user.user_id}"/>
       <input type="hidden"  name="auction_id" value="${requestScope.product.auction_id}"/>
       <input type="text" name="auction_price"  class="inputwd" id="sale" value=""/>
       <input name="" type="submit" value="竞 拍" class="spbg buttombg f14  sale-buttom" />
       </p>
       <p class="f14 red">不能低于最高竞拍价</p>
       </form>
  </div>
  <div class="top10">
   <input name="" type="submit" value="刷 新" class="spbg buttombg f14" />
    <input name="" type="submit" value="返回列表" class="spbg buttombg f14" />
  </div>
  <div class="offer">
    <h3>出价记录</h3>
    <div class="items sg-font">
      <ul class="rows even strong">
        <li>竞拍时间</li>
        <li>竞拍价格</li>
        <li class="borderno">竞拍人</li>
      </ul>
    <c:forEach items="${requestScope.auction}" var="a">
	      <ul class="rows">
	        <li>
	        	<fmt:formatDate value="${a.auction_time}" pattern="yyyy-MM-dd"/>
	        </li>
	        <li>
	       	 	${a.auction_price}
	        </li>
	        <li class="borderno">${a.user_name}</li>
	      </ul>
	</c:forEach>  
   
  </div>
  </div>
<!-- main end-->
</div>
</body>
</html>
