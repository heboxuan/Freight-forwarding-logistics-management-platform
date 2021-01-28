package cn.itcast.dao.system;

import cn.itcast.domain.system.User;
import org.apache.ibatis.annotations.Param;
import java.util.List;


public interface UserDao {

	//根据企业id查询全部
	List<User> findAll(String companyId);

	//根据id查询
    User findById(String userId);

	//根据id删除
	int delete(String userId);

	//保存
	int save(User user);

	//更新
	int update(User user);

	public abstract List<String> findRolesByUserId(String id);

	public abstract void deleteUserRole(String userid);

	public abstract void saveUserRole(@Param("userId") String userid, @Param("roleId") String roleId);

	public abstract User findByEmail(String email);
}