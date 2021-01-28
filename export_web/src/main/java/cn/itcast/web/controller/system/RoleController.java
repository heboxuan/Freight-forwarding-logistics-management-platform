package cn.itcast.web.controller.system;

import cn.itcast.domain.system.Module;
import cn.itcast.domain.system.Role;
import cn.itcast.service.system.ModuleService;
import cn.itcast.service.system.RoleService;
import cn.itcast.web.controller.BaseController;
import com.alibaba.dubbo.config.annotation.Reference;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/system/role")
public class RoleController extends BaseController {
    @Reference
    private RoleService roleService;

    @Reference
    private ModuleService moduleService;

    @RequestMapping("/list")
    public String list(
            @RequestParam(defaultValue = "1") int page,
            @RequestParam(defaultValue = "10") int size
    ) {
        PageInfo info=roleService.findAll(getLoginCompanyId(),page,size);
        request.setAttribute("page",info);
        return "system/role/role-list";
    }

    @RequestMapping("/toAdd")
    public String toAdd() {
        return "system/role/role-add";
    }

    @RequestMapping("/toUpdate")
    public String toUpdate(String id) {
        Role role=roleService.findById(id);
        request.setAttribute("role",role);
        return "system/role/role-update";
    }

    @RequestMapping("/edit")
    public String edit(Role role) {
        role.setCompanyId(getLoginCompanyId());
        role.setCompanyName(getLoginCompanyName());
        if (StringUtils.isEmpty(role.getId())) {
            roleService.save(role);
        } else {
            roleService.updat(role);
        }
        return "redirect:/system/role/list.do";
    }

    @RequestMapping("/delete")
    public String delete(String id) {
        roleService.delete(id);
        return "redirect:/system/role/list.do";
    }

    @RequestMapping("/roleModule")
    public String roleModule(String roleid) {
        Role role = roleService.findById(roleid);
        request.setAttribute("role",role);
        return "system/role/role-module";
    }

    /**
     * 接受ajax请求，查询所有的模块数据，构造ztree的节点数据
     *      1、ztree的数据格式：
     *          [
     *              { id:111, pId:11, name:"随意勾选 1-1-1"},
     *              { id:112, pId:11, name:"随意勾选 1-1-2",checked:true}   checked：是否默认勾选
     *          }
     *      2、在SpringMVC中，不需要处理json，通过注解配合对象自动转化
     *          方法返回值需要通过@ResponseBody修饰
     *      3、方法返回值： List<Map>  ,map标识节点数据
     * 业务逻辑
     *      1、查询所有的模块 ：List<Module>
     *      2、循环所有的模块数据
     *      3、一个Module转化成一个map集合构造节点数据
     *      4、返回
     * 改在业务逻辑(默认勾选)
     *      参数：角色id
     *       1、根据角色id，查询此角色已具有的所有模块id ： List<String>   : 1,2,3,4,5,6,7
     *       2、在循环体中判断，当前角色id是否在list集合中
     */
    @RequestMapping("/getZtreeNodes")
    public  @ResponseBody
    List<Map> getZtreeNodes(String roleId) {
        List<Map> list = new ArrayList<>();
        //1、查询所有的模块 ：List<Module>
        List<Module> modules = moduleService.findAll();

        //2、根据角色id，查询此角色已具有的所有模块id
        List<String> moduleIds = roleService.findModulesByRoleId(roleId);  //1，5，9

        //3、循环所有的模块数据
        for (Module module : modules) {  //所有模块   （1，2，3，4，5，6，7，8，9，10）
            //4、一个Module转化成一个map集合构造节点数据
            Map map = new HashMap();    //9
            map.put("id",module.getId());
            map.put("pId",module.getParentId());
            map.put("name",module.getName());
            if(moduleIds.contains(module.getId())) {
                map.put("checked",true);
            }
            list.add(map);
        }
        //5、返回
        return list;
    }

    @RequestMapping("/updateRoleModule")
    public String updateRoleModule(String roleid, String moduleIds) {
        roleService.updateRoleModule(roleid,moduleIds);
        return "redirect:/system/role/list.do";
    }

}
