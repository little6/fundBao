package cn.fundBao.dao;

import javax.annotation.Resource;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import cn.fundBao.domain.OpenAccountVo;


@Repository
public class OpenAccountDao {
	@Resource
	private HibernateTemplate hibernateTemplate;
	
	public void save(OpenAccountVo openAccountVo){
		System.out.println("通过OpenAccountDao的save方法保存到数据库");
		this.hibernateTemplate.save(openAccountVo);
	}
}
