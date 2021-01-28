package cn.itcast.web.exception;

import org.apache.shiro.authz.UnauthorizedException;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 自定义异常处理器
 */
@Component
public class SaaSException implements HandlerExceptionResolver {

    //处理异常
    public ModelAndView resolveException(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception ex) {
        if (ex instanceof UnauthorizedException) {
            ModelAndView mv = new ModelAndView();
            mv.setViewName("forward:/unauthorized.jsp");
            return mv;
        }else{
            ModelAndView mv = new ModelAndView();
            mv.setViewName("error");

            mv.addObject("errorMsg",ex.getMessage());

            ex.printStackTrace();

            return mv;
        }
    }
}

