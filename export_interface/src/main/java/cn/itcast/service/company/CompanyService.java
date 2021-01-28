package cn.itcast.service.company;

import cn.itcast.domain.company.Company;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface CompanyService {
    public abstract PageInfo findAll(int page, int size);

    public abstract void save(Company company);

    public abstract Company findById(String id);

    public abstract void update(Company company);

    public abstract void delete(String id);
}
