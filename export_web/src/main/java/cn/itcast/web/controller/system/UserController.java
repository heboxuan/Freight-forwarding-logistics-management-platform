package cn.itcast.web.controller.system;

import cn.itcast.common.utils.Encrypt;
import cn.itcast.common.utils.MailUtil;
import cn.itcast.domain.system.Dept;
import cn.itcast.domain.system.Role;
import cn.itcast.domain.system.User;
import cn.itcast.service.system.DeptService;
import cn.itcast.service.system.RoleService;
import cn.itcast.service.system.UserService;
import cn.itcast.web.controller.BaseController;
import cn.itcast.web.utils.MessageProducer;
import com.alibaba.dubbo.config.annotation.Reference;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/system/user")
public class UserController extends BaseController {
    @Reference
    private UserService userService;
    @Reference
    private DeptService deptService;
    @Reference
    private RoleService roleService;

    @Autowired
    private MessageProducer messageProducer;


    @RequestMapping("/list")
    public String list(
            @RequestParam(defaultValue = "1")int page,
            @RequestParam(defaultValue = "10")int size
    ) {
        PageInfo info=userService.findAll(getLoginCompanyId(),page,size);
        request.setAttribute("page",info);
        return "system/user/user-list";
    }

    @RequestMapping("/toAdd")
    public String toAdd() {
        List<Dept> deptList = deptService.findAll(getLoginCompanyId());
        request.setAttribute("deptList",deptList);
        return "system/user/user-add";
    }



    @RequestMapping("/toUpdate")
    public String toUpdate(String id) {
        User user=userService.findById(id);
        request.setAttribute("user",user);
        List<Dept> deptList = deptService.findAll(getLoginCompanyId());
        request.setAttribute("deptList",deptList);
        return "system/user/user-update";
    }

    @RequestMapping("/delete")
    public String delete(String id) {
        userService.delete(id);
        return "redirect:/system/user/list.do";
    }

    @RequestMapping("/roleList")
    public String roleList(String id) {
        User user = userService.findById(id);
        request.setAttribute("user",user);
        List<Role> roleList=roleService.findAll(getLoginCompanyId());
        request.setAttribute("roleList",roleList);
        List<String> roles=userService.findRolesByUserId(id);
        String userRoleStr="";
        for (String roleId : roles) {
            userRoleStr+=roleId+" ";
        }
        request.setAttribute("userRoleStr",userRoleStr);
        return "system/user/user-role";
    }

    @RequestMapping("/changeRole")
    public String changeRole(String userid, String[] roleIds) {
        userService.changeRole(userid,roleIds);
        return "redirect:/system/user/list.do";
    }

    @RequestMapping(value = "/edit",name = "保存或者更新用户")
    public String edit(User user) throws Exception {
        //1、设置企业参数
        user.setCompanyId(getLoginCompanyId());
        user.setCompanyName(getLoginCompanyName());
        //2、判断是否具有id
        if(StringUtils.isEmpty(user.getId())) {
            String password = user.getPassword();
            user.setPassword(Encrypt.md5(password,user.getEmail()));
            //2.1 没有id，保存
            userService.save(user);

//            //发送邮件
            String to = user.getEmail();
            String subject = "欢迎使用Saas-Export系统";
            String content = "尊敬的用户您好,欢迎使用Saas-Export系统。您的访问地址是 http://127.0.0.1:8088 , 登录用户名："+
                    user.getEmail()+", 登录密码" + password;
//            MailUtil.sendMsg(to,subject,content);

            Map<String,String> map = new HashMap<>();
            map.put("to", to);
            map.put("subject", subject);
            map.put("content", content);

            messageProducer.send("user.insert", map);

        }else {
            //2.2 有id，更新
            userService.update(user);
        }
        //3、重定向到列表
        return "redirect:/system/user/list.do";
    }

}
