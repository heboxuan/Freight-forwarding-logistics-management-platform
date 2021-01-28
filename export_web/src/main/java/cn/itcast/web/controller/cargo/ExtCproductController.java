package cn.itcast.web.controller.cargo;

import cn.itcast.domain.cargo.*;
import cn.itcast.service.cargo.ExtCproductService;
import cn.itcast.service.cargo.FactoryService;
import cn.itcast.web.controller.BaseController;
import com.alibaba.dubbo.config.annotation.Reference;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/cargo/extCproduct")
public class ExtCproductController extends BaseController {

    @Reference
    private ExtCproductService extCproductService; //附件service接口

    @Reference
    private FactoryService factoryService;

    @RequestMapping("/list")
    public String list(@RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "5")int size,
                       String contractId,String contractProductId) {
        //1、根据货物id查询所有附件 （附件表中有一个货物id的字段：contractProductId）
        ExtCproductExample example = new ExtCproductExample();
        ExtCproductExample.Criteria criteria = example.createCriteria();
        criteria.andContractProductIdEqualTo(contractProductId);
        PageInfo info = extCproductService.findAll(example, page, size);
        request.setAttribute("page",info);
        //2、查询所有附件的生产厂家
        FactoryExample factoryExample = new FactoryExample();
        FactoryExample.Criteria factoryCriteria = factoryExample.createCriteria();
        factoryCriteria.andCtypeEqualTo("附件");
        List<Factory> list = factoryService.findAll(factoryExample);
        request.setAttribute("factoryList",list);
        //3、为了保存方便，需要将货物id和购销合同id存入request中，在页面展示
        request.setAttribute("contractId",contractId);
        request.setAttribute("contractProductId",contractProductId);
        //跳转页面
        return "cargo/extc/extc-list";
    }

    /**
     * 新增或者修改
     *  ExtCproduct  : 附件
     *      包含两个属性：
     *          contractId：购销合同id
     *          contractProductId:货物id
     */
    @RequestMapping("/edit")
    public String edit(ExtCproduct ext) {
        //1.设置企业属性
        ext.setCompanyId(getLoginCompanyId());
        ext.setCompanyName(getLoginCompanyName());
        //2.判断是否具有id
        if (StringUtils.isEmpty(ext.getId())) {
            //3.没有id，调用service保存
            extCproductService.save(ext);
        }else {
            //4.存在id，调用service更新
            extCproductService.update(ext);
        }
        //3.重定向到列表  , 合同id的参数
        return  "redirect:/cargo/extCproduct/list.do?contractId="+ext.getContractId()+"&contractProductId="+ext.getContractProductId();
    }

    /**
     * 进入修改页面
     */
    @RequestMapping("/toUpdate")
    public String toUpdate(String id) {
        //1.根据id查询附件
        ExtCproduct extCproduct = extCproductService.findById(id);
        request.setAttribute("extCproduct",extCproduct);
        //2.查询生产厂家
        FactoryExample factoryExample = new FactoryExample();
        FactoryExample.Criteria factoryCriteria = factoryExample.createCriteria();
        factoryCriteria.andCtypeEqualTo("附件");
        List<Factory> list = factoryService.findAll(factoryExample);
        request.setAttribute("factoryList",list);
        return "cargo/extc/extc-update";
    }

    /**
     * 附件id : id
     * 为了方便页面跳转，加入以下两个参数
     *  购销合同id：contractId
     *  货物id：contractProductId
     */
    @RequestMapping("/delete")
    public String delete(String id,String contractId,String contractProductId) {
        //业务逻辑
        extCproductService.delete(id);
        //页面重定向到列表 , 重定向需要拼接参数（购销合同id）
        return  "redirect:/cargo/extCproduct/list.do?contractId="+contractId+"&contractProductId="+contractProductId;
    }
}
