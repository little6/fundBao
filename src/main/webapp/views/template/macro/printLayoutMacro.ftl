<#global ctx=springMacroRequestContext.getContextPath()/>
<#macro body title height=930 bottom=5>
	<div class="container" style="height:${height}px;">
		<#nested>
		<div class="autoHeight"></div>
		<div class="pageBottom" style="bottom:${bottom}px">
			<div class="smallword">
				<span>电话: ${station.telephoneNo} </span>
				<span>传真: ${station.faxNo} </span>
			</div>
			<div class="smallword" >
				<span>理财中心地址：${station.address}（${station.postcode}）</span>
			</div>
		</div>
	</div>
</#macro>
<#macro receipt title height=930 bottom=5>
	<div class="receipt" style="height:${height}px;">
		<#nested>
		<div class="autoHeight"></div>
		<div class="pageBottom" style="bottom:${bottom}px">
			<div class="smallword">
				<span>电话: ${station.telephoneNo} </span>
				<span>传真: ${station.faxNo} </span>
			</div>
			<div class="smallword" >
				<span>理财中心地址：${station.address}（${station.postcode}）</span>
			</div>
		</div>
	</div>
</#macro>
<#macro left>
	<div class="printLeft">
		<#nested >
	</div>
</#macro>
<#macro right>
<div class="printRight">
	<div class="verticalWord" >${page}</p>
	</div>
</div>
</#macro>
<#macro logo title>
	<div class="logo">
		<div style="float:left"><img src="${ctx}/static/image/logonew.png" ></div>
		<div class="firstTitle">${title}</div>
		<div style="clear:both;"></div>
	</div>
</#macro>
<#macro relogo title>
	<div >
		<div style="float:left"><img src="${ctx}/static/image/logonew.png" ></div>
		<div class="firstTitle">${title}</div>
		<div style="clear:both;"></div>
	</div>
</#macro>
<#macro head postCode="" address="" name="">
	<div class="head" >
		<div class="head-row-height">
		<p><label>邮编：</label><span>${(postCode)!}</span></p>
		</div>
		<div class="head-row-height">
		<p><label>地址：</label><span>${(address)!}</span></p>
		</div>
		<p><label>名称：</label><span>${(name)!}</span></p>
	</div>
</#macro>
<#macro title >
	<div class="receiptTitle">
		<#nested>
	</div>
</#macro>
<#macro content>
	<div class="content">
		<#nested>
	</div>
</#macro>
<#macro item title>
	<div class="item">
		<div class="title">${title}</div>
		<#nested>
	</div>
</#macro>
<#macro row>
	<div class="row">
		<#nested>
	</div>
	<div class="autoHeight"></div>
</#macro>
<#macro columnOne title width=80>
	<div class="columnOne">
		<label>${title}： </label>
		<div style="width:${540-(width)!}px;"><span class="line_space"></span><#nested></div>
	</div>
</#macro>
<#macro column title  width=80 >
	<div class="column">
		<label >${title}：</label>
		<div style="width:${270-(width)!}px;"><span class="line_space"></span><#nested></div>
	</div>
</#macro>
<#macro p_normal >
	<p class="normal_row"><#nested></p>
</#macro>
<#macro p_bottom>
	<p class="bottom_row"><#nested></p>
	<p/>
</#macro>
<#macro foot>
	<div class="foot">
		<p class="wordright">华夏基金管理有限公司   ${station.name}</p>
		<p class="stamp">盖章 </p>
		<p class="stamp"></p>
		<p class="stamp">经办人签章： </p>
	</div>
</#macro>
<#macro confirmFoot>
	<div class="foot">
		<p class="wordright">华夏基金管理有限公司   ${station.name}</p>
		<p class="stamp">盖章 </p>
	</div>
</#macro>
<#macro sign businessTime authorize=false>
	<div class="item">
		<div class="title">签名项</div>
		<#if !authorize>
		<div class="row"><div class="columnOne"><label style="width:60px;">兹申明： </label><div style="width:480px;"></div></div></div>
		<div class="row">上述填写内容正确无误。</div>
		<div class="empty_row"></div>
		<div class="row">
			<div class="column"><label style="width:120px;">客户或代理人签章： </label><div  style="width:15px;">_______________</div></div>
			<div class="column"><label  style="width:40px;">日期： </label><div  style="width:230px;boder-bottom:1px solid black;">${businessTime?string('yyyy-MM-dd HH:mm:ss')}</div></div>
		</div>
		<div style="clear:both;display:block;"></div>
		<#else>
			<div class="asign-container">
				<div class="column">
					<div class="column-width">兹申明：</div>
					<div  class="column-width">上述填写内容正确无误。</div>
					<div  class="column-width">客户或代理人签章：_______________</div>
					<div  class="column-width">日期：${businessTime?string("yyyy-MM-dd HH:mm:ss")}</div>
				</div>
				<div class="column">
					<div class="column-width">理财中心主管授权:</div>
					<div class="column-width">授权原因：资料已校验。</div>
				</div>
				<div style="clear:both;display:block;"></div>
			</div>
		</#if>
	</div>
</#macro>
<#macro empty_row height=12>
<div class="empty_row" style="height:${height}px">&nbsp;</div>
</#macro>
<#macro print url >
	<#global page="第一联公司留存">
	<#include "${url}.ftl">
	<div class="breakPage"><!--[if IE 7]><br style="height:0; line-height:0"><![endif]--></div>
	<#global page="第二联投资人留存">
	<#include "${url}.ftl">
</#macro>
<#macro rule title height=930>
	<div class="receipt" style="height:${height}px;">
		<div class="r_title">${title}</div>
		<div calss="r_content">
			<#nested>
		</div>
	</div>
</#macro>