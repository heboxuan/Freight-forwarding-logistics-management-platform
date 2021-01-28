package cn.itcast.service.system.impl;

import cn.itcast.dao.system.SysLogDao;
import cn.itcast.domain.system.SysLog;
import cn.itcast.service.system.SysLogService;
import com.alibaba.dubbo.config.annotation.Service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;

import java.util.List;
import java.util.UUID;

@Service
public class SysLogServiceImpl implements SysLogService {
    @Autowired
    private SysLogDao sysLogDao;

    public PageInfo findAll(String loginCompanyId,int page,int size) {
        PageHelper.startPage(page,size);
        List<SysLog> list = sysLogDao.findAll(loginCompanyId);
        return new PageInfo(list);
    }

    public void save(SysLog sysLog) {
        sysLog.setId(UUID.randomUUID().toString());
        sysLogDao.save(sysLog);
    }
}
