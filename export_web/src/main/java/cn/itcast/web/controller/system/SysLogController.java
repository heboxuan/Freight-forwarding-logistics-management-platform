package cn.itcast.web.controller.system;

import cn.itcast.service.system.SysLogService;
import cn.itcast.web.controller.BaseController;
import com.alibaba.dubbo.config.annotation.Reference;
import com.alibaba.dubbo.config.annotation.Service;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/system/log")
public class SysLogController extends BaseController {
    @Reference
    private SysLogService sysLogService;

    @RequestMapping("/list")
    public String list(
            @RequestParam(defaultValue = "1") int page,
            @RequestParam(defaultValue = "10") int size) {
        PageInfo info=sysLogService.findAll(getLoginCompanyId(),page,size);
        request.setAttribute("page",info);
        return "system/log/log-list";
    }
}
