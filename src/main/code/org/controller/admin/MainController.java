package org.controller.admin;

import org.apache.log4j.Logger;
import org.model.pojo.Account;
import org.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("mainAdminController")
@RequestMapping("/main")
public final class MainController {

	private static final Logger log = Logger.getLogger(MainController.class);
	
	/* ***************************************************************
	 * @Autowired
	 * ***************************************************************/
	
	
	/* ***************************************************************
	 * Controller Mapping
	 * ***************************************************************/
	
	@RequestMapping(value="/view", method=RequestMethod.GET)
	public String getView(){
		return "layout";
	}
}
