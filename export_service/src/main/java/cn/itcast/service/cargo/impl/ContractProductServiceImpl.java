package cn.itcast.service.cargo.impl;

import cn.itcast.dao.cargo.ContractDao;
import cn.itcast.dao.cargo.ContractProductDao;
import cn.itcast.dao.cargo.ExtCproductDao;
import cn.itcast.domain.cargo.*;
import cn.itcast.service.cargo.ContractProductService;
import com.alibaba.dubbo.config.annotation.Service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.UUID;

@Service
public class ContractProductServiceImpl implements ContractProductService {

    @Autowired
    private ContractProductDao contractProductDao;

    @Autowired
    private ContractDao contractDao;

    @Autowired
    private ExtCproductDao extCproductDao;


    /**
     * 保存货物
     *  参数：货物对象
     *     购销合同id：contractId
     *     单价：price
     *     数量：cnumber
     *     总金额：amount
     *  购销合同表中字段：
     *      totalAmount：总金额
     *      proNum：货物数量
     *      extNum：附件数量
     */
    public void save(ContractProduct cp) {
        //1.计算当前货物总金额
        double money = 0.0;
        if (cp.getPrice() != null && cp.getCnumber() != null) {
            money = cp.getPrice() * cp.getCnumber();
        }
        cp.setAmount(money);
        //2.设置货物的id
        cp.setId(UUID.randomUUID().toString());
        //3.保存货物到数据库中
        contractProductDao.insertSelective(cp);
        //4.根据购销合同id查询购销合同
        Contract contract = contractDao.selectByPrimaryKey(cp.getContractId());
        //5.设置合同总金额（原有金额+添加的货物金额）
        contract.setTotalAmount(contract.getTotalAmount() + money);
        //6.修改合同的货物数量（+1）
        contract.setProNum(contract.getProNum() + 1);
        //7.更新购销合同
        contractDao.updateByPrimaryKeySelective(contract);
    }

    /**
     * 更新货物
     *  更新的货物对象
     *      * 获取id
     *      * 购销合同id
     */
    public void update(ContractProduct newCp) {
        //1.计算更新之后的总金额
        double newMoney = 0.0;
        if (newCp.getPrice() != null && newCp.getCnumber() != null) {
            newMoney = newCp.getPrice() * newCp.getCnumber();
        }
        newCp.setAmount(newMoney);
        //2.获取更新之前的总金额（查询数据库）
        ContractProduct oldCp = contractProductDao.selectByPrimaryKey(newCp.getId());
        double oldMoney = oldCp.getAmount();//总金额
        //3.更新货物
        contractProductDao.updateByPrimaryKeySelective(newCp);
        //4.根据id查询购销合同
        Contract contract = contractDao.selectByPrimaryKey(newCp.getContractId());
        //5.设置购销合同总金额
        contract.setTotalAmount(contract.getTotalAmount() - oldMoney + newMoney);
        //6.更新购销合同
        contractDao.updateByPrimaryKeySelective(contract);
    }

    /**
     * 删除货物
     *  参数：货物id
     *  附件对象：ExtCproduct ，其中包含一个contractProductId的字段（表示货物id）
     */
    public void delete(String id) {
        //1、根据货物id查询货物
        ContractProduct cp = contractProductDao.selectByPrimaryKey(id);
        //2、根据id删除货物
        contractProductDao.deleteByPrimaryKey(id);
        //3、根据货物id查询所有货物附件,
        ExtCproductExample example = new ExtCproductExample();
        ExtCproductExample.Criteria criteria = example.createCriteria();
        criteria.andContractProductIdEqualTo(id);
        List<ExtCproduct> ecps = extCproductDao.selectByExample(example); //所有附件
        //4、计算删除的总金额（货物金额+附件金额）
        double money = cp.getAmount();
        //5、循环删除所所有附件
        for (ExtCproduct ecp : ecps) {
            money += ecp.getAmount() ; //附件的总金额
            extCproductDao.deleteByPrimaryKey(ecp.getId());//根据附件id删除附件
        }
        //6、根据id查询购销合同
        Contract contract = contractDao.selectByPrimaryKey(cp.getContractId());
        //7、设置购销合同总金额
        contract.setTotalAmount(contract.getTotalAmount() - money);
        //8、设置货物数，附件数
        contract.setProNum(contract.getProNum() -1); //货物数
        contract.setExtNum(contract.getExtNum() - ecps.size());
        //9、更新购销合同
        contractDao.updateByPrimaryKeySelective(contract);
    }


    //根据id查询
    public ContractProduct findById(String id) {
        return contractProductDao.selectByPrimaryKey(id);
    }

    //分页查询
    public PageInfo findAll(ContractProductExample example, int page, int size) {
        PageHelper.startPage(page,size);
        List<ContractProduct> list = contractProductDao.selectByExample(example);
        return new PageInfo(list);
    }

    @Override
    public void saveAll(List<ContractProduct> list) {
        for (ContractProduct contractProduct : list) {
            save(contractProduct);
        }
    }
}
