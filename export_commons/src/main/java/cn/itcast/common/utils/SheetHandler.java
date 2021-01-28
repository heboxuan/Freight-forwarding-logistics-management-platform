package cn.itcast.common.utils;

import cn.itcast.vo.ContractProductVo;
import org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler;
import org.apache.poi.xssf.usermodel.XSSFComment;

/**
 * 自定义行解析器
 */
public class SheetHandler implements XSSFSheetXMLHandler.SheetContentsHandler {

    private ContractProductVo vo;

    /**
     * poi自动通知到此方法，开始解析某一行数据
     *  参数：行索引
     */
    public void startRow(int index) {
        if(index>=2) {
            vo = new ContractProductVo();
        }
    }

    /**
     * poi自动通知到此方法，结束解析某一行数据
     */
    public void endRow(int index) {
        //业务方法
        if(index>=2) {
            System.out.println(vo.getCustomName());
        }
    }

    /**
     * 现在解析某一个单元格
     *      cellname : 单元格名称
     *          A1,B3,C5
     *          A  B   C
     *      cellvalue：当前单元格数据
     *      xssfComment；注释
     */
    public void cell(String cellname, String cellvalue, XSSFComment xssfComment) {
        if(vo != null) {
            cellname = cellname.substring(0,1);
            switch (cellname) {
                case "A" : {
                    break;
                }
                case "B" : {
                    vo.setCustomName(cellvalue);
                    break;
                }
                case "C" : {
                    vo.setProductNo(cellvalue);
                    break;
                }
                default:{
                    break;
                }
            }
        }
    }
}

