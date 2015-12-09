<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>

<s:debug/>
<html>
<head>
<meta charset="UTF-8">
<title>LaoJiang</title>
<link type="text/css" rel="stylesheet" href="/LaoJiang/css/style.css" />
<script type="text/javascript" src="/js/jquery-1.11.2.js"></script>
<script src="//tinymce.cachefly.net/4.2/tinymce.min.js"></script>
<script type="text/javascript">
        tinymce.init({
            selector: "#mytextarea"
        });
</script>
</head>

<body>
<s:if test="#session.username=='jiangnan'">
	<a href="/LaoJiang/mypage/login_logout">Logout</a>
	<div id="main">
		<div id="header">
			<div id="logo">
				<h1>LAO JIANG</h1>
			</div>
		</div>	
		<div id="content" class="content">		
				<!-- 写文章 -->
				<form action="/LaoJiang/myarticle/myArticle_add" method="post" >
					<div><label for="title">TITLE:</label>
					<input type="text" name="article.title"></div>
					<textarea name="article.content"  id="mytextarea" ></textarea>
					<input type="submit" value="上传文章">
				</form>							
				<!-- 读文章  -->
				<form action="/LaoJiang/myarticle/myArticle_findAllOrderByDate" method="post" data-ajax="false">
					<input type="submit" value="所有文章列表">
				</form>				
				<form action="/LaoJiang/myarticle/myArticle_findByPageOrderByDate" method="post" data-ajax="false">
					<label>page:</label>
					<input type="text" name="pageNo" >
					<input type="submit" value="分页文章列表">
				</form>
		</div>
	</div>
</s:if>
<s:else>
	<a href="/LaoJiang/mypage/login_logout">Please login.</a>
</s:else>
</body>
</html>