package cn.itcast.vo;

import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;


@XmlRootElement(name="exportProduct")
public class ExportProductVo implements Serializable{


	private String exportProductId; //商品ID
	private String exportId;	
	private String factoryId;			
	private String productNo;			
	private String packingUnit;			//PCS/SETS
	private Integer cnumber;			
	private Integer boxNum;			
	private Double grossWeight;			
	private Double netWeight;			
	private Double sizeLength;			
	private Double sizeWidth;			
	private Double sizeHeight;			
	private Double exPrice;			//sales confirmation 中的价格（手填）
	private Double price;			
	private Double tax;			//收购单价=合同单价

	public String getExportProductId() {
		return this.exportProductId;
	}
	public void setExportProductId(String exportProductId) {
		this.exportProductId = exportProductId;
	}
	public String getExportId() {
		return this.exportId;
	}
	public void setExportId(String exportId) {
		this.exportId = exportId;
	}
	
	public String getFactoryId() {
		return this.factoryId;
	}
	public void setFactoryId(String factoryId) {
		this.factoryId = factoryId;
	}	
	
	public String getProductNo() {
		return this.productNo;
	}
	public void setProductNo(String productNo) {
		this.productNo = productNo;
	}	
	
	public String getPackingUnit() {
		return this.packingUnit;
	}
	public void setPackingUnit(String packingUnit) {
		this.packingUnit = packingUnit;
	}	
	
	public Integer getCnumber() {
		return this.cnumber;
	}
	public void setCnumber(Integer cnumber) {
		this.cnumber = cnumber;
	}	
	
	public Integer getBoxNum() {
		return this.boxNum;
	}
	public void setBoxNum(Integer boxNum) {
		this.boxNum = boxNum;
	}	
	
	public Double getGrossWeight() {
		return this.grossWeight;
	}
	public void setGrossWeight(Double grossWeight) {
		this.grossWeight = grossWeight;
	}	
	
	public Double getNetWeight() {
		return this.netWeight;
	}
	public void setNetWeight(Double netWeight) {
		this.netWeight = netWeight;
	}	
	
	public Double getSizeLength() {
		return this.sizeLength;
	}
	public void setSizeLength(Double sizeLength) {
		this.sizeLength = sizeLength;
	}	
	
	public Double getSizeWidth() {
		return this.sizeWidth;
	}
	public void setSizeWidth(Double sizeWidth) {
		this.sizeWidth = sizeWidth;
	}	
	
	public Double getSizeHeight() {
		return this.sizeHeight;
	}
	public void setSizeHeight(Double sizeHeight) {
		this.sizeHeight = sizeHeight;
	}	
	
	public Double getExPrice() {
		return this.exPrice;
	}
	public void setExPrice(Double exPrice) {
		this.exPrice = exPrice;
	}	
	
	public Double getPrice() {
		return this.price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}	
	
	public Double getTax() {
		return this.tax;
	}
	public void setTax(Double tax) {
		this.tax = tax;
	}
	
}
