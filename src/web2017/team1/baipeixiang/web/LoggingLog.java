package web2017.team1.baipeixiang.web;

import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.catalina.core.ApplicationContext;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.aop.MethodBeforeAdvice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import web2017.team1.baipeixiang.domain.User;
import web2017.team1.baipeixiang.service.UserService;
//implements MethodBeforeAdvice {
@Aspect
@Component
public class LoggingLog{
	   @Autowired
	   private UserService userService;
	   
	   @Around(value="execution(* web2017.team1.baipeixiang.service.UserService.hasMatchUser(..))")
	    public Object Logging(ProceedingJoinPoint joinPoint){
		   
		  
	        Object results=null;
	        Object[] args=joinPoint.getArgs();
	        System.out.println(Arrays.asList(args).get(0).toString());
	       
	        try {
	            
	            System.out.println("【前置增强】开始写入日志");
	            results=joinPoint.proceed();
	            System.out.println("目标方法返回结果后...");
	            System.out.println(results.toString());
	            if(!results.equals(0)){
	        	User user = userService.findUserByUserName(Arrays.asList(args).get(0).toString());
					user.setLastIp("0.0.0.1");
					user.setLastVisit(new Date());
					userService.loginSuccess(user);
		        }

	        } catch (Throwable throwable) {
	        	System.out.println("执行目标方法异常后...");
	            throwable.printStackTrace();
	        }
	        System.out.println("【后置增强】停止写入日志");
	        
	        return results;
	    }

	
} 



