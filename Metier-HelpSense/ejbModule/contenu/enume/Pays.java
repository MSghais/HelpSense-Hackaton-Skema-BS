package contenu.enume;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public enum Pays {
	

	
	    FR("France"), 
	   LON("Angleterre"), 
	    USA("Etats-Unis"), 
	   CHI("Chine"),
		  ITA("Italie"),
		  
		  RUS("Russie"),
		  MEX("Mexique");

	 
		private final String capital;
	
	    Pays (String capital ) {
	        this.capital = capital;
	    }
	 
	   

		public String getRubrique() {
	        return capital;
	    }

	    public static Pays valueOfLabel(String label) {
	        for (Pays r : values()) {
	            if (r.capital.equals(label)) {
	                return r;
	            }
	        }
	        return null;
	    }
	    
	    //Lookup table
	    private static final Map<Pays,String> lookup = new HashMap<>();
	    
	    private static final List<Pays> stringVal= new ArrayList<>();
	    
	    public static Map<Pays,String> setLookUpKeyValues() {
	    	
	    	for(Pays rub : Pays.values()) {
	    		
	    		lookup.put(rub, rub.getRubrique());
	    		
	    	}
	    	
	    	return lookup;
	    }
	    
	    public static List<Pays> setStringValues() {
	    	
	    	
	    	for(Pays rub : Pays.values()) {
	    		
	    		stringVal.add(rub);
	    		
	    	}
	    	
	    	return stringVal;
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
	    for(Pays rub : Pays.values())
	    {
	    	allMap.put(rub.name(), rub.getRubrique());
	        System.out.println(rub.name() + " :: "+ rub.getRubrique());
	    }
		return allMap;
	    }
	    
	    
	    
	    
	    
    public static List<Pays> getAllValuesRubrique() {
	    	
	    	List<Pays> allMap = null;
	    	String values = null;
	    for(Pays rub : Pays.values())
	    {
	 
	    	allMap.add(rub);
	    	
	       // System.out.println(rub.name() + " :: "+ rub.getRubrique());
	    }
		return allMap;
	    }
	    
	    
	public static List<String> getAllStringValList() {
		
		List<String> rubriqueList = null;
		for(Pays rub : Pays.values() ) {
		 	String rubGetter = rub.getRubrique();
		 	
		 	
		rubriqueList.add(rubGetter);
	  

		}
		return rubriqueList;
		
	}
		
	public static Pays[] getAllStringVal() {
		
		Pays[] rubriqueList = null;
		for(Pays rub : Pays.values() ) {
		 	String rubGetter = rub.getRubrique();
		 	
		 	//rub.get(url);
		 	
		 			rub.getRubrique();
		 				System.out.println(rub.getRubrique());
		}
		
		return rubriqueList;
	}

	public static Map<Pays, String> getLookup() {
		return lookup;
	}    
	
	
	
	    /*   public static Rubriques chooseString(String X) {
	    String prodUrl = Rubriques.X.getRubrique();
	    
	    System.out.println(prodUrl);
	    
	    } */
	    
}
