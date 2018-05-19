<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'list.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <script type="text/javascript" src="<%=path %>/js/jquery-1.8.3.min.js"></script>
  </head>
  <script type="text/javascript">
  var arr = [1,2,3,4];
  var newArr = arr.map(function(item){
  	return item*2;
  });
  console.log(newArr);
  var arp = [1,2,3,4];
  var newArp = arp.filter(function(item){
  	if(item%2===0){
  		return item;
  	}
  });
  console.log(newArp);
  </script>
  <body>
    <table border="2" align="center">
    	<tr>
    		<th>ID</th>
    		<th>用户名</th>
    		<th>密码</th>
    		<th>年龄</th>
    	</tr>
    	<c:forEach items="${requestScope.userList}" var="user">
    	<tr>
    		<td>${user.userid}</td>
    		<td>${user.username}</td>
    		<td>${user.password}</td>
    		<td>${user.age}</td>
    	</tr> 
    	</c:forEach>
    </table>
  </body>
</html>
