package cn.itcast.web.shiro;

import cn.itcast.domain.system.Module;
import cn.itcast.domain.system.User;
import cn.itcast.service.system.ModuleService;
import cn.itcast.service.system.UserService;
import com.alibaba.dubbo.config.annotation.Reference;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class AuthRealm extends AuthorizingRealm {

    @Reference
    private UserService userService;

    @Reference
    private ModuleService moduleService;

    //授权
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        User user=(User)principalCollection.getPrimaryPrincipal();
        List<Module> modules = moduleService.findByUser(user);
        Set<String> permissions=new HashSet<>();
        for (Module module : modules) {
            permissions.add(module.getName());
        }
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
        info.setStringPermissions(permissions);
        return info;
    }

    //认证
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        UsernamePasswordToken upToken=(UsernamePasswordToken)authenticationToken;
        String email = upToken.getUsername();
        String password = new String(upToken.getPassword());
        User user = userService.findByEmail(email);
        if (user!=null) {
            return new SimpleAuthenticationInfo(user,user.getPassword(),getName());
        }
        return null;
    }
}
