package utilisateurs.entite;

import java.util.List;

public enum RoleUser {

	Business,  Acheteur, Vendeur, Administrateur;




	public String action() {
		switch(this) {
			case Administrateur : return "cinema";
			case Business : return "determiner";
			default : return "travailler";
		}
 	}

	
	public static List<RoleUser> getRole(){
		List<RoleUser> allValues = null;
		for(RoleUser r : RoleUser.values()) {
			
			allValues.add(r);
		}
		return allValues;
	}


}
