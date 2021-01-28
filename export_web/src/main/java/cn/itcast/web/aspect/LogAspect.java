package cn.itcast.web.aspect;

import cn.itcast.domain.system.SysLog;
import cn.itcast.domain.system.User;
import cn.itcast.service.system.SysLogService;
import com.alibaba.dubbo.config.annotation.Reference;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.lang.reflect.Method;
import java.util.Date;

@Component
@Aspect
public class LogAspect {
    @Reference
    private SysLogService sysLogService;

    @Autowired
    private HttpServletRequest request;

    @Autowired
    private HttpSession session;

    @Around(value = "execution(* cn.itcast.web.controller.*.*.*(..))")
    public Object around(ProceedingJoinPoint pjp) throws Throwable {
        SysLog log=new SysLog();
        log.setIp(request.getRemoteAddr());
        log.setTime(new Date());
        Object obj = session.getAttribute("loginUser");
        if (obj!=null) {
            User user=(User)obj;
            log.setUserName(user.getUserName());
            log.setCompanyName(user.getCompanyName());
            log.setCompanyId(user.getCompanyId());
        }
        MethodSignature ms =(MethodSignature)pjp.getSignature();
        Method method = ms.getMethod();
        log.setMethod(method.getName());
        if (method.isAnnotationPresent(RequestMapping.class)) {
            RequestMapping annotation = method.getAnnotation(RequestMapping.class);
            String name = annotation.name();
            log.setAction(name);
        }
        sysLogService.save(log);
        return pjp.proceed();
    }

}
