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
	<h3 class="quick-launch" ><A href="#"><span>����ͨ��</span></A></h3>
	<ul class="fix">
		<@menuitem url="/account/uncommitted" title="���ύ����" />
		<@menuitem url="/account/individualOpen" title="�����˺ſ����Ǽ�" />
		<@menuitem url="/trade/buy" title="�����깺" />
		<@menuitem url="/trade/redeem" title="�������" />
		<@menuitem url="/trade/convert" title="����ת��" />
		<@menuitem url="/capital/deposit" title="�ʽ����" />
		<@menuitem url="/querySystem/common/querySystem" title="��ѯϵͳ"   target="_blank"/>
	</ul>
	
	<h3 class="account"><A href="#"><span>�ճ��˻�����</span></a></h3>
	<ul>
		<@menuitem url="/account/individualOpen" title="�����˺ſ����Ǽ�" />
		<@menuitem url="/account/institutionOpen" title="�����˺ſ����Ǽ�" />
		<@menuitem url="/account/taAccountApply" title="��������TA�����˺�" />
        <@menuitem url="/account/identityEdit" title="�ͻ������Ϣ�޸�" />
		<@menuitem url="/account/individualEdit" title="���������޸�" />
		<@menuitem url="/account/institutionEdit" title="���������޸�" />
        <@menuitem url="/account/currentAccountEdit" title="��̨���������޸�" />
        <@menuitem url="/account/currentAccountForNetEdit" title="�������������޸�"/>
        <@menuitem url="/account/authorityAccountEdit" title="��Ȩ�޸�������������" />
        <@menuitem url="/account/counterChannelOpen" title="��ͨ��̨���׷�ʽ" />
		<@menuitem url="/account/internetChannelOpen" title="��ͨ���Ͻ��׷�ʽ" />
        <@menuitem url="/account/tradeAccountClose" title="�����˻�����" />
        <@menuitem url="/account/taAccountClose" title="�����˻�����" />        
		<@menuitem url="/account/questionnaire/individualQuestionnaire" title="�����ʾ����" />
		<@menuitem url="/account/questionnaire/institutionQuestionnaire" title="�����ʾ����" />
	</ul>
	
	<h3 class="special-account"><A href="#"><span>�����˻�����</span></a></h3>
	<ul>
		<@menuitem url="/account/passwordReset" title="������������" />
		<@menuitem url="/account/passwordUpdate" title="���������޸�" />
		<@menuitem url="/account/unlock" title="�����˺Ž���" />
	</ul>
	
	<h3 class="trade"><A href="#"><span>�ճ�����</span></a></h3>
	<ul>
		<@menuitem url="/trade/buy" title="�����깺" />
		<@menuitem url="/trade/subscribe" title="�����Ϲ�" />
		<@menuitem url="/trade/redeem" title="�������" />
		<@menuitem url="/capital/deposit" title="�ʽ����" />
		<@menuitem url="/trade/specialRedeem" title="����ָ�����" />
		<@menuitem url="/trade/convert" title="����ת��" />
	</ul>

	<h3 class="special-trade"><A href="#"><span>���⽻��</span></a></h3>
	<ul>
		<@menuitem url="/trade/trusteeIn" title="ת�й���" />
		<@menuitem url="/trade/outTrustee" title="�ⲿת�й�" />
		<@menuitem url="/trade/trusteeOut" title="ת�йܳ�" />
		<@menuitem url="/trade/specialTrusteeOut" title="ָ������ת�йܳ�" />
		<@menuitem url="/trade/dividend" title="���÷ֺ췽ʽ" />
		<@menuitem url="/trade/withdraw" title="��������������" />
		<@menuitem url="/trade/institutionUnopenTrade" title="������Ҫ�����깺" />
	</ul>

	<h3 class="print"><A href="#"><span>��ӡ����</span></a></h3>
	<ul>
		<@menuitem url="/print/receiptLetter" title="����ƾ֤" />
		<@menuitem url="/print/batchConfirm" title="ȷ�ϵ���ӡ" />
		<@menuitem url="/print/dailyCheck" title="�ս�" />
		<@menuitem url="/print/generateData" title="����ȷ������" />
		<li>&gt;
			<a href="${ctx}/static/image/rule.pdf" title="�ͻ���֪��ӡ" target=_blank>�ͻ���֪��ӡ</a>
		</li>
	</ul>
	
	<h3 class="system"><A href="#"><span>ϵͳ����</span></a></h3>
	<ul>
		<@menuitem url="/logout" title="ע���û�" />
	</ul>
</div>
