<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<title>我的日程</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="${baseUrlStatic}/js/plugin/xgcalendar/css/main.css">
		<link rel="stylesheet" href="${baseUrlStatic}/js/plugin/xgcalendar/css/plugin/minical.css">
		<link rel="stylesheet" href="${baseUrlStatic}/js/plugin/xgcalendar/css/plugin/calendar.css">
		<link rel="stylesheet" href="${baseUrlStatic}/js/plugin/xgcalendar/css/plugin/dailog.css">
	</head>
	<body>
		<div id="mainpanel">
			<div id="toppanel">
				<div id="loadingpannel">
					正在加载数据...
				</div>
				<div id="errorpannel">
					非常抱歉，无法加载您的活动，请稍后再试
				</div>
				<p class="logo">
					我的日程
				</p>
				<div class="calbtnp1">
					<button id="todaybtn" type="button" class="btn">
						今天
					</button>
					<div class="btngroup">
						<span id="prevbtn" type="button" class="btn prevbtn"><em></em>
						</span>
						<span id="nextbtn" type="button" class="btn nextbtn"><em></em>
						</span>
					</div>
					<div id="dateshow"></div>
				</div>
				<div class="calbtnp3">
					<div>
						<a id="langch" href="?lang=zh-cn">中文</a>
						<span>|</span>
						<a id="langen" href="?lang=en-us">English</a>
					</div>
				</div>
				<div class="calbtnp2">
					<div id="viewswithbtn" class="btngroup">
						<button id="daybtn" type="button" class="btn">
							日
						</button>
						<button id="weekbtn" type="button" class="btn current">
							周
						</button>
						<button id="monthbtn" type="button" class="btn">
							月
						</button>
					</div>
				</div>
			</div>
			<div id="body">
				<div id="leftpanel">
<!-- 					<div class="addbtnp"> -->
<!-- 						<button id="addcalbtn" class="btn btn-danger" type="button"> 新建 </button> -->
<!-- 					</div> -->
					<div id="minical" class="minical">
					</div>
				</div>
				<div id="rightpanel">
					<div id="xgcalendarp">
					</div>
				</div>
			</div>
		</div>
		<script src="${baseUrlStatic}/js/plugin/xgcalendar/locales/zh-cn.js" type="text/javascript"></script>  
		<script src="${baseUrlStatic}/js/plugin/xgcalendar/sea.js" type="text/javascript"></script>
		<script src="${baseUrlStatic}/js/plugin/xgcalendar/seaconfig.js" type="text/javascript"></script>
		<script type="text/javascript">
            var loadingmsg = '正在加载数据...';
            var sucessmsg = '操作成功!';
            var processdatamsg = '正在处理请求...';
            seajs.use('page/index', function(app) {
                app.init();
            });
        </script>
	</body>

</html>
