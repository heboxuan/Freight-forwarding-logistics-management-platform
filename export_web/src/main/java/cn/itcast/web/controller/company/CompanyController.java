package cn.itcast.web.controller.company;

import cn.itcast.domain.company.Company;
import cn.itcast.service.company.CompanyService;
import cn.itcast.web.controller.BaseController;
import com.alibaba.dubbo.config.annotation.Reference;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/company")
public class CompanyController extends BaseController {
    @Reference
    private CompanyService companyService;

    @RequestMapping("/list")
    public String findAll(@RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "10") int size) {
        PageInfo info=companyService.findAll(page,size);
        request.setAttribute("page",info);
        return "company/company-list";
    }

    @RequestMapping("/toAdd")
    public String toAdd() {
        return "company/company-add";
    }

    @RequestMapping("/edit")
    public String edit(Company company) {
        if (StringUtils.isEmpty(company.getId())) {
            companyService.save(company);
        }else {
            companyService.update(company);
        }
        return "redirect:/company/list.do";
    }

    @RequestMapping("/toUpdate")
    public String toUpdate(String id) {
        Company company = companyService.findById(id);
        request.setAttribute("company",company);
        return "company/company-update";
    }

    @RequestMapping("/delete")
    public String delete(String id) {
        companyService.delete(id);
        return "redirect:/company/list.do";
    }

}
