package cn.itcast.web.stat;

import cn.itcast.service.stat.StatService;
import cn.itcast.web.controller.BaseController;
import com.alibaba.dubbo.config.annotation.Reference;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/stat")
public class StatController extends BaseController {

    @Reference
    private StatService statService;

    @RequestMapping("/toCharts")
    public String toCharts(String chartsType) {
        return "stat/stat-"+chartsType;
    }

    /**
     * 通过ajax的请求请求，获取厂家的销量统计,返回json
     */
    @RequestMapping("/findFactoryData")
    public @ResponseBody List findFactoryData() {
        return statService.findFactoryData(getLoginCompanyId());
    }

    @RequestMapping("/findSellData")
    public @ResponseBody List findSellData(){
        return statService.findSellData(getLoginCompanyId());
    }

    @RequestMapping("/findOnlineData")
    public @ResponseBody List findOnlineData(){
        return statService.findOnlineData(getLoginCompanyId());
    }
}
