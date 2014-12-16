package org.controller.customer;

import org.apache.log4j.Logger;
import org.model.pojo.Account;
import org.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller("mainController")
public final class MainController {

	private static final Logger log = Logger.getLogger(MainController.class);
	
	/* ***************************************************************
	 * @Autowired
	 * ***************************************************************/
	
	@Autowired private AccountService accountService;
	
	/* ***************************************************************
	 * Controller Mapping
	 * ***************************************************************/
	
	@RequestMapping(value="/view", method=RequestMethod.GET)
	public ModelAndView getView(){
		return new ModelAndView("layout", "page", "main");
		
	}
	
	
}
