package cn.itcast.service.cargo.impl;

import cn.itcast.dao.cargo.*;
import cn.itcast.domain.cargo.*;
import cn.itcast.service.cargo.ContractService;
import cn.itcast.service.cargo.ExportService;
import cn.itcast.vo.ExportProductResult;
import cn.itcast.vo.ExportProductVo;
import cn.itcast.vo.ExportResult;
import cn.itcast.vo.ExportVo;
import com.alibaba.dubbo.config.annotation.Service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.cxf.jaxrs.client.WebClient;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;

@Service
public class ExportServiceImpl implements ExportService {

    @Autowired
    private ExportDao exportDao;
    @Autowired
    private ContractDao contractDao;
    @Autowired
    private ContractProductDao contractProductDao;
    @Autowired
    private ExportProductDao exportProductDao;
    @Autowired
    private ExtCproductDao extCproductDao;
    @Autowired
    private ExtEproductDao extEproductDao;


    /**
     * 保存报运单
     *  参数：
     *      Export ：报运单对象
     *          contractIds:打断字段（勾选的合同id字符串，已“，”隔开）
     *          customerContract：勾选的合同号
     *          state：状态（0-草稿 1-已上报）
     *          proNum：货物数量
     *          extNum：附件数量
     *      ExportProduct：报运单商品
     *          exportId：所属的报运单ID
     *      ExtEproduct：报运单附件
     *          exportId：所属的报运单ID
     *          exportProductId：商品ID
     */
    public void save(Export export) {
        //i.根据勾选的合同生成报运单
        int proNum = 0;
        int extNum = 0;
        //1、设置id
        export.setId(UUID.randomUUID().toString());
        //2、根据勾选合同id，查询所有合同
        String cids[] = export.getContractIds().split(","); //购销合同id数组
        String customerContract = "";
        for (String cid : cids) {
            Contract contract = contractDao.selectByPrimaryKey(cid);
            //3、拼接合同号
            customerContract+= contract.getContractNo() + " ";
            //4、更新购销合同的状态  2 （已报运）
            contract.setState(2);
            contractDao.updateByPrimaryKeySelective(contract);
            proNum += contract.getProNum();
            extNum += contract.getExtNum();
        }
        export.setCustomerContract(customerContract);
        //ii.根据勾选的合同货物生成报运单商品数据
        //1、根据合同id，查询所有的合同货物 (合同id数组)
        ContractProductExample cpe = new ContractProductExample();
        ContractProductExample.Criteria cc = cpe.createCriteria();
        cc.andContractIdIn(Arrays.asList(cids));
        List<ContractProduct> cps = contractProductDao.selectByExample(cpe);
        //2、循环所有的合同货物
        for (ContractProduct cp : cps) {
            //3、一个货物构造一个商品对象数据
            ExportProduct ep = new ExportProduct();
            BeanUtils.copyProperties(cp, ep); //将cp中同名属性赋值到ep对象上
            //4、设置商品id
            ep.setId(UUID.randomUUID().toString());
            //5、设置报运单ID
            ep.setExportId(export.getId());
            exportProductDao.insertSelective(ep);
            //iii.根据勾选的合同附件生成报运单附件数据
            //1、根据当前合同货物的id，查询此货物的所有附件 (contractProductId)
            ExtCproductExample example = new ExtCproductExample();
            ExtCproductExample.Criteria criteria = example.createCriteria();
            criteria.andContractProductIdEqualTo(cp.getId());
            List<ExtCproduct> ecps = extCproductDao.selectByExample(example);
            //2、循环此合同货物的所有附件
            for (ExtCproduct ecp : ecps) {
                //3、一个合同附件，生成一个报运单附件
                ExtEproduct eep = new ExtEproduct();
                BeanUtils.copyProperties(ecp, eep);
                //4、设置附件id
                eep.setId(UUID.randomUUID().toString());
                //5、设置报运单id
                eep.setExportId(export.getId());
                //6、设置商品id
                eep.setExportProductId(ep.getId());
                //7、保存到数据库中
                extEproductDao.insertSelective(eep);
            }
        }

        export.setProNum(proNum);
        export.setExtNum(extNum);
        export.setState(0); //草稿
        exportDao.insertSelective(export);
    }

    //明天实现
    public void update(Export export) {
        exportDao.updateByPrimaryKeySelective(export);
        if (export.getExportProducts()!=null) {
            for (ExportProduct exportProduct : export.getExportProducts()) {
                exportProductDao.updateByPrimaryKeySelective(exportProduct);
            }
        }
    }

    //无用
    public void delete(String id) {

    }

    @Override
    public Export findById(String id) {
        return exportDao.selectByPrimaryKey(id);
    }


    @Override
    public PageInfo findAll(ExportExample example, int page, int size) {
        PageHelper.startPage(page,size);
        List<Export> list = exportDao.selectByExample(example);
        return new PageInfo(list);
    }

    /**
     * 海关保运
     *  参数：报运单ID
     */
    public void exportE(String id) {
        //1.根据id查询报运单
        Export export = exportDao.selectByPrimaryKey(id);
        //2.根据报运单id查询报运单的所有商品
        ExportProductExample example = new ExportProductExample();
        ExportProductExample.Criteria criteria = example.createCriteria();
        //条件：商品中有一个字段ExportID（商品所属的报运单id）
        criteria.andExportIdEqualTo(id);
        List<ExportProduct> eps = exportProductDao.selectByExample(example);
        //3.将Export对象转化为海关保运的ExportVo对象
        ExportVo evo = new ExportVo();
        BeanUtils.copyProperties(export,evo);
        //设置报运单id
        evo.setExportId(export.getId());
        //4.将ExportProduct对象转化为海关保运的ExportProduct对象
        List<ExportProductVo> epvos = new ArrayList<>();
        for (ExportProduct ep : eps) {
            ExportProductVo epvo = new ExportProductVo();
            BeanUtils.copyProperties(ep,epvo);
            epvo.setExportProductId(ep.getId());
            epvos.add(epvo);
        }
        evo.setProducts(epvos); //报运单vo对象中包含了所有的商品
        //5.通过WebClient工具类发送数据
        WebClient wc = WebClient.create("http://localhost:9001/ws/export/ep");
        /**
         * 参数
         *  传递的数据对象，
         *  响应的数据类型，
         * 返回值
         *  响应数据
         */
        Integer res = wc.post(evo, Integer.class);
        //6.更新数据库状态（2）
        if(res == 0) {
            export.setState(2);
            exportDao.updateByPrimaryKeySelective(export);
        }
    }

    //查询所有的报运单
    public List<Export> findAll(ExportExample example) {
        return exportDao.selectByExample(example);
    }

    /**
     * 更新保运结果
     *  ExportResult : 海关的保运结果
     *          exportId： 报运单id
     *          state：海关的保运状态
     *          remark：保运结果的中文说明
     *          products ：
     *              报运单的所有商品信息
     *                  exportProductId：商品id
     *                  tax：商品关说
     */
    public void updateE(ExportResult result) {
        //1.查询报运单
        Export export = exportDao.selectByPrimaryKey(result.getExportId());
        //2.更新报运单数据
        export.setState(result.getState());
        export.setRemark(result.getRemark());
        exportDao.updateByPrimaryKeySelective(export);
        //3.循环报运单所有商品
        for (ExportProductResult product : result.getProducts()) {
            ExportProduct exportProduct = exportProductDao.selectByPrimaryKey(product.getExportProductId());
            exportProduct.setTax(product.getTax());
            //4.更新报运单税
            exportProductDao.updateByPrimaryKeySelective(exportProduct);
        }
    }
}
