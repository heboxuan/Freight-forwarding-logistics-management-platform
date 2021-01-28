package cn.itcast.web.controller.cargo;

import cn.itcast.common.utils.ImageUploadUtils;
import cn.itcast.domain.cargo.ContractProduct;
import cn.itcast.domain.cargo.ContractProductExample;
import cn.itcast.domain.cargo.Factory;
import cn.itcast.domain.cargo.FactoryExample;
import cn.itcast.service.cargo.ContractProductService;
import cn.itcast.service.cargo.FactoryService;
import cn.itcast.web.controller.BaseController;
import com.alibaba.dubbo.config.annotation.Reference;
import com.alibaba.excel.EasyExcel;
import com.github.pagehelper.PageInfo;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/cargo/contractProduct")
public class ContractProductController extends BaseController {
    @Reference
    private ContractProductService contractProductService;
    @Reference
    private FactoryService factoryService;

    /**
     * 分页查询所有的货物
     * 参数：
     * 当前页：page
     * 每页条数：size
     * 购销合同id：contractId
     */
    @RequestMapping("/list")
    public String list(@RequestParam(defaultValue = "1") int page,
                       @RequestParam(defaultValue = "5") int size, String contractId) {
        //1、根据购销合同的id，查询所有货物
        ContractProductExample example = new ContractProductExample();
        ContractProductExample.Criteria criteria = example.createCriteria();
        criteria.andContractIdEqualTo(contractId);
        PageInfo info = contractProductService.findAll(example, page, size);
        request.setAttribute("page", info);
        //2、为了展示所有的厂家数据下拉框，查询所有的生产货物的厂家
        //根据ctype=“货物”的查询生产厂家
        FactoryExample factoryExample = new FactoryExample();
        FactoryExample.Criteria factoryCriteria = factoryExample.createCriteria();
        factoryCriteria.andCtypeEqualTo("货物");
        List<Factory> list = factoryService.findAll(factoryExample);
        request.setAttribute("factoryList", list);
        //3.为了保存方便，需要将购销合同id，传入到request域中
        request.setAttribute("contractId", contractId);
        return "cargo/product/product-list";
    }

    /**
     * 新增或者修改
     * contractProduct : 其中有一个contractId表示购销合同id
     */
    @RequestMapping("/edit")
    public String edit(ContractProduct contractProduct, MultipartFile productPhoto) throws IOException {
        //1.设置企业属性
        contractProduct.setCompanyId(getLoginCompanyId());
        contractProduct.setCompanyName(getLoginCompanyName());
        //2.判断是否具有id
        if (StringUtils.isEmpty(contractProduct.getId())) {
            if (!productPhoto.isEmpty()) {
                String url = new ImageUploadUtils().upload(productPhoto.getBytes());
                contractProduct.setProductImage(url);
            }
            //3.没有id，调用service保存
            contractProductService.save(contractProduct);
        } else {
            //4.存在id，调用service更新
            contractProductService.update(contractProduct);
        }
        //3.重定向到列表  , 合同id的参数
        return "redirect:/cargo/contractProduct/list.do?contractId=" + contractProduct.getContractId();
    }

    //进入修改页面
    @RequestMapping("/toUpdate")
    public String toUpdate(String id) {
        //1.根据id查询
        ContractProduct contractProduct = contractProductService.findById(id);
        request.setAttribute("contractProduct", contractProduct);
        //2.查询生产厂家
        FactoryExample factoryExample = new FactoryExample();
        FactoryExample.Criteria factoryCriteria = factoryExample.createCriteria();
        factoryCriteria.andCtypeEqualTo("货物");
        List<Factory> list = factoryService.findAll(factoryExample);
        request.setAttribute("factoryList", list);
        return "cargo/product/product-update";
    }

    /**
     * 删除
     * 参数：
     * 1.货物id ： id
     * 2.为了重定向更加方便传递购销合同id：contractId
     */
    @RequestMapping("/delete")
    public String delete(String id, String contractId) {
        //业务逻辑
        contractProductService.delete(id);
        //页面重定向到列表 , 重定向需要拼接参数（购销合同id）
        return "redirect:/cargo/contractProduct/list.do?contractId=" + contractId;
    }

    @RequestMapping("/toImport")
    public String toImport(String contractId) {
        request.setAttribute("contractId", contractId);
        return "cargo/product/product-import";
    }

    //@RequestMapping("/import")
    //public String importExcel(String contractId,MultipartFile file) throws Exception {
    //    //i.解析Excel，获取数据
    //    List<ContractProduct> list = new ArrayList();
    //    //1.根据上传的file对象，构造出excel的工作簿
    //    Workbook wb = new XSSFWorkbook(file.getInputStream());
    //    //2.获取第一页
    //    Sheet sheet = wb.getSheetAt(0);
    //    //3.循环每一行（从第1行开始）
    //    for(int i=1;i<=sheet.getLastRowNum();i++) {
    //        //4.获取每一行对象
    //        Row row = sheet.getRow(i);
    //        //5.每一行的数据封装为货物对象ContractProduct对象
    //        ContractProduct cp = new ContractProduct();
    //        //6.获取行中的每一个单元格，获取单元格中的数据
    //        String factoryName = row.getCell(1).getStringCellValue();
    //        cp.setFactoryName(factoryName);
    //        String productNo = row.getCell(2).getStringCellValue();
    //        cp.setProductNo(productNo);
    //        Integer cnumber = ((Double) row.getCell(3).getNumericCellValue()).intValue();//数量
    //        cp.setCnumber(cnumber);
    //        String packingUnit = row.getCell(4).getStringCellValue(); //包装单位
    //        cp.setPackingUnit(packingUnit);
    //        String loadingRate = row.getCell(5).getNumericCellValue() + ""; //装率
    //        cp.setLoadingRate(loadingRate);
    //        Integer boxNum = ((Double) row.getCell(6).getNumericCellValue()).intValue();//箱数
    //        cp.setBoxNum(boxNum);
    //        Double price = row.getCell(7).getNumericCellValue(); //单价
    //        cp.setPrice(price);
    //        String productDesc = row.getCell(8).getStringCellValue(); // 货物描述
    //        cp.setProductDesc(productDesc);
    //        String productRequest = row.getCell(9).getStringCellValue(); // 要求
    //        cp.setProductRequest(productRequest);
    //        //以上解析的都是excel中的内容，货物对象（购销合同，企业属性）
    //        cp.setCompanyId(getLoginCompanyId());
    //        cp.setCompanyName(getLoginCompanyName());
    //        cp.setContractId(contractId);
    //        list.add(cp);
    //    }
    //    //ii.经过解析之后，会获取到一个货物的list集合，调用service批量保存所有货物
    //    contractProductService.saveAll(list);
    //    return  "redirect:/cargo/contractProduct/list.do?contractId="+contractId;
    //}

    /**
     * 通过EasyExcel完成文件上传解析，批量货物保存
     *  参数：购销合同id
     *  参数：上传的excel文件对象
     */
    @RequestMapping("/import")
    public String importExcel(String contractId,MultipartFile file) throws Exception {
        List<ContractProduct> list = EasyExcel.read(file.getInputStream())
                .head(ContractProduct.class) //设置表头，将数据转化为目标对象
                .sheet(0) //读取第一页数据
                .doReadSync(); //解析excel，获取所有的数据

        for (ContractProduct contractProduct : list) {
            System.out.println(contractProduct);
            contractProduct.setContractId(contractId);
            contractProduct.setCompanyId(getLoginCompanyId());
            contractProduct.setCompanyName(getLoginCompanyName());
        }
        contractProductService.saveAll(list);
        return  "redirect:/cargo/contractProduct/list.do?contractId="+contractId;
    }
}

