package cn.itcast.web.controller.cargo;

import cn.itcast.common.utils.DownloadUtil;
import cn.itcast.domain.cargo.Contract;
import cn.itcast.service.cargo.ContractService;
import cn.itcast.vo.ContractProductVo;
import cn.itcast.web.controller.BaseController;
import com.alibaba.dubbo.config.annotation.Reference;
import com.alibaba.excel.EasyExcel;
import com.alibaba.excel.ExcelWriter;
import com.alibaba.excel.write.builder.ExcelWriterSheetBuilder;
import com.alibaba.excel.write.metadata.WriteSheet;
import org.apache.commons.collections.map.HashedMap;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.ByteArrayOutputStream;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/cargo/contract/")
public class ExcelController extends BaseController {

    @Reference
    private ContractService contractService;

    @RequestMapping("/print")
    public String print() {
        return "cargo/print/contract-print";
    }

    /**
     * 请求连接 ：printExcel.do?inputDate=2020-01
     * 参数：inputDate(船期)  2015-01
     * 业务：
     *  1、调用service根据船期查询出货表数据
     *  2、使用POI完成Excel文件创建
     *  3、文件下载
     * 注意:
     *  下载：通过字节流的形式完成资源展示（下载），并不需要跳转到任何页面
     *  返回值null
     *
     */
    @RequestMapping("/printExcel")
    public void printExcel(String inputDate) throws Exception {
        //i.调用service根据船期查询出货表数据
        List<ContractProductVo> list = contractService.findByShipTime(inputDate+"%");
        //ii.使用POI完成Excel文件创建
        //1、创建工作簿
        Workbook wb = new XSSFWorkbook();
        //2、创建第一页
        Sheet sheet = wb.createSheet();

        //列宽
        sheet.setColumnWidth(1,26 * 256);
        sheet.setColumnWidth(2,11 * 256);
        sheet.setColumnWidth(3,29 * 256);
        sheet.setColumnWidth(4,12 * 256);
        sheet.setColumnWidth(5,15 * 256);
        sheet.setColumnWidth(6,10 * 256);
        sheet.setColumnWidth(7,10 * 256);
        sheet.setColumnWidth(8,8 * 256);

        //合并单元格
        sheet.addMergedRegion(new CellRangeAddress(0,0,1,8)); //合并开始行，结束行，开始列，结束列

        //3、构建大标题
        //3.1 创建行对象
        Row row = sheet.createRow(0);
        row.setHeightInPoints(30);
        //3.2 创建单元格对象
        Cell cell = row.createCell(1);
        //3.3 设置大标题内容  2012年8月份出货表
        //2015-01  -- 2015-1   -- 2015年1
        //2015-11  -- 2015-11  -- 2015年11
        //2012年8
        inputDate=inputDate.replaceAll("-0", "-").replaceAll("-", "年");
        cell.setCellValue(inputDate + "月份出货表");

        cell.setCellStyle(bigTitle(wb));


        //4、构建小标题
        row = sheet.createRow(1);
        String [] titles = new String[]{"","客户","合同号","货号","数量","工厂","工厂交期","船期","贸易条款"};
        for (int i = 1; i < titles.length; i++) {
            cell = row.createCell(i);
            cell.setCellValue(titles[i]);
            cell.setCellStyle(title(wb));
        }
        //5、循环出货数据列表，每条数据构造一个数据行
        int index = 2;
        for (ContractProductVo vo : list) {
            //5.1 创建数据行
            row = sheet.createRow(index);
            //5.2 创建每一个单元格，并设置对应的数据
            //客户
            cell = row.createCell(1);
            cell.setCellValue(vo.getCustomName());
            cell.setCellStyle(text(wb));
            //合同号
            cell = row.createCell(2);
            cell.setCellValue(vo.getContractNo());
            cell.setCellStyle(text(wb));
            //货号
            cell = row.createCell(3);
            cell.setCellValue(vo.getProductNo());
            cell.setCellStyle(text(wb));
            //数量
            cell = row.createCell(4);
            cell.setCellValue(vo.getCnumber());
            cell.setCellStyle(text(wb));
            //工厂
            cell = row.createCell(5);
            cell.setCellValue(vo.getFactoryName());
            cell.setCellStyle(text(wb));
            /**
             * date类型的数据，在excel中会有数据显示问题
             * 最好的解决方法：将date先转化为string字符串，赋值
             */
            //工厂交期
            cell = row.createCell(6);

            String dp = "";
            try {
                dp = new SimpleDateFormat("yyyy-MM-dd").format(vo.getDeliveryPeriod());
            }catch (Exception e) {

            }
            cell.setCellValue(dp);
            cell.setCellStyle(text(wb));
            //船期
            cell = row.createCell(7);
            String st = "";
            try {
                st = new SimpleDateFormat("yyyy-MM-dd").format(vo.getShipTime());
            }catch (Exception e) {

            }
            cell.setCellValue(st);
            cell.setCellStyle(text(wb));
            //贸易条款
            cell = row.createCell(8);
            cell.setCellValue(vo.getTradeTerms());
            cell.setCellStyle(text(wb));
            index++;
        }

        //iii.文件下载
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        wb.write(bos);
        new DownloadUtil().download(bos,response,"出货表.xlsx");
    }


    //大标题的样式
    public CellStyle bigTitle(Workbook wb){
        CellStyle style = wb.createCellStyle();
        Font font = wb.createFont();
        font.setFontName("宋体");
        font.setFontHeightInPoints((short)16);
        font.setBold(true);//字体加粗
        style.setFont(font);
        style.setAlignment(HorizontalAlignment.CENTER);				//横向居中
        style.setVerticalAlignment(VerticalAlignment.CENTER);		//纵向居中
        return style;
    }

    //小标题的样式
    public CellStyle title(Workbook wb){
        CellStyle style = wb.createCellStyle();
        Font font = wb.createFont();
        font.setFontName("黑体");
        font.setFontHeightInPoints((short)12);
        style.setFont(font);
        style.setAlignment(HorizontalAlignment.CENTER);				//横向居中
        style.setVerticalAlignment(VerticalAlignment.CENTER);		//纵向居中
        style.setBorderTop(BorderStyle.THIN);						//上细线
        style.setBorderBottom(BorderStyle.THIN);					//下细线
        style.setBorderLeft(BorderStyle.THIN);						//左细线
        style.setBorderRight(BorderStyle.THIN);						//右细线
        return style;
    }

    //文字样式
    public CellStyle text(Workbook wb){
        CellStyle style = wb.createCellStyle();
        Font font = wb.createFont();
        font.setFontName("Times New Roman");
        font.setFontHeightInPoints((short)10);
        style.setFont(font);
        style.setAlignment(HorizontalAlignment.LEFT);				//横向居左
        style.setVerticalAlignment(VerticalAlignment.CENTER);		//纵向居中
        style.setBorderTop(BorderStyle.THIN);						//上细线
        style.setBorderBottom(BorderStyle.THIN);					//下细线
        style.setBorderLeft(BorderStyle.THIN);						//左细线
        style.setBorderRight(BorderStyle.THIN);						//右细线
        return style;
    }

    /**
     * 使用EasyExcel完成excel的生成和下载
     *  1、数据查询
     *  2、设置下载信息
     *  3、调用EasyExcel的工具类完成生成下载
     */
    @RequestMapping("/printEasyExcel")
    public void printEasyExcel(String inputDate) throws Exception {
        //1、数据查询
        List<ContractProductVo> list = contractService.findByShipTime(inputDate+"%");
        //2、设置下载信息
        //设置MIME类型：下载excel
        response.setContentType("application/vnd.ms-excel");
        response.setCharacterEncoding("utf-8");
        String fileName = URLEncoder.encode("出货表", "UTF-8");
        //设置浏览提弹出下载框
        response.setHeader("Content-disposition", "attachment;filename=" + fileName + ".xlsx");
        //3、调用EasyExcel的工具类完成生成下载
        EasyExcel.write(response.getOutputStream())
                .head(ContractProductVo.class) //设置表头
                .sheet("heima127") //指定页名称
                .doWrite(list); //设置数据
    }

    /**
     * 模板打印
     *
     */
    @RequestMapping("/printTemplate")
    public void printTemplate(String inputDate) throws Exception {
        //1.准备数据
        List<ContractProductVo> list = contractService.findByShipTime(inputDate+"%");
        Map map = new HashMap<>();
        inputDate = inputDate.replaceAll("-0","-").replaceAll("-","年");
        map.put("time",inputDate);
        map.put("title1","客户名称");
        //2.设置下载信息
        response.setContentType("application/vnd.ms-excel"); //下载excel
        response.setCharacterEncoding("utf-8");
        String fileName = URLEncoder.encode("出货表", "UTF-8");
        response.setHeader("Content-disposition", "attachment;filename=" + fileName + ".xlsx");
        //3.加载excel模板
        String path = session.getServletContext().getRealPath("/")+"/make/tOUTPRODUCT.xlsx";
        //4.创建EasyExcel的excelWtire对象( 用于数据填充)
        ExcelWriter excelWriter = EasyExcel.write(response.getOutputStream())
                .head(ContractProductVo.class) //设置表头
                .withTemplate(path) //加载模板
                .build();
        //获取sheet对象
        WriteSheet sheet = EasyExcel.writerSheet().build();
        //5.调用方法完成填充map数据
        excelWriter.fill(map,sheet);
        //6.调用方法完成填充list数据
        excelWriter.fill(list,sheet);
        //7.属性资源，完成下载
        excelWriter.finish(); //下载excel文件，释放内存资源
    }

}

