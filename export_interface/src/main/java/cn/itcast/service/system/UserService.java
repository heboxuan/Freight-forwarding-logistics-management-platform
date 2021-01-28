package cn.itcast.service.system;

import cn.itcast.domain.system.User;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface UserService {
    public abstract PageInfo findAll(String loginCompanyId, int page, int size);

    public abstract void save(User user);

    public abstract void update(User user);

    public abstract User findById(String id);

    public abstract void delete(String id);

    public abstract List<String> findRolesByUserId(String id);

    public abstract void changeRole(String userid, String[] roleIds);

    public abstract User findByEmail(String email);
}
