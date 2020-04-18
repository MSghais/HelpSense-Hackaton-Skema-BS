package contenu.entite;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;

@Entity
public class Hashtag {


	@Id
	private String intitule;

	public Hashtag() {
		
	}

	public Hashtag(String hash_intitule) {
		super();
		
		this.intitule = hash_intitule;
	}

	public String getIntitule() {
		return intitule;
	}

	public void setIntitule(String hash_intitule) {
		this.intitule = hash_intitule;
	}
	
	
	
	
}
