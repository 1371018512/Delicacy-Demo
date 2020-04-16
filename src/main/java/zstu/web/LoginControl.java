package zstu.web;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import zstu.entity.User;
import zstu.service.Userservice;

@Controller
@RequestMapping(value="/login")
public class LoginControl {

	@RequestMapping(method=RequestMethod.GET)
	public String showMsgLogin(Model model) {
		Subject subject=SecurityUtils.getSubject();
		if(subject!=null)
			subject.logout();
		return "login";
	}

	@RequestMapping(method=RequestMethod.POST)
	public String fail(@RequestParam("username") String username,Model model) {
		model.addAttribute("username",username);
		return "login";
	}
}
