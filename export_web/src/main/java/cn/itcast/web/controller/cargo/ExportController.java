package cn.itcast.web.controller.cargo;

import cn.itcast.domain.cargo.*;
import cn.itcast.domain.system.User;
import cn.itcast.service.cargo.ContractService;
import cn.itcast.service.cargo.ExportProductService;
import cn.itcast.service.cargo.ExportService;
import cn.itcast.web.controller.BaseController;
import com.alibaba.dubbo.config.annotation.Reference;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/cargo/export/")
public class ExportController extends BaseController {
    @Reference
    private ContractService contractService;

    @Reference
    private ExportService exportService;

    @Reference
    private ExportProductService exportProductService;

    /**
     * 合同管理：查询所有的购销合同（条件：状态=1）
     */
    @RequestMapping("/contractList")
    public String contractList(@RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "5")int size) {
        //1.创建example
        ContractExample example = new ContractExample();
        //2.通过example创建criteria对象
        ContractExample.Criteria criteria = example.createCriteria();
        //3.向criteria对象设置条件
         criteria.andCompanyIdEqualTo(getLoginCompanyId()); //企业id
        criteria.andStateEqualTo(1);
        example.setOrderByClause("create_time DESC");//设置排序
        //4.发起调用
        PageInfo info = contractService.findAll(example,page, size);
        request.setAttribute("page",info);
        //跳转页面
        return "cargo/export/export-contractList";
    }

    /**
     * 分页查询报运单列表
     */
    @RequestMapping("/list")
    public String list(@RequestParam(defaultValue = "1") int page,
                       @RequestParam(defaultValue = "10")  int size) {
        ExportExample example = new ExportExample();
        ExportExample.Criteria criteria = example.createCriteria();
        criteria.andCompanyIdEqualTo(getLoginCompanyId());
        PageInfo info = exportService.findAll(example, page, size);
        request.setAttribute("page", info);
        return "cargo/export/export-list";
    }

    @RequestMapping("/toExport")
    public String toExport(String id) {
        request.setAttribute("id",id);
        return "cargo/export/export-toExport";
    }

    @RequestMapping("/edit")
    public String edit(Export export) {
        export.setCompanyId(getLoginCompanyId());
        export.setCompanyName(getLoginCompanyName());
        if (StringUtils.isEmpty(export.getId())) {
            exportService.save(export);
        } else {
            exportService.update(export);
        }
        return "redirect:/cargo/export/list.do";
    }

    @RequestMapping("/toUpdate")
    public String toUpdate(String id) {
        Export export = exportService.findById(id);
        request.setAttribute("export",export);
        ExportProductExample exportProductExample=new ExportProductExample();
        ExportProductExample.Criteria criteria = exportProductExample.createCriteria();
        criteria.andExportIdEqualTo(id);
        List<ExportProduct> list = exportProductService.findAll(exportProductExample);
        request.setAttribute("eps",list);
        return "cargo/export/export-update";
    }

    @RequestMapping("/exportE")
    public String exportE(String id) {
        exportService.exportE(id);
        return "redirect:/cargo/export/list.do";
    }
}
