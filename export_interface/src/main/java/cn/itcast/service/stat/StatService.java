package cn.itcast.service.stat;

import java.util.List;
import java.util.Map;

/**
 * 统计分析的service接口
 */
public interface StatService {

    //生产厂家的销量数据
    List<Map> findFactoryData(String companyId);

    //产品销量排行榜数据
    List<Map> findSellData(String companyId);

    //系统访问压力图数据
    List<Map> findOnlineData(String companyId);
}

