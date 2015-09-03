<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>LaoJiang</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="/LaoJiang/css/style1.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="/LaoJiang/js/cufon-yui.js"></script>
<script type="text/javascript" src="/LaoJiang/js/arial.js"></script>
<script type="text/javascript" src="/LaoJiang/js/cuf_run.js"></script>
<!-- CuFon ends -->
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="/LaoJiang/mypage/page?page=home">Lao<span> Jiang</span></a><small>Life Study and Work</small></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="/LaoJiang/mypage/page?page=home">Home</a></li>
          <li><a href="#">Support</a></li>
          <li><a href="#">About Us</a></li>
          <li class="active"><a href="#">Blog</a></li>
          <li><a href="#">Contact Us</a></li>
        </ul>
       <div class="search">
        <form id="form" name="form" method="post" action="">
          <span>
          <input name="q" type="text" class="keywords" id="textfield" maxlength="50" value="Search..." />
          
          <input name="b" type="image" src="/LaoJiang/images/search.gif" class="button" />
          </span>
        </form>
      </div>
      <!--/search -->
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="clr"></div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
        
        <s:iterator value="#session.articles" id="articles">	
          <h2><span><s:property value="title" escape="false" /></span></h2><div class="clr"></div>
          <p>Posted by <a href="#">LaoJiang</a>  <span>&nbsp;&bull;&nbsp;</span>  Filed under  <a href="#">blog</a></p>
          <p><s:property value="content" escape="false"/></p>
          <p>Tagged: <a href="#">orci</a></p>
          <p><a href="#"><strong>Comments (0)</strong></a>  <span>&nbsp;&bull;&nbsp;</span>  <s:property value="date"/>&nbsp;<s:property value="time"/>  <span>&nbsp;&bull;&nbsp;</span>  <a href="#"><strong>Edit</strong></a></p>        
     	  <s:if test="#session.username=='jiangnan'">
     	  <p><a href="myArticle_deleteById?id=<s:property value="id"/>" onclick="javascript: return confirm('真的要删除吗？');">Delete</a></p>
    	  </s:if>
        </s:iterator>
        
        </div> 
        
        <!--  
        <div class="article">
          <h2><span>3</span> Responses</h2><div class="clr"></div>
          <div class="comment">
            <a href="#"><img src="/LaoJiang/images/userpic.gif" width="40" height="40" alt="user" class="userpic" /></a>
            <p><a href="#">admin</a> Says:<br />April 20th, 2009 at 2:17 pm</p>
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec libero. Suspendisse bibendum.</p>
          </div>
          <div class="comment">
            <a href="#"><img src="/LaoJiang/images/userpic.gif" width="40" height="40" alt="user" class="userpic" /></a>
            <p><a href="#">Owner</a> Says:<br />April 20th, 2009 at 3:21 pm</p>
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec libero. Suspendisse bibendum. Cras id urna. Morbi tincidunt, orci ac convallis aliquam, lectus turpis varius lorem, eu posuere nunc justo tempus leo.</p>
          </div>
          <div class="comment">
            <a href="#"><img src="/LaoJiang/images/userpic.gif" width="40" height="40" alt="user" class="userpic" /></a>
            <p><a href="#">admin</a> Says:<br />April 20th, 2009 at 2:17 pm</p>
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec libero. Suspendisse bibendum.</p>
          </div>
        </div>

        <div class="article">
          <h2><span>Leave a</span> Reply</h2><div class="clr"></div>
          <form action="#" method="post" id="leavereply">
          <ol><li>
            <label for="name">Name (required)</label>
            <input id="name" name="name" class="text" />
          </li><li>
            <label for="email">Email Address (required)</label>
            <input id="email" name="email" class="text" />
          </li><li>
            <label for="website">Website</label>
            <input id="website" name="website" class="text" />
          </li><li>
            <label for="message">Your Message</label>
            <textarea id="message" name="message" rows="8" cols="50"></textarea>
          </li><li>
            <input type="image" name="imageField" id="imageField" src="/LaoJiang/images/submit.gif" class="send" />
            <div class="clr"></div>
          </li></ol>
          </form>
        </div>
         -->
        
      </div>
      
      <div class="sidebar">
        <div class="gadget">
          <h2>Sidebar Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="/LaoJiang/page?page=home">Home</a></li>
            <li><a href="#">Support</a></li>
            <li><a href="#">About Us</a></li>
            <li><a href="#">Blog</a></li>
            <li><a href="#">Contacts Us</a></li>
            <li><a href="#" title="Website Templates">Web Templates</a></li>
          </ul>
        </div>
        <div class="gadget">
          <h2><span>Sponsors</span></h2>
          <div class="clr"></div>
          <ul class="ex_menu">
            <li><a href="#" title="Website Templates">DreamTemplate</a><br />
              Over 6,000+ Premium Web Templates</li>
            <li><a href="http://www.templatesold.com" title="WordPress Themes">TemplateSOLD</a><br />
              Premium WordPress &amp; Joomla Themes</li>
            <li><a href="#" title="Affordable Hosting">ImHosted.com</a><br />
              Affordable Web Hosting Provider</li>
            <li><a href="#" title="Stock Icons">MyVectorStore</a><br />
              Royalty Free Stock Icons</li>
            <li><a href="#" title="Website Builder">Evrsoft</a><br />
              Website Builder Software &amp; Tools</li>
            <li><a href="#" title="CSS Templates">CSS Hub</a><br />
              Premium CSS Templates</li>
          </ul>
        </div>
        <div class="gadget">
          <h2>Wise Words</h2>
          <div class="clr"></div>
          <p>   <img src="LaoJiang/images/test_1.gif" alt="image" width="20" height="18" /> <em>We can let circumstances rule us, or we can take charge and rule our lives from within </em>.<img src="LaoJiang/images/test_2.gif" alt="image" width="20" height="18" /></p>
          <p style="float:right;"><strong>Earl Nightingale</strong></p>
          </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image Gallery</span></h2>
        <a href="#"><img src="/LaoJiang/images/gallery_1.jpg" width="58" height="58" alt="pix" /></a> <a href="#"><img src="/LaoJiang/images/gallery_2.jpg" width="58" height="58" alt="pix" /></a> <a href="#"><img src="/LaoJiang/images/gallery_3.jpg" width="58" height="58" alt="pix" /></a> <a href="#"><img src="/LaoJiang/images/gallery_4.jpg" width="58" height="58" alt="pix" /></a> <a href="#"><img src="/LaoJiang/images/gallery_5.jpg" width="58" height="58" alt="pix" /></a> <a href="#"><img src="/LaoJiang/images/gallery_6.jpg" width="58" height="58" alt="pix" /></a> </div>
      <div class="col c2">
        <h2><span>Lorem Ipsum</span></h2>
        <p>Lorem ipsum dolor<br />
          Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec libero. Suspendisse bibendum. Cras id urna. Morbi tincidunt, orci ac convallis aliquam, lectus turpis varius lorem, eu posuere nunc justo tempus leo. Donec mattis, purus nec placerat bibendum, dui pede condimentum odio, ac blandit ante orci ut diam.</p>
      </div>
      <div class="col c3">
        <h2><span>Contact</span></h2>
        <p><a href="#">jiangnan@cttbj.com</a><br />
          <a href="#">+()86)13911207566</a></p>
      </div>
      <div class="clr"></div>
    </div>
    <div class="footer">
      <p class="lr"></p>
    </div>
  </div>    
 </div>
 </body>
 </html>
