package cn.itcast.service.system.impl;

import cn.itcast.dao.system.ModuleDao;
import cn.itcast.domain.system.Module;
import cn.itcast.domain.system.User;
import cn.itcast.service.system.ModuleService;
import com.alibaba.dubbo.config.annotation.Service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.UUID;

@Service
public class ModuleServiceImpl implements ModuleService {
    @Autowired
    private ModuleDao moduleDao;

    public PageInfo findAll(int page, int size) {
        PageHelper.startPage(page,size);
        List<Module> list = moduleDao.findAll();
        return new PageInfo(list);
    }

    public List<Module> findAll() {
        return moduleDao.findAll();
    }

    public void save(Module module) {
        module.setId(UUID.randomUUID().toString());
        moduleDao.save(module);
    }

    public void update(Module module) {
        moduleDao.update(module);
    }

    public Module findById(String id) {
        return moduleDao.findById(id);
    }

    public void delete(String id) {
        moduleDao.delete(id);
    }

    public List<Module> findByUser(User user) {
        Integer degree = user.getDegree();
        if (degree==0) {
            return moduleDao.findByBelong(0);
        }else if(degree==1){
            return moduleDao.findByBelong(1);
        }else {
            return moduleDao.findByUserId(user.getId());
        }
    }
}
