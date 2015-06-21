<script type="text/javascript">
	function passwordUpdate(){
		linkTo("${ctx}/security/passwordUpdateForOperator");
	}
	
	function logout(){
		if(confirm("您确定要注销用户?")){
			linkTo("${ctx}/logout");
		}
	}
	
	function exit(){
		if(confirm("您确定要退出系统?")){
			linkTo("${ctx}/logout");
		}
	}
</script>
<div id="header">
	<div class="banner">
		<h1>
			<a href="${ctx}"><img src="${ctx}/static/image/logo_8_c.png" /></a>
		</h1>
	<#if OPERATOR??>
		<div class="txt">
			<span>欢迎您，${(OPERATOR.stationName)!} ${(OPERATOR.userName)!}</span>
			<a href="#" class="resetPassword" onclick="passwordUpdate();return false;">改密</a>
			<a href="#" class="logout" onclick="logout();return false;">注销</a>
			<a href="#" class="exit" onclick="exit();return false;">退出</a>&nbsp;&nbsp;
		</div>
	</#if>
	</div>
</div>
<noscript>
	<div style="font-size:16px;color:red;margin:5px 5px 5px 5px;text-align:center;">
		您的浏览器关闭了 JavaScript 脚本！请打开浏览器的 JavaScript 脚本支持功能，否则系统无法运行。
	</div>
</noscript>
