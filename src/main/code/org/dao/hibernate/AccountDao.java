package org.dao.hibernate;

import java.util.List;

import org.dao.Dao;
import org.model.pojo.Account;

public interface AccountDao extends Dao<Account> {
	
	List<Account> findByFirstName(String firstName);
	
	Account findByEmail(String email);
	
	List<Account> findByUsername(String username);
}
