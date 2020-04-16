package zstu.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/page4")
public class ManageControl {
	@RequestMapping(method=RequestMethod.GET)
	public String showMsgPage4() {
		return "index4";
	}
}
