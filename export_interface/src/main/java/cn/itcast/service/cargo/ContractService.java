package cn.itcast.service.cargo;

import cn.itcast.domain.cargo.Contract;
import cn.itcast.domain.cargo.ContractExample;
import cn.itcast.vo.ContractProductVo;
import com.github.pagehelper.PageInfo;

import java.util.List;
import java.util.Map;


public interface ContractService {

	//根据id查询
    Contract findById(String id);

    //保存
    void save(Contract contract);

    //更新
    void update(Contract contract);

    //删除
    void delete(String id);

    //分页查询
	public PageInfo findAll(ContractExample example, int page, int size);

    public abstract List<ContractProductVo> findByShipTime(String s);
}
