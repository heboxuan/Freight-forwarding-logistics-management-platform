package cn.itcast.dao.system;

import cn.itcast.domain.system.Role;
import org.apache.ibatis.annotations.Param;
import java.util.List;


public interface RoleDao {

    //根据id查询
    Role findById(String id);

    //查询全部用户
    List<Role> findAll(String companyId);

	//根据id删除
    int delete(String id);

	//添加
    int save(Role role);

	//更新
    int update(Role role);

    public abstract List<String> findModulesByRoleId(String roleId);

    public abstract void deleteRoleModule(String roleId);

    public abstract void saveRoleModule(@Param("roleId") String roleId, @Param("moduleId")String moduleId);
}