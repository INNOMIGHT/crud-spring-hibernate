package com.innomight.login;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("name")
public class LoginController {
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String showLoginPage(ModelMap model){
		model.put("name", retrieveUsername());
		return "welcome";
	}

	private String retrieveUsername() {
		return "Vaibhav";
	}
}
