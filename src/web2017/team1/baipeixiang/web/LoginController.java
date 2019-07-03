package web2017.team1.baipeixiang.web;

import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import web2017.team1.baipeixiang.domain.User;
import web2017.team1.baipeixiang.service.UserService;

@Controller
public class LoginController{
	
	@Autowired
	private UserService userService;
    
	@RequestMapping(value = "/index.html")
	public String loginPage(){
		return "login";
	}
	
	@RequestMapping(value = "/loginCheck.html")
	public ModelAndView loginCheck(HttpServletRequest request,LoginCommand loginCommand){
		boolean isValidUser = 
			   userService.hasMatchUser(loginCommand.getUserName(),
					                    loginCommand.getPassword());
		if (!isValidUser) {
			return new ModelAndView("login", "error", "密码错误");
		} else {
			User user = userService.findUserByUserName(loginCommand
					.getUserName());
//			user.setLastIp(request.getLocalAddr());
//			user.setLastVisit(new Date());
		//	userService.loginSuccess(user);
	request.getSession().setAttribute("user", user);
			return new ModelAndView("main");
		}
	}
	@RequestMapping(value="/trans.html")
	public ModelAndView transpage(){
		return new ModelAndView("trans");
		}
	
	@RequestMapping(value="/main2.html")
	public ModelAndView transuser(HttpServletRequest request,Map<String,Object> map){
		System.out.println(request.getParameter("user")+" "+request.getParameter("userName")+" "+Integer.parseInt(request.getParameter("credits")));
		userService.transfer(request.getParameter("user"), request.getParameter("userName"), Integer.parseInt(request.getParameter("credits")));
		User users=userService.queryForCreditsByUser(request.getParameter("user"));
		
		map.put("user", users);
		System.out.println("转账中。。。");
		return new ModelAndView("main2","message","积分转让成功");
	
	}
}
