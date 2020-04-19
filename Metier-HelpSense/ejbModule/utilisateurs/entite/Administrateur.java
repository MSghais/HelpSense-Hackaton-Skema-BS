package utilisateurs.entite;

public class Administrateur extends User{
	
	public Administrateur() {
		super();
	}

	public Administrateur(String nom, String prenom, String identifiant, String mdp) {
		super(nom, prenom, identifiant, mdp);
		role = Role.Oracle;
	}

	@Override
	public String toString() {
		return "Administrateur [toString()=" + super.toString() + "]";
	}
	
	
	
	
	
	
}
