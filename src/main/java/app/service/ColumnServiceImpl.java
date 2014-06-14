package app.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.dao.ColumnDAO;
import app.dao.TableDAO;
import app.model.TableModel;
/**
 * Implementation of LoginService
 * @author saurabh dwivedi
 *
 */
@Service("ColumnService")
public class ColumnServiceImpl implements ColumnService {
	@Autowired
	ColumnDAO columnDAO;
	
	public List<String> getColumnsList(String tableName) {
		return columnDAO.getColumnsList(tableName);
	}
	
	public List<String> getColumnValues(String tableName, String columnName) {
		return columnDAO.getColumnValues(tableName, columnName);
	}
	
	@Override
	public List<Object[]> getQueryResult(String query) {
		// TODO Auto-generated method stub
		return columnDAO.getQueryResult(query);
	}	

}