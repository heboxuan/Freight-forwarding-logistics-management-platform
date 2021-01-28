package cn.itcast.vo;

import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;
import java.util.*;


@XmlRootElement(name="export")
public class ExportVo implements Serializable{
	private static final long serialVersionUID = 1L;
	private String exportId;       //发送到海关平台的，报运单ID
	private List<ExportProductVo> products = new ArrayList<ExportProductVo>();
	private Date inputDate;			
	private String shipmentPort;			
	private String destinationPort;			
	private String transportMode;			//SEA/AIR
	private String priceCondition;			//FBO/CIF
	private Integer boxNums;			//冗余，为委托服务，一个报运的总箱数
	private Double grossWeights;			//冗余，为委托服务，一个报运的总毛重
	private Double measurements;			//冗余，为委托服务，一个报运的总体积

	
	public String getExportId() {
		return this.exportId;
	}
	public void setExportId(String exportId) {
		this.exportId = exportId;
	}	
	
	public Date getInputDate() {
		return this.inputDate;
	}
	public void setInputDate(Date inputDate) {
		this.inputDate = inputDate;
	}	
	
	public String getShipmentPort() {
		return this.shipmentPort;
	}
	public void setShipmentPort(String shipmentPort) {
		this.shipmentPort = shipmentPort;
	}	
	
	public String getDestinationPort() {
		return this.destinationPort;
	}
	public void setDestinationPort(String destinationPort) {
		this.destinationPort = destinationPort;
	}	
	
	public String getTransportMode() {
		return this.transportMode;
	}
	public void setTransportMode(String transportMode) {
		this.transportMode = transportMode;
	}	
	
	public String getPriceCondition() {
		return this.priceCondition;
	}
	public void setPriceCondition(String priceCondition) {
		this.priceCondition = priceCondition;
	}	
	
	public Integer getBoxNums() {
		return this.boxNums;
	}
	public void setBoxNums(Integer boxNums) {
		this.boxNums = boxNums;
	}	
	
	public Double getGrossWeights() {
		return this.grossWeights;
	}
	public void setGrossWeights(Double grossWeights) {
		this.grossWeights = grossWeights;
	}	
	
	public Double getMeasurements() {
		return this.measurements;
	}
	public void setMeasurements(Double measurements) {
		this.measurements = measurements;
	}	

	public List<ExportProductVo> getProducts() {
		return products;
	}

	public void setProducts(List<ExportProductVo> products) {
		this.products = products;
	}
}
