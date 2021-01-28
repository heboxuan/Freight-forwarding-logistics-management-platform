package cn.itcast.service.stat.impl;

import cn.itcast.dao.stat.StatDao;
import cn.itcast.service.stat.StatService;
import com.alibaba.dubbo.config.annotation.Service;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Map;

@Service
public class StatServiceImpl implements StatService {

    @Autowired
    private StatDao statDao;

    //生产厂家的销量数据
    public List<Map> findFactoryData(String companyId) {
        return statDao.findFactoryData(companyId);
    }

    //产品销量排行榜数据
    public List<Map> findSellData(String companyId) {
        return statDao.findSellData(companyId);
    }

    //系统访问压力图数据
    public List<Map> findOnlineData(String companyId) {
        return statDao.findOnlineData(companyId);
    }
}

