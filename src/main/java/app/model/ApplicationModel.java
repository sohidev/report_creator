package app.model;

import app.model.LoginModel;
import app.model.TableModel;

/**
 * This model class is used mainly to send the data into a single object which contains all the details
 * that is needed to be displayed on the jsp pages.
 *  
 * @author Saurabh Dwivedi
 *
 */
public class ApplicationModel{
	private LoginModel loginModel;
	private TableModel tableModel;

	public LoginModel getLoginModel() {
		return loginModel;
	}

	public void setLoginModel(LoginModel loginModel) {
		this.loginModel = loginModel;
	}

	/**
	 * @return the tableModel
	 */
	public TableModel getTableModel() {
		return tableModel;
	}

	/**
	 * @param tableModel the tableModel to set
	 */
	public void setTableModel(TableModel tableModel) {
		this.tableModel = tableModel;
	}
}