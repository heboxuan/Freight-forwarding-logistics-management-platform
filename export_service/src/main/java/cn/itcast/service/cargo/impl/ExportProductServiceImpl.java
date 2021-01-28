package cn.itcast.service.cargo.impl;

import cn.itcast.dao.cargo.ExportProductDao;
import cn.itcast.domain.cargo.ExportProduct;
import cn.itcast.domain.cargo.ExportProductExample;
import cn.itcast.service.cargo.ExportProductService;
import com.alibaba.dubbo.config.annotation.Service;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * 报运单商品
 */
@Service
public class ExportProductServiceImpl implements ExportProductService {

    @Autowired
    private ExportProductDao exportProductDao;

    @Override
    public List<ExportProduct> findAll(ExportProductExample exportProductExample) {
        return exportProductDao.selectByExample(exportProductExample);
    }
}
