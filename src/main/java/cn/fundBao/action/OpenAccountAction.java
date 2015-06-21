package cn.fundBao.action;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.fundBao.domain.OpenAccountVo;
import cn.fundBao.service.OpenAccountService;


@SuppressWarnings("serial")
@Controller("openAccountAction")
@Scope(value="prototype")
public class OpenAccountAction {
	@Resource
	private OpenAccountService openAccountService;
	
	private OpenAccountVo openAccountVo;
	
	//显示给用户
	public  String index(){
		System.out.println("显示给用户给一个表单，让用户填写");
		return "success";
	}
	
	public String save(){
		System.out.println("调用OpenAccountAction的save方法，保存用户信息");
		openAccountService.save(openAccountVo);
		return "success";
	}

	public OpenAccountVo getOpenAccountVo() {
		return openAccountVo;
	}

	public void setOpenAccountVo(OpenAccountVo openAccountVo) {
		this.openAccountVo = openAccountVo;
	}
	
	
}
