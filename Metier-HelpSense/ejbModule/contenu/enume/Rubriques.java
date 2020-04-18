package contenu.enume;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public enum Rubriques {
	
	/*
	 * PROD("https://prod.domain.com:1088/"), SIT("https://sit.domain.com:2019/"),
	 * CIT("https://cit.domain.com:8080/"), DEV("https://dev.domain.com:21323/");
	 */
	
	
	    MATH("Mathématiques"), 
	   INF("Informatique"), 
	    CHI("Chimie"), 
	   BIO("Biologie"),
		  PHY("Physique"),
		  
		  ECO("Economie"),
		  MANA("Management"),
		  LAW("Droit"),
		 GEO("Géopolitique"),
		  
		  PSY("Psychologie"),
		  SOC("Sociologie"),
		  COACH("Developpement Personnel");
	 
	    private final String rubrique;
	 
	    Rubriques(String rubrique ) {
	        this.rubrique = rubrique;
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
	    private static final Map<Rubriques,String> lookup = new HashMap<>();
	    
	    public static Map<Rubriques,String> setLookUpValues() {
	    	
	    	for(Rubriques rub : Rubriques.values()) {
	    		
	    		lookup.put(rub, rub.getRubrique());
	    		
	    	}
	    	
	    	return lookup;
	    }
	    
	  
	    //Populate the lookup table on loading time
	/*
	 * public static Rubriques getValueOf(String value) { Rubriques values = null;
	 * for(Rubriques rub : Rubriques.values()) { values = Rubriques.get(value); }
	 * return values; }
	 */
	  
	    //This method can be used for reverse lookup purpose
	/*
	 * public static Rubriques get(String url) { // return lookup.get(url); }
	 */
	    
	  
	    
	    
	    public static Map<String, String> getAllValueString() {
	    	
	    	Map<String, String> allMap = new HashMap<>();
	    for(Rubriques rub : Rubriques.values())
	    {
	    	allMap.put(rub.name(), rub.getRubrique());
	        System.out.println(rub.name() + " :: "+ rub.getRubrique());
	    }
		return allMap;
	    }
	    
	    
	    
	    
	    
    public static List<Rubriques> getAllValuesRubrique() {
	    	
	    	List<Rubriques> allMap = null;
	    	String values = null;
	    for(Rubriques rub : Rubriques.values())
	    {
	 
	    	allMap.add(rub);
	    	
	       // System.out.println(rub.name() + " :: "+ rub.getRubrique());
	    }
		return allMap;
	    }
	    
	    
	public static List<String> getAllStringValList() {
		
		List<String> rubriqueList = null;
		for(Rubriques rub : Rubriques.values() ) {
		 	String rubGetter = rub.getRubrique();
		 	
		 	
		rubriqueList.add(rubGetter);
	  

		}
		return rubriqueList;
		
	}
		
	public static Rubriques[] getAllStringVal() {
		
		Rubriques[] rubriqueList = null;
		for(Rubriques rub : Rubriques.values() ) {
		 	String rubGetter = rub.getRubrique();
		 	
		 	//rub.get(url);
		 	
		 			rub.getRubrique();
		 				System.out.println(rub.getRubrique());
		}
		
		return rubriqueList;
	}

	public static Map<Rubriques, String> getLookup() {
		return lookup;
	}    
	
	
	
	    /*   public static Rubriques chooseString(String X) {
	    String prodUrl = Rubriques.X.getRubrique();
	    
	    System.out.println(prodUrl);
	    
	    } */
	    
}
