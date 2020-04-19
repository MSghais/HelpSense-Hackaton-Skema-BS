package utilisateurs.entite;

import java.util.List;

public enum Role {

	Analyste, Curious, Oracle, Administrateur;




	public String action() {
		switch(this) {
			case Analyste : return "cinema";
			case Curious : return "determiner";
			default : return "travailler";
		}
 	}

	
	public static List<Role> getRole(){
		List<Role> allValues = null;
		for(Role r : Role.values()) {
			
			allValues.add(r);
		}
		return allValues;
	}


}
