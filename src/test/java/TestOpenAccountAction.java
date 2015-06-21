

import junit.framework.Assert;

import org.hibernate.SessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.fundBao.action.OpenAccountAction;
import cn.fundBao.domain.OpenAccountVo;

/**
 * 测试spring加载的问题
 * @author Administrator
 *
 */
public class TestOpenAccountAction {
	
	@Test
	public void testSpringRun(){
		ApplicationContext spring = new ClassPathXmlApplicationContext("/spring/spring-fund.xml");
		Assert.assertNotNull(spring);
		
		SessionFactory bean = spring.getBean(SessionFactory.class);
		Assert.assertNotNull(bean);
		
	}
	
	@Test
	public void testOpenAccount(){
		ApplicationContext context = new ClassPathXmlApplicationContext("/spring/spring-fund.xml");
		OpenAccountAction action = (OpenAccountAction) context.getBean("openAccountAction");
		String index = action.index();
		if("success".equalsIgnoreCase(index)){
			action.setOpenAccountVo(gerneratorVo());
			action.save();
		}
	}

	private OpenAccountVo gerneratorVo() {
		OpenAccountVo vo = new OpenAccountVo();
		
		vo.setName("little6");
		vo.setTradeAccountNo(88888888);
		
		return vo;
	}

}
