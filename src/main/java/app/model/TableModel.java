package app.model;

import java.util.List;

import org.springframework.stereotype.Component;


@Component
public class TableModel {
	
	
	/**
	 * This model class contains the properties for the filed on the success page.
	 * @author saurabh
	 *
	 */
	
		
	
		private List<String> tblName;
		
		
		
		/* Getters and setters for the private fields. */
		public void setTblName(List<String> tblNameList) {
			this.tblName = tblNameList;
		}
		public List<String> getTblName() {
			return tblName;
		}

		
	


}
