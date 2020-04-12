package zstu.web;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import zstu.entity.User;
import zstu.service.Userservice;

@Controller
@RequestMapping(value="/signin")
public class RegControl {
	@Autowired
	private Userservice userService;
	
	@RequestMapping(method=RequestMethod.GET)
	public String showMsgSignin() {
		return "signin";
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public @ResponseBody String signinUser(String LoginName,String Password) {
		if(!this.checkLoginName(LoginName)) {
			return "{\"success\":false,\"msg\":\"用户名已经存在！\"}";
		}
		User user=new User();
		user.setLoginName(LoginName);
		user.setPassword(Password);
		//this.userService.save(user);
		this.userService.signinsave(user);
		return "{\"success\":true,\"msg\":\"注册成功！\"}";
	}
	
	@RequestMapping(value="checkLoginName",method=RequestMethod.GET)
	public @ResponseBody Boolean checkLoginName(String loginName) {
		if(StringUtils.isNotBlank(loginName)) {
			User user=this.userService.findByLoginName(loginName);
			if(user!=null) {
				return false;
			}
		}
		return true;
	}
}
