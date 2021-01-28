package cn.itcast.service.system;

import cn.itcast.domain.system.Role;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface RoleService {
    public abstract PageInfo findAll(String loginCompanyId, int page, int size);

    public abstract void save(Role role);

    public abstract void updat(Role role);

    public abstract void delete(String id);

    public abstract Role findById(String id);

    public abstract List<Role> findAll(String loginCompanyId);

    public abstract List<String> findModulesByRoleId(String roleId);

    public abstract void updateRoleModule(String roleid, String moduleIds);
}
