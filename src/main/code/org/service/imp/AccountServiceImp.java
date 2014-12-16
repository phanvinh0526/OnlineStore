package org.service.imp;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.DayOfWeek;
import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.dao.hibernate.AccountDao;
import org.model.form.RegistrationForm;
import org.model.pojo.Account;
import org.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("accountService")
@Transactional
public class AccountServiceImp implements AccountService {

	@Autowired private AccountDao accountDao;

	public void setAccountDao(AccountDao accountDao) {
		this.accountDao = accountDao;
	}

	public void createAccount(Account account) {
		// TODO Auto-generated method stub
		accountDao.create(account);
	}

	public List<Account> getAccounts() {
		// TODO Auto-generated method stub
		return accountDao.getAll();
	}

	public Account getAccountByEmail(String email) {
		// TODO Auto-generated method stub
		return accountDao.findByEmail(email);
	}

	public List<Account> getAccountByFirstName(String firstName) {
		// TODO Auto-generated method stub
		return accountDao.findByFirstName(firstName);
	}

	public Account getAccount(Account account) {
		// TODO Auto-generated method stub
		return accountDao.get(account.getId());
	}

	public Account getAccount(Integer accountId) {
		// TODO Auto-generated method stub
		return accountDao.get(accountId);
	}

	public void updateAccount(Account account) {
		// TODO Auto-generated method stub
		accountDao.update(account);
	}

	public void deleteAccount(Account account) {
		// TODO Auto-generated method stub
		accountDao.delete(account);
	}

	public void deleteAccount(Integer id) {
		// TODO Auto-generated method stub
		accountDao.deleteById(id);
	}
	
	public Account checkLogin(Account account) {
		// TODO Auto-generated method stub
		// Needing a function to check input ?
		List<Account> list = accountDao.findByUsername(account.getUsername());
		if(list.size()>0){
			Account a = list.get(0);
			if(a != null && a.getPassword().equals(account.getPassword())){
				return a;
			}
		}
		return null;
	}
	
	public Account checkLogin(String username, String password) {
		// TODO Auto-generated method stub
		List<Account> list = accountDao.findByUsername(username);
		if(list.size()>0){
			Account a = list.get(0);
			if(a != null && a.getPassword().equals(password)){
				return a;
			}
		}
		return null;
	}
	
	public Boolean restorePassword(String email) {
		// TODO Auto-generated method stub
		Account a= accountDao.findByEmail(email);
		if(a != null){
			// Calling send function email in here
			return true;
		}
		return false;
	}

	public Boolean checkAccountStatus(String username) {
		// TODO Auto-generated method stub
		List<Account> list = accountDao.findByUsername(username);
		Account a = list.get(0);
		if(a != null)
			return false;
		else
			return true;
	}

	public Account createAccount(RegistrationForm regForm) {
		
		if(regForm.isAcceptTerms()){
			Account a = new Account();
			a.setUsername(regForm.getUsername());
			a.setPassword(regForm.getPassword());
			a.setFirstname(regForm.getFirstname());
			a.setLastname(regForm.getLastname());
			a.setEmail(regForm.getEmail());
			a.setPhone(regForm.getPassword());
			a.setGender(regForm.getGender());
			a.setCreated_time(new Date());
			a.setUpdated_time(new Date());
			System.out.print("BBBBBBB");
			System.out.print(a.getCreated_time());
			Integer id = (Integer) accountDao.create(a);
			if(id != null){
				return accountDao.get(id);
			}
			else	
				return null;
		}
		else
			return null;
	}

	
	
	
}
