package cn.itcast.service.cargo.impl;

import cn.itcast.dao.cargo.ContractDao;
import cn.itcast.domain.cargo.Contract;
import cn.itcast.domain.cargo.ContractExample;
import cn.itcast.service.cargo.ContractService;
import cn.itcast.vo.ContractProductVo;
import com.alibaba.dubbo.config.annotation.Service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;
import java.util.List;
import java.util.UUID;

@Service
public class ContractServiceImpl implements ContractService {
    @Autowired
    private ContractDao contractDao;

    /**
     * 多条件的分页查询
     */
    public PageInfo findAll(ContractExample example,int page, int size) {
        PageHelper.startPage(page,size);
        List<Contract> list = contractDao.selectByExample(example);
        return new PageInfo(list);
    }

    //保存
    public void save(Contract contract) {
        contract.setId(UUID.randomUUID().toString());
        contract.setCreateTime(new Date()); //添加日期
        contract.setTotalAmount(0d);        //购销合同总金额
        contract.setProNum(0);              //货物数量
        contract.setExtNum(0);              //附件数量
        contract.setState(0);               //草稿（刚刚录入数据）
        contractDao.insertSelective(contract);
    }

    //更新
    public void update(Contract contract) {
        contractDao.updateByPrimaryKeySelective(contract);
    }

    //删除
    public void delete(String id) {
        contractDao.deleteByPrimaryKey(id);
    }

    //根据id查询
    public Contract findById(String id) {
        return contractDao.selectByPrimaryKey(id);
    }

    @Override
    public List<ContractProductVo> findByShipTime(String shipTime) {
        return contractDao.findByShipTime(shipTime);
    }
}
