<#global dic=JspTaglibs["/WEB-INF/tag.tld"] />
<#global srcver=20121024/>
<#global ctx=springMacroRequestContext.getContextPath()/>



<#macro operator class="">
  <@body>
    <#include "template/widget/header.ftl">
    <div class="center fixed_1000">
      <#include "template/widget/menu.ftl">
      <div class="content">
      <#nested>
      </div>
    </div>
    <#include "template/widget/footer.ftl">
    <#include "template/widget/popupMsg.ftl">
  </@body>
</#macro>

<#-- 菜单 -->
<#macro menuitem url title onclick="" target="">
	<#assign requestUri = springMacroRequestContext.getRequestUri() />
	<#assign linkUri = ctx + url />
	<#if target!="">
		<#assign t="target=\"" + target + "\" ">
	<#else>
		<#assign t="">
	</#if>
	<@hasPermission url=url>
	<#if requestUri?starts_with(linkUri) && hasSelected!="true">
		<li class="selected">&gt;
		<#assign hasSelected="true" />
	<#else>
		<li>&gt;
	</#if>
			<a href="${linkUri}" title="${title}" ${t}>${title}</a>
		</li>
	</@hasPermission>
</#macro>




<#macro info title="">
	<div class="info">
		<#if title!="" >
			<h2>${title}</h2>
		</#if>
		<#nested>
	</div>
</#macro>

<#macro navTitle>
	<ul class="nav">
    	<#assign titleIndex=0 >
    	<#list titles as title>
    		<#assign titleIndex=titleIndex + 1 >
    		<#if title==label>
    		<li id="fieldset_${titleIndex}" class="selected" >${title}</li>
    		<#else>
    		<li><a href="#fieldset_${titleIndex}">${title}</a></li>
    		</#if>
    	</#list>
    </ul>
</#macro>


<#macro queryForm action title="" method="post">
	<div class="form query">
		<#if title!="" >
			<h2>${title}</h2>
		</#if>
		<form action="${action}" method="${method}" id="queryForm">
			<@field label="交易账号" name="tradeAccountNo">
				<input name="queryTradeAccountNo" value="${(queryView.queryTradeAccountNo)!}"/>
			</@field>
			<@field label="基金账号" name="taAccountNo">
				<input name="queryTaAccountNo" value="${(queryView.queryTaAccountNo)!}"/>
			</@field>
			<@buttons>
				<input type="submit" value="查询" /> 
			</@buttons>
		</form>
		<#if errors??>
		<#assign e = errors['queryTradeAccountNo']>
			<#if e??> 
				<#list e as itemValue>
					<#if itemValue!="">
					<div class="query-alert">
					<span>${itemValue}</span>
					</div>
					</#if>
				</#list>
			</#if>
		</#if>
	</div>
</#macro>

<#macro operateButtons uri >
	<input type="hidden" name="queryTradeAccountNo" value="${queryView.queryTradeAccountNo!}" />
	<input type="hidden" name="queryTaAccountNo" value="${queryView.queryTaAccountNo!}" />
	<input type="hidden" name="queryRequestId" value="${queryView.queryRequestId!}" />
  <@buttons>
  	<#if status=='input' || status=='edit'>
  		<button type="submit" name="type1" value="保存" >保存</button>
	</#if>
	<#if status =='show'>
		<#assign queryString = "queryRequestId=${queryView.queryRequestId!}&queryTradeAccountNo=${queryView.queryTradeAccountNo!}&queryTaAccountNo=${queryView.queryTaAccountNo!}" />
		<button onclick="window.open('${ctx}/${uri}/print?queryRequestId=${queryView.queryRequestId!}');return false;">1.打印</button>
		<button onclick="linkTo('${ctx}/${uri}/confirm?${queryString}');return false;">2.提交</button>
		<a class="split-right" href="${ctx}/${uri}/edit?${queryString}">修改</a>
		<a class="split-right" href="#" onclick="PopupMsg.showMsg('${ctx}/${uri}/discard?${queryString}');return false;">作废</a>
	</#if>
  </@buttons>
</#macro>

<#macro passwordButtons uri>
	<input type="hidden" name="queryTradeAccountNo" value="${queryView.queryTradeAccountNo!}" />
	<input type="hidden" name="queryTaAccountNo" value="${queryView.queryTaAccountNo!}" />
	<input type="hidden" name="queryRequestId" value="${queryView.queryRequestId!}" />
  <@buttons>
  	<#if status=='input' || status=='edit'>
  		<input type="submit" name="type1" value="提交" />
	</#if>
	<#if status =='show'>
		<#assign queryString = "queryRequestId=${queryView.queryRequestId!}&queryTradeAccountNo=${queryView.queryTradeAccountNo!}&queryTaAccountNo=${queryView.queryTaAccountNo!}" />
		<a class="split-right" href="#" onclick="window.open('${ctx}/${uri}/print?${queryString}')">打印</a>
 	</#if>
  </@buttons>
</#macro>

<#macro withdrawButtons uri>
	<input type="hidden" name="queryTradeAccountNo" value="${queryView.queryTradeAccountNo!}" />
	<input type="hidden" name="queryTaAccountNo" value="${queryView.queryTaAccountNo!}" />
	<input type="hidden" name="queryRequestId" value="${queryView.queryRequestId!}" />
  <@buttons>
  	<#if status=='input' || status=='edit'>
  		<input type="submit" name="type1" value="保存" />
	</#if>
	<#if status =='show'>
		<#assign queryString = "queryRequestId=${queryView.queryRequestId!}&queryTradeAccountNo=${queryView.queryTradeAccountNo!}&queryTaAccountNo=${queryView.queryTaAccountNo!}" />
		<button onclick="window.open('${ctx}/${uri}/print?${queryString}');return false">1.打印</button>
		<button onclick="linkTo('${ctx}/${uri}/confirm?${queryString}');return false;">2.提交</button>
		<a class="split-right" onclick="PopupMsg.showMsg('${ctx}/${uri}/discard?${queryString}');return false;">作废</a>
 	</#if>
  </@buttons>
</#macro>


<#macro columnl title width=90>
	<div class="column-left">
		<label class="field-label"  style="width:${width}px;">${title}:</label>
		<div class="field-input">
			<#nested>
		</div>
	</div>
</#macro>
<#macro columnr title width=90>
	<div class="column-right">
		<label class="field-label"  style="width:${width}px">${title}:</label>
		<div class="field-input">
			<#nested>
		</div>
	</div>
</#macro>