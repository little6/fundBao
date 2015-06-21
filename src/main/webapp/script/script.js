
(function($) {
	$.widget("ui.calendar", {
		options : {
			defaultDate : +0,
			changeYear : true,
			changeMonth : true,
			dateFormat : 'yy-mm-dd',
			minDate : null,
			maxDate : null,
			showButtonPanel: false,
			showWeek : false,
			firstDay :	1,
			numberOfMonths : 1,
			showOn : 'focus',
			//buttonImage : ctx + '/static/component/jquery.ui/calendar.gif',
			buttonImageOnly : false,
			appendText : '',
			autoSize : true,
			yearRange : 'c-100:c+100',
			maskInput : true,
			hideIfNoPrevNext: true,
			regional : {
				closeText: '关闭',
				prevText: '&#x3c;上月',
				nextText: '下月&#x3e;',
				currentText: '今天',
				monthNames: ['一月','二月','三月','四月','五月','六月','七月','八月','九月','十月','十一月','十二月'],
				monthNamesShort: ['&nbsp;&nbsp;1月','&nbsp;&nbsp;2月','&nbsp;&nbsp;3月','&nbsp;&nbsp;4月','&nbsp;&nbsp;5月','&nbsp;&nbsp;6月','&nbsp;&nbsp;7月','&nbsp;&nbsp;8月','&nbsp;&nbsp;9月','10月','11月','12月'],
				dayNames: ['星期日','星期一','星期二','星期三','星期四','星期五','星期六'],
				dayNamesShort: ['周日','周一','周二','周三','周四','周五','周六'],
				dayNamesMin: ['日','一','二','三','四','五','六'],
				weekHeader: '周',
				dateFormat: 'yy-mm-dd',
				firstDay: 1,
				isRTL: false,
				showMonthAfterYear: true,
				yearSuffix: '年'
			}
		},
		_init: function() {
			this._calendar();		
		},
		_calendar : function(){
			var o = this.options, self = this,el= this.element;
			$.datepicker.regional['zh-CN'] = o.regional;
			$.datepicker.setDefaults($.datepicker.regional['zh-CN']);
			$(el).each(function(){
				var e = $(this);
				e.datepicker(o);
			});
			
			return this;
		},
		enable : function(){
			var el = this.element;
			$(el).each(function(){
				var e = $(this);
				e.datepicker("enable");
				if(e.attr('name')){
					e.parent().children(".vaalhaai_calendar_hide[name='"+e.attr("name")+"']").remove();
				}
			});
		},
		disable: function(){
			var el = this.element;
			$(el).each(function(){
				var e = $(this);
				e.datepicker("disable");
				if (e.attr('name')) {
					e.parent().children(".vaalhaai_calendar_hide[name='"+e.attr("name")+"']").remove();
					var ec = e.clone();
					if (ec.attr("id")) {
						ec.attr("id", ec.attr("id") + "_vaalhaai_c");
					}
					ec.addClass("vaalhaai_calendar_hide").removeAttr("disabled");
					ec.appendTo(e.parent());
					ec.hide();
				}
			});
		},
		destroy: function(){
			var el = this.element;
			$(el).each(function(){
				var e = $(this);
				if(e.attr('name')){
					e.parent().children(".vaalhaai_calendar_hide[name='"+e.attr("name")+"']").remove();
				}
				e.datepicker("destroy");
			});
		}
	});
})(jQuery);

(function($) {
	$.widget("ui.ProvinceSelect", {
		options : {
			cascadeCityName: "",
			hideMunicipalities: true
		},
		_init: function() {
			var o = this.options,self = this,el= this.element;
			var city = $("select[name='" + o.cascadeCityName + "']");
			var selected = $(el).children("option:selected");
			if(o.hideMunicipalities
					&& selected.attr("isMunicipalities") == 1){
				city.hide();
				city.attr("disabled", "true");
			}
			self.city = city;
			$(el).change(function(){self._onchange.call(self);});
		},
		_onchange: function(){
			var o = this.options,self = this,el= this.element;
			var city = self.city, province = $(el);
			var selected = $(el).children("option:selected");
			city.children().each(function(i, item){
				if($(item).attr("value") != ""){
					$(item).remove();
				}
			});
			if(o.hideMunicipalities
					&& selected.attr("isMunicipalities") == 1){
				city.hide();
				city.attr("disabled", "true");
			}else{
				city.show();
				city.removeAttr("disabled");
				$.ajax({
					url:ctx + '/common/findCity', 
					cache:false, 
					type:'POST', 
					dataType:null, 
					data:{'provinceCode':province.val()}, 
					success:function(cityData){
						$.each(cityData, function(i, c){
							city.append($("<option></option>").val(c.cityCode).text(c.name));
						})
					}
				});
			}
		},
		destroy: function(){
			var o = this.options,self = this,el= this.element;
		}
	});
})(jQuery);

function getJson(url, param, callback){
	$.ajax({
		url: ctx + url, 
		cache: false, 
		type: 'POST', 
		dataType: null, 
		data: param, 
		success: callback
	});
}

function linkTo(url){
	window.location=url;
}

function toSHARECapital(s){
	if(!s||$.trim(s)==""){
		return '零份整';
	}
	if(isNaN(s) || s.length > 17){
		//alert("无效数据");
		return '';
	}
	var cnDigits = "零壹贰叁肆伍陆柒捌玖";
	var cnUnits = "分角份拾佰仟万拾佰仟亿拾佰仟万拾";
	//放大100倍
	var numberFloat = parseFloat(s,10);
	var numberString = Math.round(numberFloat * 100.0) + "" ;	
	var l = numberString.length;
	if(l > 16){
		//alert("数据操作可处理范围，必须小于等于10万亿");
		return '';
	}
	var cnCapital = "";
	var j = 0;
	for(var i = (l-1);i >=0;i--){
		var u = cnUnits.substr(j++,1);
		var d = cnDigits.substr(parseInt(numberString.substr(i,1),10),1);
		cnCapital = d + u + cnCapital;
	}
	cnCapital = cnCapital.replace(/零角零分/g,"整");
	cnCapital = cnCapital.replace(/点零零/g,"");
	cnCapital = cnCapital.replace(/(零拾)|(零佰)|(零仟)/g,"零");
	cnCapital = cnCapital.replace(/零(零)+/g,"零");
	cnCapital = cnCapital.replace(/零万/g,"万");
	cnCapital = cnCapital.replace(/零亿/g,"亿");
	cnCapital = cnCapital.replace(/亿万/g,"亿");
	cnCapital = cnCapital.replace(/零份/g,"份");
	cnCapital = cnCapital.replace(/零角/g,"零");
	return cnCapital;
}
function toRMBCapital(s){
	if(!s||$.trim(s)==""){
		return '零元整';
	}
	if(isNaN(s) || s.length > 17){
		//alert("无效数据");
		return '';
	}
	var cnDigits = "零壹贰叁肆伍陆柒捌玖";
	var cnUnits = "分角元拾佰仟万拾佰仟亿拾佰仟万拾";
	//放大100倍
	var numberFloat = parseFloat(s,10);
	var numberString = Math.round(numberFloat * 100.0) + "" ;	
	var l = numberString.length;
	if(l > 16){
		//alert("数据操作可处理范围，必须小于等于10万亿");
		return '';
	}
	var cnCapital = "";
	var j = 0;
	for(var i = (l-1);i >=0;i--){
		var u = cnUnits.substr(j++,1);
		var d = cnDigits.substr(parseInt(numberString.substr(i,1),10),1);
		cnCapital = d + u + cnCapital;
	}
	cnCapital = cnCapital.replace(/零角零分/g,"整");
	cnCapital = cnCapital.replace(/点零零/g,"");
	cnCapital = cnCapital.replace(/(零拾)|(零佰)|(零仟)/g,"零");
	cnCapital = cnCapital.replace(/零(零)+/g,"零");
	cnCapital = cnCapital.replace(/零万/g,"万");
	cnCapital = cnCapital.replace(/零亿/g,"亿");
	cnCapital = cnCapital.replace(/亿万/g,"亿");
	cnCapital = cnCapital.replace(/零元/g,"元");
	cnCapital = cnCapital.replace(/零角/g,"零");
	return cnCapital;
};
/**
 * 根据身份证号得到出生日期 yyyy-MM-dd
 */
function getBirthday(certificateNo ) {
	var year;
	var month;
	var date;
	if(certificateNo.length==15)
	{
		year = "19"+certificateNo.substr(6,2);
		month = certificateNo.substr(8,2);
		date = certificateNo.substr(10,2);
		//birthday="19"+certificateNo.substr(6,2)+"-"+certificateNo.substr(8,2)+"-"+certificateNo.substr(10,2);
	}
	else
	{
		year = certificateNo.substr(6,4);
		month = certificateNo.substr(10,2);
		date = certificateNo.substr(12,2);
		//birthday=certificateNo.substr(6,4)+"-"+certificateNo.substr(10,2)+"-"+certificateNo.substr(12,2);		
	}
	if(month<1||month>12)
		return "";
	if(date<1||date>31)
		return "";
	if((month==1||month==3||month==5||month==7||month==8||month==10||month==12)&&date>30)
		return "";
	return year+'-'+month+'-'+date;
}
document.onkeypress = function(event) {
	if(typeof event == "undefined"){
		if(window.event.keyCode == 13) {
			window.event.keyCode = 0;
			window.event.returnValue = false;
			return false;
		}
	}else{
		if(event.keyCode == 13){
			event.returnValue = false;
			return false;
		}
	}
}

