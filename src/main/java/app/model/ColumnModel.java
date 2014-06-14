package app.model;

import java.util.List;

import org.springframework.stereotype.Component;


@Component
public class ColumnModel {
	
	
	/**
	 * This model class contains the properties for the filed on the success page.
	 * @author saurabh
	 *
	 */
	
		
	
		private List<String> columnName;
		
		
		
		/* Getters and setters for the private fields. */
		public void setColumnName(List<String> columnNameList) {
			this.columnName = columnNameList;
		}
		public List<String> getColumnName() {
			return columnName;
		}

		
	


}
