<script type="text/javascript">
	function passwordUpdate(){
		linkTo("${ctx}/security/passwordUpdateForOperator");
	}
	
	function logout(){
		if(confirm("��ȷ��Ҫע���û�?")){
			linkTo("${ctx}/logout");
		}
	}
	
	function exit(){
		if(confirm("��ȷ��Ҫ�˳�ϵͳ?")){
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
			<span>��ӭ����${(OPERATOR.stationName)!} ${(OPERATOR.userName)!}</span>
			<a href="#" class="resetPassword" onclick="passwordUpdate();return false;">����</a>
			<a href="#" class="logout" onclick="logout();return false;">ע��</a>
			<a href="#" class="exit" onclick="exit();return false;">�˳�</a>&nbsp;&nbsp;
		</div>
	</#if>
	</div>
</div>
<noscript>
	<div style="font-size:16px;color:red;margin:5px 5px 5px 5px;text-align:center;">
		����������ر��� JavaScript �ű������������� JavaScript �ű�֧�ֹ��ܣ�����ϵͳ�޷����С�
	</div>
</noscript>
