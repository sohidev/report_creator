package app.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.dao.TableDAO;
import app.model.TableModel;
/**
 * Implementation of LoginService
 * @author SaurabhDwivedi
 *
 */
@Service("TableService")
public class TableServiceImpl implements TableService {
	@Autowired
	TableDAO tableDAO;
	
	public List<String> getList() {
		return tableDAO.getList();
	}

	

}