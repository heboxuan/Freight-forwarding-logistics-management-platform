package cn.itcast.web.controller;



import cn.itcast.domain.system.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class BaseController {

    @Autowired
    protected HttpServletRequest request;

    @Autowired
    protected HttpServletResponse response;

    @Autowired
    protected HttpSession session;


    /**
     * 1、模拟当前登录用户所属的企业id
     */
    protected String getLoginCompanyId(){
        Object obj = session.getAttribute("loginUser");
        if(obj != null) {
            User user = (User) obj;
            return user.getCompanyId();
        }
        return "" ;//模拟，登录之后再解决
    }

    /**
     * 2、模拟当前登录用户所属的企业名称
     */
    protected String getLoginCompanyName(){
        Object obj = session.getAttribute("loginUser");
        if(obj != null) {
            User user = (User) obj;
            return user.getCompanyName();
        }
        return "" ;//模拟，登录之后再解决
    }


    //获取当前登录的用户对象
    public User getLoginUser() {
        Object obj = session.getAttribute("loginUser");
        if(obj != null) {
            User user = (User) obj;
            return user;
        }
        return null;
    }
}
