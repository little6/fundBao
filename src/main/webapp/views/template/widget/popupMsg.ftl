<!--  ��ʽ -->
<style type="text/css">
	 #divMsg
	 {
	     width:380px;
	     height:170px;
	     line-height:10px;
	     text-align:center;
	     margin-left:40%;
	     position:absolute;
	     display:none;
	     background-color:white;
	     border:2px solid #d1c7b7;
	     z-index:300;
         *margin-left: 0;
	 }
	 .msgcontent{
	 	margin-left:auto;
	 	margin-right:auto;
	 	text-align:center;
	 	width:380px;
	 	line-height:20px;
	 	padding-top:40px;
	 }
	 .button{margin: 0 12px 0 12px; padding: 4px 16px 5px; border-radius: 2px; border: 0px none; background-color: #CC0000; color: white; font-size: 1em; cursor: pointer;}
</style>
<!-- ���ƽű� -->
<script language="javascript">
var PopupMsg = new Object();
PopupMsg._url = "";
PopupMsg.showMsg = function (url){
 	this._url = url;
     var _divMsg=document.getElementById("divMsg");
         _divMsg.style.display="block";
 };
PopupMsg.cancel = function (){
 	linkTo(this._url);
 };
PopupMsg.cancelCancel = function (){
     var _divMsg=document.getElementById("divMsg");
         _divMsg.style.display="none";
         this._url='';
 };
 
$("a:contains('����')").click(function(e) { 
	var screenH = screen.height;//ȡ����Ļ�ֱ��ʸ߶� 
	var yScroll;//ȡ�������߶� 
	if (self.pageYOffset) { 
		yScroll = self.pageYOffset; 
	} else if (document.documentElement && document.documentElement.scrollTop){ 
		yScroll = document.documentElement.scrollTop; 
	} else if (document.body) {
		yScroll = document.body.scrollTop; 
	}
    
	$("#divMsg").css({position: "absolute",'top': (screenH/2 +��yScroll)-100 + 'px'}).show(); 
}); 
</script>
     
<!-- ��Ϣdiv -->
<div id="divMsg">
	<div class="msgcontent">
    	<font style="font-size:14px;"><b>ȷ��Ҫ���ϸõ�����?</b></font>
    	<div style="margin-left:100px;margin-top:20px;">
	        <button class="button" onclick="PopupMsg.cancel();">ȷ��</button>
	        <button class="button" onclick="PopupMsg.cancelCancel();">ȡ��</button>
        </div>
     </div>
</div>