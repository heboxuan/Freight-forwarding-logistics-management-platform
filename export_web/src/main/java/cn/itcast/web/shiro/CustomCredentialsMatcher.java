package cn.itcast.web.shiro;

import cn.itcast.common.utils.Encrypt;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authc.credential.SimpleCredentialsMatcher;

public class CustomCredentialsMatcher extends SimpleCredentialsMatcher {
    //密码比价方法
    public boolean doCredentialsMatch(AuthenticationToken token, AuthenticationInfo info) {
        UsernamePasswordToken upToken=(UsernamePasswordToken)token;
        String email = upToken.getUsername();
        String password = new String(upToken.getPassword());
        String dbPassword=(String)info.getCredentials();
        password= Encrypt.md5(password,email);
        return dbPassword.equals(password);
    }
}
