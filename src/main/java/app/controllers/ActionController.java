package app.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import app.model.ApplicationModel;
import app.model.ColumnModel;
import app.model.LoginModel;
import app.model.TableModel;
import app.service.ColumnService;
import app.service.LoginService;
import app.service.TableService;

@Controller
public class ActionController {
	
	@Autowired
	private ColumnService columnService;
	@Autowired
	private ColumnModel columnModel;
	
		
	/*@RequestMapping(value="/column",method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ModelAndView init(@RequestParam("tableName") String tableName) {
		List<String> names = columnService.getColumnsList(tableName);
		columnModel.setColumnName(names);
		return new ModelAndView("useractions","columnModel",columnModel);
	}
	
	@RequestMapping(value="/records",method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ModelAndView getValues(@RequestParam("columnName") String columnName,@RequestParam("tableName") String tableName) {
		System.out.println("printing the parameter values : "+columnName +" & second parameter : "+tableName);
		List<String> names = columnService.getColumnValues(tableName, columnName);
		columnModel.setColumnName(names);
		return new ModelAndView("useractions","columnModel",columnModel);
	}*/
	
	@RequestMapping(value="/column",method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody ColumnModel init(@RequestParam("tableName") String tableName) {
		List<String> names = columnService.getColumnsList(tableName);
		columnModel.setColumnName(names);
		//return new ModelAndView("useractions","columnModel",columnModel);
		return columnModel;
	}
	
	@RequestMapping(value="/records",method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody ColumnModel getValues(@RequestParam("columnName") String columnName,@RequestParam("tableName") String tableName) {
		System.out.println("printing the parameter values : "+columnName +" & second parameter : "+tableName);
		List<String> names = columnService.getColumnValues(tableName, columnName);
		columnModel.setColumnName(names);
		//return new ModelAndView("useractions","columnModel",columnModel);
		return columnModel;
	}
	
	@RequestMapping(value="/exec",method = RequestMethod.POST)
	public @ResponseBody List<Object[]> executeQuery(HttpServletRequest request, 
	        @RequestParam(value="customQuery", required=false) String customQuery,HttpServletResponse response) {
		
		System.out.println("printing the parameter values : "+customQuery);
		List<Object[]> result = columnService.getQueryResult(customQuery);
		return result;
		
	}
	
}