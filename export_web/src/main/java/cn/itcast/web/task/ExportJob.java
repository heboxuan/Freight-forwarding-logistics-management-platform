package cn.itcast.web.task;

import cn.itcast.domain.cargo.Export;
import cn.itcast.domain.cargo.ExportExample;
import cn.itcast.service.cargo.ExportService;
import cn.itcast.vo.ExportResult;
import com.alibaba.dubbo.config.annotation.Reference;
import com.alibaba.dubbo.config.annotation.Service;
import org.apache.cxf.jaxrs.client.WebClient;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * 定时执行此类中的方法
 */
public class ExportJob {

    @Reference
    private ExportService exportService;

    /**
     * 每5秒打印时间
     *  java方法只关心业务逻辑：打印系统时间
     *  1.没有参数
     *  2.没有返回值
     */
    public void execute() {
        //1.查询数据库中状态=2的所有报运单（已经发送到海关，没有结果） List<Export> list
        ExportExample example = new ExportExample();
        ExportExample.Criteria criteria = example.createCriteria();
        criteria.andStateEqualTo(2l);
        List<Export> list = exportService.findAll(example);
        //2.循环所有商品对象，调用海关平台获取数据响应 ExportResult对象（包含所有商品的税）
        for (Export export : list) {
            WebClient wc = WebClient.create("http://localhost:9001/ws/export/ep/"+export.getId());
            ExportResult result = wc.get(ExportResult.class);
            //3.判断保运状态（不等于2调用service更新报运单和商品的信息）
            if(result.getState() != 2) { //已经具有保运结果
                exportService.updateE(result);
            }
        }
    }
}

