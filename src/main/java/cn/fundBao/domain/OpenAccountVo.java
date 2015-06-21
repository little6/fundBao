package cn.fundBao.domain;

//接受用户开户的信息，放到数据库中
public class OpenAccountVo {
	//交易账号
	private Integer tradeAccountNo;//id
	//用户的基本信息
	private String name;
	private String certType;
	private String certNo;
	
	//用户的基金信息
	private String taCode;
	private String taAccountNo;
	
	//银行卡信息
	private String bankNo;
	private String bankName;
	private String bankCertType;
	private String bankCertNo;
	
	//代办人信息
	private String agentName;
	private String agentCertType;
	private String agentCertNo;
	
	//经办人信息
	private String attnName;
	private String attnCertType;
	private String attnCertNo;
	
	//法人信息
	private String legalPersonName;
	private String legalPersonCertType;
	private String legalPersonCertNo;
	
	
	public Integer getTradeAccountNo() {
		return tradeAccountNo;
	}
	public void setTradeAccountNo(Integer tradeAccountNo) {
		this.tradeAccountNo = tradeAccountNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCertType() {
		return certType;
	}
	public void setCertType(String certType) {
		this.certType = certType;
	}
	public String getCertNo() {
		return certNo;
	}
	public void setCertNo(String certNo) {
		this.certNo = certNo;
	}
	public String getTaCode() {
		return taCode;
	}
	public void setTaCode(String taCode) {
		this.taCode = taCode;
	}
	public String getTaAccountNo() {
		return taAccountNo;
	}
	public void setTaAccountNo(String taAccountNo) {
		this.taAccountNo = taAccountNo;
	}
	public String getAgentName() {
		return agentName;
	}
	public void setAgentName(String agentName) {
		this.agentName = agentName;
	}
	public String getAgentCertType() {
		return agentCertType;
	}
	public void setAgentCertType(String agentCertType) {
		this.agentCertType = agentCertType;
	}
	public String getAgentCertNo() {
		return agentCertNo;
	}
	public void setAgentCertNo(String agentCertNo) {
		this.agentCertNo = agentCertNo;
	}
	public String getAttnName() {
		return attnName;
	}
	public void setAttnName(String attnName) {
		this.attnName = attnName;
	}
	public String getAttnCertType() {
		return attnCertType;
	}
	public void setAttnCertType(String attnCertType) {
		this.attnCertType = attnCertType;
	}
	public String getAttnCertNo() {
		return attnCertNo;
	}
	public void setAttnCertNo(String attnCertNo) {
		this.attnCertNo = attnCertNo;
	}
	public String getLegalPersonName() {
		return legalPersonName;
	}
	public void setLegalPersonName(String legalPersonName) {
		this.legalPersonName = legalPersonName;
	}
	public String getLegalPersonCertType() {
		return legalPersonCertType;
	}
	public void setLegalPersonCertType(String legalPersonCertType) {
		this.legalPersonCertType = legalPersonCertType;
	}
	public String getLegalPersonCertNo() {
		return legalPersonCertNo;
	}
	public void setLegalPersonCertNo(String legalPersonCertNo) {
		this.legalPersonCertNo = legalPersonCertNo;
	}
	public String getBankNo() {
		return bankNo;
	}
	public void setBankNo(String bankNo) {
		this.bankNo = bankNo;
	}
	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	public String getBankCertType() {
		return bankCertType;
	}
	public void setBankCertType(String bankCertType) {
		this.bankCertType = bankCertType;
	}
	public String getBankCertNo() {
		return bankCertNo;
	}
	public void setBankCertNo(String bankCertNo) {
		this.bankCertNo = bankCertNo;
	}
	
}
