package cn.itcast.service.company.impl;

import cn.itcast.dao.company.CompanyDao;
import cn.itcast.domain.company.Company;
import cn.itcast.domain.company.CompanyExample;
import cn.itcast.service.company.CompanyService;
import com.alibaba.dubbo.config.annotation.Service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import sun.plugin.util.UIUtil;

import java.util.List;
import java.util.UUID;

@Service
public class CompanyServiceImpl implements CompanyService {
    @Autowired
    private CompanyDao companyDao;

    @Override
    public PageInfo findAll(int page, int size) {
        PageHelper.startPage(page,size);
        CompanyExample example=new CompanyExample();
        List<Company> list = companyDao.selectByExample(example);
        return new PageInfo(list);
    }

    public void save(Company company) {
        company.setId(UUID.randomUUID().toString());
        companyDao.insertSelective(company);
    }

    public Company findById(String id) {
        return companyDao.selectByPrimaryKey(id);
    }

    public void update(Company company) {
        companyDao.updateByPrimaryKeySelective(company);
    }

    public void delete(String id) {

        companyDao.deleteByPrimaryKey(id);
    }
}
