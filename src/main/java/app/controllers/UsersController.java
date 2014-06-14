package app.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import app.model.TableModel;
import app.service.TableService;

import app.model.ApplicationModel;
import app.model.LoginModel;

@Controller
public class UsersController {
	
	private LoginModel loginModel;
	@Autowired
	private TableModel tableModel;
	@Autowired
	private TableService tableService;

	/**
	 * This method will be called from LoginController if the user is validated.
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/success", method = RequestMethod.GET)
	public ModelAndView init(HttpServletRequest request, HttpServletResponse response) 
	{
		ApplicationModel applicationModel = new ApplicationModel();
		loginModel = (LoginModel)request.getSession().getAttribute("user");
		List<String> names = tableService.getList();
		//tableModel.setTblName(names);
		tableModel.setTblName(names);
		applicationModel.setLoginModel(loginModel);
		applicationModel.setTableModel(tableModel);
		return new ModelAndView("success", "applicationModel", applicationModel);
	}
}