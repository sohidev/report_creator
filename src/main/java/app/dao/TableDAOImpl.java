package app.dao;


import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import app.model.TableModel;

/**
 * Implementation of the LoginDao Interface
 * @author saurabh
 */
@Repository("TableDAO")
public class TableDAOImpl implements TableDAO {

	@Override
	public List<String> getList()
	{
		String SQL = "SELECT table_name FROM information_schema.tables WHERE table_type = 'base table' and table_schema='reportcreator';";
		System.out.println("SQL : "+ SQL);
		Statement stmt;
		List<String> tableNames = new ArrayList<String>();
		try
		{
			// Get the database metadata

			  DatabaseMetaData metadata = ConnectionDAO.getConnection().getMetaData();


			  // Specify the type of object; in this case we want tables

			  String[] types = {"TABLE"};

			  ResultSet resultSet = metadata.getTables(null, null, "%", types);


			  while (resultSet.next()) {

			    String tableName = resultSet.getString(3);
			    tableNames.add(tableName);

			    
			    System.out.println("Table : " + tableName );
		}
		}
		catch (SQLException e)
		{
			System.out.println("SQL Exception : "+e.getMessage());
			return null;
		}
		
		return tableNames;
	}
}