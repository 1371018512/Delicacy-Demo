package zstu.web;

import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import zstu.entity.User;
import zstu.service.ShiroDbRealm.ShiroUser;

@Controller
@RequestMapping(value="/portal")
public class UrlControl {
	@RequestMapping(value="msg",method=RequestMethod.GET)
	public String showMsg(Model model) {
		model.addAttribute("message","welcome");
		return "showMessage";
	}
	
	@RequestMapping(value="page1",method=RequestMethod.GET)
	public String showMsgPage1(Model model) {
		return "index";
	}
	@RequestMapping(value="page2",method=RequestMethod.GET)
	public String showMsgPage2(Model model) {
		return "index2";
	}
	@RequestMapping(value="page3",method=RequestMethod.GET)
	public String showMsgPage3(Model model) {
		return "index3";
	}
	@RequestMapping(value="page5",method=RequestMethod.GET)
	public String showMsgPage5(Model model) {
		return "index5";
	}	
	@RequestMapping(value="getCurrentUser",method=RequestMethod.GET)
	public @ResponseBody ShiroUser getCurrentUser() {
		if(SecurityUtils.getSubject()!=null) {
			ShiroUser user=(ShiroUser) SecurityUtils.getSubject().getPrincipal();
			if(user!=null)
				return user;
		}
		return null;
	}
}
