package zstu.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/")
public class UrlControl {
	@RequestMapping(value="msg",method=RequestMethod.GET)
	public String showMsg(Model model) {
		model.addAttribute("message","welcome");
		return "showMessage";
	}
	@RequestMapping(value="login",method=RequestMethod.GET)
	public String showMsgLogin(Model model) {
		return "login";
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
	@RequestMapping(value="page4",method=RequestMethod.GET)
	public String showMsgPage4(Model model) {
		return "index4";
	}
	@RequestMapping(value="page5",method=RequestMethod.GET)
	public String showMsgPage5(Model model) {
		return "index5";
	}
}
