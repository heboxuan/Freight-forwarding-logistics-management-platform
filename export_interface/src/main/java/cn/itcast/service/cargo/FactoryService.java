package cn.itcast.service.cargo;



import cn.itcast.domain.cargo.Factory;
import cn.itcast.domain.cargo.FactoryExample;

import java.util.List;
import java.util.Map;

/**
 * 工厂service接口
 */
public interface FactoryService {

	/**
	 * 条件查询
	 */
	public List<Factory> findAll(FactoryExample example);
}
