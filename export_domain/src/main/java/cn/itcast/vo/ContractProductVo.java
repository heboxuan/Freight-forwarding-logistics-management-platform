package cn.itcast.vo;

import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.format.DateTimeFormat;
import com.alibaba.excel.annotation.write.style.ColumnWidth;
import com.alibaba.excel.annotation.write.style.ContentRowHeight;
import com.alibaba.excel.annotation.write.style.HeadRowHeight;

import java.io.Serializable;
import java.util.Date;

/**
 * 在EasyExcel中，通过java代码生成或者解析Excel文件很简单。不需要创建繁琐的表头
 *  @ExcelProperty : 在创建Excel的时候，自动的读取实体类中的注解配置，生成表头
 */
@ContentRowHeight(20)  //数据行高数
@HeadRowHeight(20)     //表头高度
@ColumnWidth(15)       //列宽
public class ContractProductVo implements Serializable {

	@ExcelProperty("客户名称")
	private String customName;		//客户名称

	@ExcelProperty("合同号")
	private String contractNo;		//合同号，订单号

	@ExcelProperty("货号")
	private String productNo;		//货号

	@ExcelProperty("数量")
	private Integer cnumber;		//数量

	@ExcelProperty("厂家名称")
	private String factoryName;		//厂家名称，冗余字段

	@ExcelProperty("交货期限")
	@DateTimeFormat("yyyy-MM-dd")
	private Date deliveryPeriod;	//交货期限

	@ExcelProperty("船期")
	@DateTimeFormat("yyyy-MM-dd")
	private Date shipTime;			//船期

	@ExcelProperty("贸易条款")
	private String tradeTerms;		//贸易条款

	public String getCustomName() {
		return customName;
	}

	public void setCustomName(String customName) {
		this.customName = customName;
	}

	public String getContractNo() {
		return contractNo;
	}

	public void setContractNo(String contractNo) {
		this.contractNo = contractNo;
	}

	public String getProductNo() {
		return productNo;
	}

	public void setProductNo(String productNo) {
		this.productNo = productNo;
	}

	public Integer getCnumber() {
		return cnumber;
	}

	public void setCnumber(Integer cnumber) {
		this.cnumber = cnumber;
	}

	public String getFactoryName() {
		return factoryName;
	}

	public void setFactoryName(String factoryName) {
		this.factoryName = factoryName;
	}

	public Date getDeliveryPeriod() {
		return deliveryPeriod;
	}

	public void setDeliveryPeriod(Date deliveryPeriod) {
		this.deliveryPeriod = deliveryPeriod;
	}

	public Date getShipTime() {
		return shipTime;
	}

	public void setShipTime(Date shipTime) {
		this.shipTime = shipTime;
	}

	public String getTradeTerms() {
		return tradeTerms;
	}

	public void setTradeTerms(String tradeTerms) {
		this.tradeTerms = tradeTerms;
	}
}
