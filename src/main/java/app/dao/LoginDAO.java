package app.dao;

import app.model.LoginModel;
/**
 * LoginDAO interface
 * @author Saurabh Dwivedi
 *
 */
public interface LoginDAO {

	public boolean validate(LoginModel loginModel);
}