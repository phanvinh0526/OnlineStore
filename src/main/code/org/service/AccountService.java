package org.service;

import java.util.List;

import org.model.form.RegistrationForm;
import org.model.pojo.Account;

public interface AccountService {
	
	/* **************************************
	 * General Features
	 * ************************************* */
	
	Account createAccount(RegistrationForm regForm);
	
	List<Account> getAccounts();
	
	Account getAccountByEmail(String email);
	
	List<Account> getAccountByFirstName(String firstName);
	
	Account getAccount(Account account);
	
	Account getAccount(Integer accountId);
	
	void updateAccount(Account account);
	
	void deleteAccount(Account account);
	
	void deleteAccount(Integer id);
	
	/* **************************************
	 * Specific Features
	 * ************************************* */
	
	Account checkLogin(Account account);
	
	Account checkLogin(String username, String password);

	Boolean restorePassword(String email);
	
	/**
	 * Check account and email status, available / unavailable in system
	 * */
	Boolean checkAccountStatus(String username);
	
	
}
