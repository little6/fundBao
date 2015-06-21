<script language="javascript">
	$(function(){
		$(".menu h3").each(function(i, e){
			$(e).click(function(){
				hideMenu();
				$(this).next().show("fast");
			});
		});
		hideMenu();
		$(".menu ul li.selected").parent().show();
	})
	function hideMenu(){
		$(".menu ul").each(function(i, e){
			$(e).hide();
		});
		//$(".menu ul.fix").show();
	}
</script>
<div class="menu">
	<h3 class="quick-launch" ><A href="#"><span>快速通道</span></A></h3>
	<ul class="fix">
		<@menuitem url="/account/uncommitted" title="待提交单据" />
		<@menuitem url="/account/individualOpen" title="个人账号开户登记" />
		<@menuitem url="/trade/buy" title="基金申购" />
		<@menuitem url="/trade/redeem" title="基金赎回" />
		<@menuitem url="/trade/convert" title="基金转换" />
		<@menuitem url="/capital/deposit" title="资金存入" />
		<@menuitem url="/querySystem/common/querySystem" title="查询系统"   target="_blank"/>
	</ul>
	
	<h3 class="account"><A href="#"><span>日常账户管理</span></a></h3>
	<ul>
		<@menuitem url="/account/individualOpen" title="个人账号开户登记" />
		<@menuitem url="/account/institutionOpen" title="机构账号开户登记" />
		<@menuitem url="/account/taAccountApply" title="增开其他TA基金账号" />
        <@menuitem url="/account/identityEdit" title="客户身份信息修改" />
		<@menuitem url="/account/individualEdit" title="个人资料修改" />
		<@menuitem url="/account/institutionEdit" title="机构资料修改" />
        <@menuitem url="/account/currentAccountEdit" title="柜台银行资料修改" />
        <@menuitem url="/account/currentAccountForNetEdit" title="网上银行资料修改"/>
        <@menuitem url="/account/authorityAccountEdit" title="授权修改网上银行资料" />
        <@menuitem url="/account/counterChannelOpen" title="开通柜台交易方式" />
		<@menuitem url="/account/internetChannelOpen" title="开通网上交易方式" />
        <@menuitem url="/account/tradeAccountClose" title="交易账户销户" />
        <@menuitem url="/account/taAccountClose" title="基金账户销户" />        
		<@menuitem url="/account/questionnaire/individualQuestionnaire" title="个人问卷调查" />
		<@menuitem url="/account/questionnaire/institutionQuestionnaire" title="机构问卷调查" />
	</ul>
	
	<h3 class="special-account"><A href="#"><span>特殊账户管理</span></a></h3>
	<ul>
		<@menuitem url="/account/passwordReset" title="交易密码清密" />
		<@menuitem url="/account/passwordUpdate" title="交易密码修改" />
		<@menuitem url="/account/unlock" title="交易账号解锁" />
	</ul>
	
	<h3 class="trade"><A href="#"><span>日常交易</span></a></h3>
	<ul>
		<@menuitem url="/trade/buy" title="基金申购" />
		<@menuitem url="/trade/subscribe" title="基金认购" />
		<@menuitem url="/trade/redeem" title="基金赎回" />
		<@menuitem url="/capital/deposit" title="资金存入" />
		<@menuitem url="/trade/specialRedeem" title="基金指定赎回" />
		<@menuitem url="/trade/convert" title="基金转换" />
	</ul>

	<h3 class="special-trade"><A href="#"><span>特殊交易</span></a></h3>
	<ul>
		<@menuitem url="/trade/trusteeIn" title="转托管入" />
		<@menuitem url="/trade/outTrustee" title="外部转托管" />
		<@menuitem url="/trade/trusteeOut" title="转托管出" />
		<@menuitem url="/trade/specialTrusteeOut" title="指定渠道转托管出" />
		<@menuitem url="/trade/dividend" title="设置分红方式" />
		<@menuitem url="/trade/withdraw" title="撤消交易类申请" />
		<@menuitem url="/trade/institutionUnopenTrade" title="机构三要素认申购" />
	</ul>

	<h3 class="print"><A href="#"><span>打印管理</span></a></h3>
	<ul>
		<@menuitem url="/print/receiptLetter" title="补打凭证" />
		<@menuitem url="/print/batchConfirm" title="确认单打印" />
		<@menuitem url="/print/dailyCheck" title="日结" />
		<@menuitem url="/print/generateData" title="生成确认数据" />
		<li>&gt;
			<a href="${ctx}/static/image/rule.pdf" title="客户须知打印" target=_blank>客户须知打印</a>
		</li>
	</ul>
	
	<h3 class="system"><A href="#"><span>系统功能</span></a></h3>
	<ul>
		<@menuitem url="/logout" title="注销用户" />
	</ul>
</div>
