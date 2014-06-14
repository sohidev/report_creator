package app.dao;

import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import app.dao.ConnectionDAO;

@Repository("ColumnDAO")
public class ColumnDAOImpl implements ColumnDAO {

	@Override
	public List<String> getColumnsList(String tableName)
	{
		
		List<String> columnNames = new ArrayList<String>();
		try
		{
			// Get the database metadata

			  DatabaseMetaData metadata = ConnectionDAO.getConnection().getMetaData();


			  // Specify the type of object; in this case we want tables

			  

			  ResultSet resultSet = metadata.getColumns(null, null, tableName, null);


			  while (resultSet.next()) {

			    String columnName = resultSet.getString(4);
			    columnNames.add(columnName);

			    System.out.println("Table : " + columnName );
		}
		}
		catch (SQLException e)
		{
			System.out.println("SQL Exception : "+e.getMessage());
			return null;
		}
		
		return columnNames;
	}

	@Override
	public List<String> getColumnValues(String tableName,String columnName)
	{
		
		List<String> columnValues = new ArrayList<String>();
		/*String SQL = "SELECT * FROM "+tableName+" ;";
		System.out.println("SQL : "+ SQL);
		Statement stmt;
		try
		{
			stmt = ConnectionDAO.getStatement();
			ResultSet rs = stmt.executeQuery(SQL);
			while (rs.next())
			{
				columnValues.add(rs.getString(columnName));
			}
			
		}
		catch (SQLException e)
		{
			System.out.println("SQL Exception : "+e.getMessage());
			return null;
		}*/
		
		try
		{
			// Get the database metadata

			  DatabaseMetaData metadata = ConnectionDAO.getConnection().getMetaData();


			  // Specify the type of object; in this case we want tables

			  

			  ResultSet resultSet = metadata.getColumns(null, null, tableName, columnName);


			  while (resultSet.next()) {

			    String columnValue = resultSet.getString(6);
			    columnValues.add(columnValue);

			    System.out.println("Table : " + columnName );
		}
		}
		catch (SQLException e)
		{
			System.out.println("SQL Exception : "+e.getMessage());
			return null;
		}
		
		return columnValues;
	}
	
	@Override
	public List<Object[]> getQueryResult(String query)
	{
		
		Object resultObj = new Object();
		String SQL = query;
		System.out.println("SQL : "+ SQL);
		Statement stmt;
		List<Object[]> records=new ArrayList<Object[]>();
		try
		{
			stmt = ConnectionDAO.getStatement();
			ResultSet rs = stmt.executeQuery(SQL);
			
			while(rs.next()){
			    int cols = rs.getMetaData().getColumnCount();
			    Object[] arr = new Object[cols];
			    for(int i=0; i<cols; i++){
			      arr[i] = rs.getObject(i+1);
			    }
			    records.add(arr);
			}
			
		}
		catch (SQLException e)
		{
			System.out.println("SQL Exception : "+e.getMessage());
			resultObj = e;
			
		}
		return records;
	}
}
