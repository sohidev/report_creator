package app.service;


import java.util.List;

public interface ColumnService {
	public List<String> getColumnsList(String tableName);
	public List<String> getColumnValues(String tableName, String columnName);
	public List<Object[]> getQueryResult(String query);

}
