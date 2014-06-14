package app.service;

import app.model.LoginModel;
/**
 * LoginService Interface
 * @author Saurabh Dwivedi
 *
 */
public interface LoginService {
	
	public boolean validate(LoginModel loginModel);
}
