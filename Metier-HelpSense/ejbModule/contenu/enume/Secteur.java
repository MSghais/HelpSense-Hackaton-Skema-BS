package contenu.enume;

import java.util.HashMap;
import java.util.Map;

public enum Secteur {
	 Agroalimentaire, Banque , 
	 Assurance, Bois , Papier , Carton , Imprimerie, BTP , Mat�riaux, 
	 Chimie , Parachimie , Commerce , N�goce , Distribution, �dition , Communication ,
	 Multim�dia , �lectronique , �lectricit�, Conseil, Audit, Comptabilit�, Management, Finance,
	 Industrie, Pharmaceutique, Informatique , T�l�coms,  Automobile , M�tallurgie , 
	 Habillement , Transports , Logistique;
	
	
	/*
	 * 
	 * 
	 * 
	 * private final String rubrique;
	 
	    Rubriques(String rubriqueURL ) {
	        this.rubrique = rubriqueURL;
	    }
	 
	    public String getRubrique() {
	        return rubrique;
	    }

	    public static Rubriques valueOfLabel(String label) {
	        for (Rubriques r : values()) {
	            if (r.rubrique.equals(label)) {
	                return r;
	            }
	        }
	        return null;
	    }
	    
	    //Lookup table
	    private static final Map<String, Rubriques> lookup = new HashMap<>();
	  
	    //Populate the lookup table on loading time
	    public static Rubriques getValueOf(String value) {
	    Rubriques values = null;
	        for(Rubriques rub : Rubriques.values())
	        {
	        	 values =  Rubriques.get(value);
	        }
			return values;
	    }
	  
	    //This method can be used for reverse lookup purpose
	    public static Rubriques get(String url) 
	    {
	        return lookup.get(url);
	    }
	    
	  
	    
	    
	    public static Map<String, Rubriques> getAllValueString() {
	    	
	    	Map<String, Rubriques> allMap = new HashMap<>();
	    for(Rubriques rub : Rubriques.values())
	    {
	        System.out.println(rub.name() + " :: "+ rub.getRubrique());
	    }
		return allMap;
	    }
	 */
	
	
}
