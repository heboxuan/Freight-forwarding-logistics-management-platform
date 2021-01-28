package cn.itcast.web.controller.cargo;

import cn.itcast.domain.cargo.Contract;
import cn.itcast.domain.cargo.ContractExample;
import cn.itcast.domain.system.User;
import cn.itcast.service.cargo.ContractService;
import cn.itcast.web.controller.BaseController;
import com.alibaba.dubbo.config.annotation.Reference;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/cargo/contract")
public class ContractController extends BaseController {
    @Reference
    private ContractService contractService;

    @RequestMapping("/list")
    public String list(@RequestParam(defaultValue = "1") int page,
                       @RequestParam(defaultValue = "10") int size)
    {
        ContractExample contractExample=new ContractExample();
        ContractExample.Criteria criteria = contractExample.createCriteria();
        criteria.andCompanyIdEqualTo(super.getLoginCompanyId());
        contractExample.setOrderByClause("create_time DESC");

        /**
         * 细粒度权限控制
         *   i.获取当前用户的类型
         *   ii.根据不同类型，添加不同的查询条件
         *          普通员工：根据创建人查询（degree）
         *          部门经理：根据创建人部门查询（createDept）
         */
        User user = getLoginUser();
        Integer degree = user.getDegree();
        if (degree == 4) {//普通员工
            criteria.andCreateByEqualTo(user.getId());
        } else if (degree == 3) {//部门经理
            criteria.andCreateDeptEqualTo(user.getDeptId());
        } else if (degree==2) {//上级部门经理
            criteria.andCreateDeptLike(user.getDeptId()+"%");
        }
        PageInfo info = contractService.findAll(contractExample, page, size);
        request.setAttribute("page",info);
        return "cargo/contract/contract-list";
    }

    //进入到保存页面
    @RequestMapping("/toAdd")
    public String toAdd() {
        return "cargo/contract/contract-add";
    }

    //进入修改页面
    @RequestMapping("/toUpdate")
    public String toUpdate(String id) {
        //1.根据id查询
        Contract contract = contractService.findById(id);
        request.setAttribute("contract",contract);
        return "cargo/contract/contract-update";
    }


    //修改或者保存
    @RequestMapping("/edit")
    public String edit(Contract contract) {
        //1.设置企业属性
        contract.setCompanyId(getLoginCompanyId());
        contract.setCompanyName(getLoginCompanyName());
        //2.判断是否具有id
        if (StringUtils.isEmpty(contract.getId())) {
            //在之前的保存案例中，没有对创建人和创建人部门赋值，为了能够完成细粒度权限控制
            //修改保存方法，添加这两个字段
            //获取当前登录用户
            User user = getLoginUser();
            contract.setCreateBy(user.getId());//创建人ID
            contract.setCreateDept(user.getDeptId());//创建人所属部门ID
            //3.没有id，调用service保存
            contractService.save(contract);
        }else {
            //4.存在id，调用service更新
            contractService.update(contract);
        }
        //5.重定向到列表
        return  "redirect:/cargo/contract/list.do";
    }

    /**
     * 提交
     *  submit
     *  参数：id
     *  业务：
     *    将合同状态由0-->1
     */
    @RequestMapping(value = "/submit")
    public String submit(String id) {
        //1、根据id查询合同
        //2、判断合同的状态是否是0，如果为0（草稿），只有草稿状态的才能更新为1
        //3、更新

        Contract contract = new Contract();
        contract.setId(id);
        contract.setState(1);

        contractService.update(contract);  //根据id非空更新 ： update table set state = 1 where id=#{id}
        //重定向到列表
        return "redirect:/cargo/contract/list.do";
    }


    /**
     * 取消
     *  cancel
     *  参数：id
     *  业务：
     *    将合同状态由1-->0
     */
    @RequestMapping(value = "/cancel")
    public String cancel(String id) {
        //1、根据id查询合同
        //2、判断合同的状态是否是0，如果为0（草稿），只有草稿状态的才能更新为1
        //3、更新

        Contract contract = new Contract();
        contract.setId(id);
        contract.setState(0);

        contractService.update(contract);  //根据id非空更新 ： update table set state = 1 where id=#{id}
        //重定向到列表
        return "redirect:/cargo/contract/list.do";
    }

    @RequestMapping("/delete")
    public String delete(String id) {
        contractService.delete(id);
        return  "redirect:/cargo/contract/list.do";
    }
}
