<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"> </script>
<script type="text/javascript">
function abc(id){
	   
	   if(confirm("你真的确认要修改吗？请确认")){
		   window.location="selectOne.action?id="+id;
		   return true;
		 }
		 else{
			 return false;
			 }
			 
	   };
	   function dele(id){
		   if(confirm("你真的确认要删除吗？请确认")){
			   window.location="delete.action?id="+id;
			   return true;
			   }
			   else{
				   return false;
				   }
		   }



</script>
</head>

<body>
<div class="wrap">
<!-- main begin-->
  <div class="sale">
    <h1 class="lf">在线拍卖系统</h1>
    <div class="logout right"><a href="#" title="注销">注销</a></div>
  </div>
  <form action="${pageContext.request.contextPath}/search.action" method="post">
  <div class="forms">
    <label for="name">名称</label>
    <input name="auction_name" type="text" class="nwinput" id="name"/>
    <label for="names">描述</label>
    <input name="auction_desc" type="text" id="names" class="nwinput"/>
    <label for="time">开始时间</label>
    <input name="auction_start_time" type="text" id="time" class="nwinput"/>
    <label for="end-time">结束时间</label>
    <input name="auction_end_time" type="text" id="end-time" class="nwinput" />
    <label for="price">起拍价</label>
    <input name="auction_start_price" type="text" id="price" class="nwinput" />
    <input name="" type="submit"  value="查询" class="spbg buttombg f14  sale-buttom"/>
    <a href="${pageContext.request.contextPath}/add.jsp"><input type="button"  value="发布" class="spbg buttombg f14  sale-buttom buttomb"/></a>
  </div>
  </form>
  <div class="items">
      <ul class="rows even strong">
        <li>名称</li>
        <li class="list-wd">描述</li>
        <li>开始时间</li>
        <li>结束时间</li>
        <li>起拍价</li>
        <li class="borderno">操作</li>
      </ul>
      
     <c:forEach var="h" items="${requestScope.list}">
      <ul class="rows">
       <li><a href="国书" title="">${h.auction_name}</a></li>
        <li class="list-wd">${h.auction_desc}</li>
       
       <li><fmt:formatDate value="${h.auction_start_time}" pattern="yyyy-MM-dd"/></li>
       <li> <fmt:formatDate value="${h.auction_end_time}" pattern="yyyy-MM-dd"/></li>
       <li>${h.auction_upset}</li>
       
       <li class="borderno red">
        <c:if test="${sessionScope.user.user_is_admin==0}">
           <a href="${pageContext.request.contextPath}/selectAuction.action?auction_id=${h.auction_id}">竞拍</a>
        </c:if>
        <c:if test="${sessionScope.user.user_is_admin==1}">
		  <a href="${pageContext.request.contextPath}/selectOnee.action?id=${h.auction_id}" title="修改" onclick="abc();">修改</a>|
          <a href="${pageContext.request.contextPath}/delete.action?id=${h.auction_id}" title="删除" onclick="dele();">删除</a>
        </c:if>
        </li>
      </ul>
      </c:forEach>
     
  </div>
  <script>
   function abc(){
	   
	   if(confirm("你真的确认要删除吗？请确认")){
	    
		   return true;
		 }
		 else{
			 return false;
			 }
			 
	   };
	   function dele(){
		   if(confirm("你真的确认要修改吗？请确认")){
			   return true;
			   }
			   else{
				   return false;
				   }
		   }
  </script>
<!-- main end-->
</div>
</body>
</html>
