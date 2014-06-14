package app.dao;

import java.util.List;

public interface ColumnDAO {
	public List<String> getColumnsList(String tableName);
	public List<String> getColumnValues(String tableName,String columnName);
	public List<Object[]> getQueryResult(String query);
}
