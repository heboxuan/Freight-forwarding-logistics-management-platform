package cn.itcast.web.controller.system;

import cn.itcast.domain.system.Dept;
import cn.itcast.service.system.DeptService;
import cn.itcast.web.controller.BaseController;
import com.alibaba.dubbo.config.annotation.Reference;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/system/dept")
public class DeptController extends BaseController {
    @Reference
    private DeptService deptService;

    @RequestMapping("/list")
    public String list(
            @RequestParam(defaultValue = "1") int page,
            @RequestParam(defaultValue = "10") int size
    ) {
        PageInfo info = deptService.findAll(super.getLoginCompanyId(), page, size);
        request.setAttribute("page", info);
        return "system/dept/dept-list";
    }

    @RequestMapping("/toAdd")
    public String toAdd() {
        List<Dept> list=deptService.findAll(super.getLoginCompanyId());
        request.setAttribute("deptList",list);
        return "system/dept/dept-add";
    }

    @RequestMapping("/edit")
    public String edit(Dept dept) {
        dept.setCompanyId(getLoginCompanyId());
        dept.setCompanyName(getLoginCompanyName());
        if (StringUtils.isEmpty(dept.getId())) {
            deptService.save(dept);
        } else {
            deptService.update(dept);
        }
        return "redirect:/system/dept/list.do";
    }

    @RequestMapping("/toUpdate")
    public String toUpdat(String id) {
        Dept dept=deptService.findById(id);
        request.setAttribute("dept",dept);
        List<Dept> list = deptService.findAll(super.getLoginCompanyId());
        request.setAttribute("deptList",list);
        return "system/dept/dept-update";
    }

    @RequestMapping("/delete")
    public String delete(String id) {
        deptService.delete(id);
        return "redirect:/system/dept/list.do";
    }
}
