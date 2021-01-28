package cn.itcast.service.system.impl;

import cn.itcast.dao.system.RoleDao;
import cn.itcast.domain.system.Role;
import cn.itcast.service.system.RoleService;
import com.alibaba.dubbo.config.annotation.Service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.UUID;

@Service
public class RoleServiceImpl implements RoleService {
    @Autowired
    private RoleDao roleDao;

    public PageInfo findAll(String loginCompanyId, int page, int size) {
        PageHelper.startPage(page,size);
        List<Role> list = roleDao.findAll(loginCompanyId);
        return new PageInfo(list);
    }

    public void save(Role role) {
        role.setId(UUID.randomUUID().toString());
        roleDao.save(role);
    }

    public void updat(Role role) {
        roleDao.update(role);
    }

    public void delete(String id) {
        roleDao.delete(id);
    }

    public Role findById(String id) {
        return roleDao.findById(id);
    }

    public List<Role> findAll(String loginCompanyId) {
        return roleDao.findAll(loginCompanyId);
    }

    public List<String> findModulesByRoleId(String roleId) {
        return roleDao.findModulesByRoleId(roleId);
    }

    public void updateRoleModule(String roleid, String moduleIds) {
        roleDao.deleteRoleModule(roleid);
        String[] mids = moduleIds.split(",");
        for (String moduleId : mids) {
            roleDao.saveRoleModule(roleid,moduleId);
        }
    }
}
