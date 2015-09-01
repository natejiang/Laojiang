<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>LAO JIANG'S BLOG</title>
<link type="text/css" rel="stylesheet" href="/LaoJiang/css/style.css" />
</head>
<body>
<div id="header">
			<div id="logo">
				<a href="/LaoJiang/page?page=home">HOME</a>
				<h1>LAO JIANG'S BLOG</h1>
			</div>
</div>
<div id="blog" class="blog">
	<!-- 使用Struts标签 -->
	<s:iterator value="#session.articles" id="articles">	
			<div><h2><s:property value="title"/></h2></div>
			<div><s:property value="date"/>&nbsp;<s:property value="time"/></div>
			<div><s:property value="content" escape="false"/></div>
			<div><a href="myArticle_deleteById?id=<s:property value="id"/>" onclick="javascript: return confirm('真的要删除吗？');">Delete</a></div>
	</s:iterator>
</div>
</body>
</html>