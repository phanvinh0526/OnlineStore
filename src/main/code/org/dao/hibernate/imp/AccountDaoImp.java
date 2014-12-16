package org.dao.hibernate.imp;

import java.util.List;

import org.dao.AbstractHbnDao;
import org.dao.hibernate.AccountDao;
import org.model.pojo.Account;
import org.springframework.stereotype.Repository;

@Repository("accountDao")
public class AccountDaoImp extends AbstractHbnDao<Account> implements AccountDao{

	
	
	@SuppressWarnings("unchecked")
	public List<Account> findByFirstName(String firstName) {
		// TODO Auto-generated method stub
		return getSession()
				.getNamedQuery("findByFirstName")
				.setString("firstname", firstName)
				.list();
	}

	@SuppressWarnings("unchecked")
	public Account findByEmail(String email) {
		// TODO Auto-generated method stub
		return (Account) getSession()
				.getNamedQuery("findByEmail")
				.setString("email", email)
				.list()
				.get(0);
	}

	public List<Account> findByUsername(String username){
		return getSession()
				.getNamedQuery("findByUsername")
				.setString("username", username)
				.list();
	}
}
