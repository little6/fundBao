package cn.fundBao.service;

import javax.annotation.Resource;

import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.fundBao.dao.OpenAccountDao;
import cn.fundBao.domain.OpenAccountVo;


@Service
public class OpenAccountService {
	@Resource
	private OpenAccountDao openAccountDao;
	/*@Resource
	private TradeAccountDao tradeAccountDao;
	@Resource
	private TaAccountDao taAccountDao;
	@Resource
	private CurrentAccountDao currentAccountDao;
	@Resource
	private PaymentAccountDao paymentAccountDao;*/
	
	@Transactional(rollbackFor=Throwable.class)
	public void save(OpenAccountVo openAccountVo){
		
		openAccountDao.save(openAccountVo);
		/*//转换并保存交易账户
		TradeAccountPo tradeAccountVo = convertToTradeAccountVo(openAccountVo);
		saveTradeAccountVo(tradeAccountVo);*/
		
		/*//转换并保存基金账户
		TaAccountPo taAccountVo = convertToTaAccountVo(openAccountVo, tradeAccountVo);
		saveTaAccountVo(taAccountVo);
		
		//转换并保存资金账户
		CurrentAccountPo currentAccountVo = convertToCurrentAccountVo(openAccountVo);
		saveCurrentAccountVo(currentAccountVo);
		
		//转换并保存付款账户
		PaymentAccountPo paymentAccount = convertToPaymentAccount(tradeAccountVo,
				currentAccountVo);
		paymentAccountDao.save(paymentAccount);*/
	}



	/*private PaymentAccountPo convertToPaymentAccount(
			TradeAccountPo tradeAccountVo, CurrentAccountPo currentAccountVo) {
		PaymentAccountPo paymentAccount = new PaymentAccountPo();
		paymentAccount.setTradeAccountNo(tradeAccountVo.getTradeAccountNo());
		paymentAccount.setCurrentAccountNo(currentAccountVo.getCurrentAccountNo());
		paymentAccount.setChannelNo("888");
		paymentAccount.setStatus("1");
		return paymentAccount;
	}



	private TaAccountPo convertToTaAccountVo(OpenAccountVo openAccountVo,
			TradeAccountPo tradeAccountVo) {
		TaAccountPo taAccountVo = new TaAccountPo();
		taAccountVo.setTradeAccountNo(tradeAccountVo.getTradeAccountNo());
		taAccountVo.setTaCode(openAccountVo.getTaCode());
		taAccountVo.setTaAccountNo(openAccountVo.getTaAccountNo());
		return taAccountVo;
	}



	private TradeAccountPo convertToTradeAccountVo(OpenAccountVo openAccountVo) {
		TradeAccountPo tradeAccountVo = new TradeAccountPo();
		BeanUtils.copyProperties(openAccountVo, tradeAccountVo);
		return tradeAccountVo;
	}



	private CurrentAccountPo convertToCurrentAccountVo(
			OpenAccountVo openAccountVo) {
		CurrentAccountPo currentAccountVo = new CurrentAccountPo();
		currentAccountVo.setBankNo(openAccountVo.getBankNo());
		currentAccountVo.setBankName(openAccountVo.getBankName());
		currentAccountVo.setBankCertType(openAccountVo.getBankCertType());
		currentAccountVo.setBankCertNo(openAccountVo.getBankCertNo());
		return currentAccountVo;
	}



	//基金信息保存到TaAccountVo
	private void saveTaAccountVo(TaAccountPo taAccountVo) {
		taAccountDao.save(taAccountVo);
	}

	//基本信息信息保存到TradeAccountVo
	private void saveTradeAccountVo(TradeAccountPo tradeAccountVo) {
		tradeAccountDao.save(tradeAccountVo);
	}
	
	//保存银行卡信息到ac_current_account
	private void saveCurrentAccountVo(CurrentAccountPo currentAccountVo) {
		currentAccountDao.save(currentAccountVo);
	}*/
}
