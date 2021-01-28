package cn.itcast.service.cargo;


import cn.itcast.domain.cargo.ExportProduct;
import cn.itcast.domain.cargo.ExportProductExample;
import com.github.pagehelper.PageInfo;

import java.util.List;


public interface ExportProductService {

	public List<ExportProduct> findAll(ExportProductExample exportProductExample);
}
