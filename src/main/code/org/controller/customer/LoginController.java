package org.controller.customer;

import org.apache.log4j.Logger;
import org.model.form.RegistrationForm;
import org.model.pojo.Account;
import org.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller("loginController")
@RequestMapping("/account")
public final class LoginController {

	private static final Logger log = Logger.getLogger(LoginController.class);
	private String page = "layout";//Injected outside
	
	/* ***************************************************************
	 * @Autowired
	 * ***************************************************************/
	
	@Autowired private AccountService accountService;
	
	/* ***************************************************************
	 * Controller Mapping
	 * ***************************************************************/
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String getLoginForm(Model model){
		model.addAttribute("page", "registration");
		model.addAttribute("registrationForm", new RegistrationForm());
		return page;
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String processLoginForm(@RequestParam("username") String username,
			 @RequestParam("password") String password, Model model){
		
		Account a = accountService.checkLogin(username, password);
		if(a != null){
			model.addAttribute("page", "main");
			model.addAttribute("account", a);
			return page;
		}
		else{
			model.addAttribute("messageLog", "Username or Password is incorrect, please try again or using forgot password feature.");
			return getRegistration(model);
		}
	}
	
	@RequestMapping(value="/registration", method=RequestMethod.GET)
	public String getRegistration(Model model){
		model.addAttribute("page", "registration");
		model.addAttribute("registrationForm", new RegistrationForm());
		return page;
	}
	
	@RequestMapping(value="/registration", method=RequestMethod.POST)
	public String processRegistration(RegistrationForm regForm, Model model){
		System.out.println("AAAAA");
		Account a = accountService.createAccount(regForm);
		if(a != null){
			System.out.println(a.getUsername());
			model.addAttribute("page", "main");
			model.addAttribute("account", a);
			return page;
		}
		else{
			model.addAttribute("messageReg", "Registration Failure");
			return getRegistration(model);
		}
	}
}
