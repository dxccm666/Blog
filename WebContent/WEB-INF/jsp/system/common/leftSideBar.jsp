<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/taglibs.jsp"%>
<c:if test="${!empty sysUser}">
</c:if>
<div class="col-lg-2">
	<div class="account-container">
		<div class="account-avatar">
			<img src="${baseUrlStatic}/img/headshot.png" alt="user icon" class="thumbnail" />
		</div> <!-- /account-avatar -->
	
		<div class="account-details">
		
			<span class="account-name">${sysUser.userName}</span>
			
			<span class="account-role">系统管理员</span>
			
			<span class="account-actions">
				<a href="javascript:;">Profile</a> |
				
				<a href="javascript:;">Edit Settings</a>
			</span>
		
		</div> <!-- /account-details -->
	
	</div> <!-- /account-container -->
	
	<hr />
	
	<ul id="main-nav" class="nav nav-tabs nav-stacked">
		<li class="active"><a href="/system/article" target="mainframe"><i class="icon-home"></i>文章管理</a></li>
		<li class="article"><a href="/user/home/siteMapFile" target="mainframe"><i class="icon-th-list"></i>生成sitemap文件</a></li>
		<li class="article"><a href="/system/calendar" target="mainframe"><i class="icon-th-large"></i>calendar<span class="label label-warning pull-right">5</span></a></li>
		<li class="article"><a href="http://api.map.baidu.com/geocoder/v2/?ak=jYhgnR8SGKs48TIQQU9P7LFO&callback=renderOption&output=json&address=百度大厦&city=北京市" target="mainframe"><i class="icon-signal"></i>地图</a></li>
		<li class="article"><a href="/system/map" target="mainframe"><i class="icon-user"></i>地图test</a></li>
		<li class="article"><a href="/system/test" target="mainframe"><i class="icon-user"></i>图片导航</a></li>
		<li class="article"><a href="/system/test/getHashEncryptPage" target="mainframe"><i class="icon-lock"></i>哈希加密算法</a></li>
		<li class="article"><a href="/demo/upload" target="mainframe"><i class="icon-lock"></i>上传图片演示</a></li>
	</ul>	
	
	<hr />
	
	<div class="sidebar-extra">
		<p></p>
	</div> <!-- .sidebar-extra -->
	
	<br />

</div> <!-- /col-lg-2 -->
