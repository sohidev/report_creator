package app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.dao.LoginDAO;
import app.model.LoginModel;
/**
 * Implementation of LoginService
 * @author Saurabh Dwivedi
 *
 */
@Service("loginService")
public class LoginServiceImpl implements LoginService {
	@Autowired
	LoginDAO loginDAO;
	
	public boolean validate(LoginModel loginModel) {
		return loginDAO.validate(loginModel);
	}

}
