package contenu.entite;

import java.util.ArrayList;
import java.util.Collection;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import utilisateurs.entite.User;

@Entity
public class Skills {

	
	@Id @ GeneratedValue
	private int skills_id;

	private String intitule;
	private String description;
	private int difficulte;

	/*
	 * @OneToMany
	 * 
	 * @JoinTable(name="skills_requis", joinColumns=@JoinColumn(name="skills_id"),
	 * inverseJoinColumns=@JoinColumn(name="fk_skills_id_requis")
	 * 
	 * ) private Collection<Skills> fk_skills_requis = new ArrayList<Skills>();
	 * 
	 * @ManyToMany(cascade= CascadeType.ALL) private Collection<Article>
	 * skills_article = new ArrayList<Article>();
	 */
	public Skills() {
		
	}
	
	public Skills(String skills_intitule, String skills_description, int skills_difficulte
			) {
		super();
		this.intitule = skills_intitule;
		this.description = skills_description;
		this.difficulte = skills_difficulte;
	}

	public Skills(String skills_intitule, String skills_description, int skills_difficulte,
			Collection<Skills> fk_skills_requis) {
		super();
		this.intitule = skills_intitule;
		this.description = skills_description;
		this.difficulte = skills_difficulte;
	//	this.fk_skills_requis = fk_skills_requis;
	}

	public Skills(int skills_id, String skills_intitule, String skills_description, int skills_difficulte,
			Collection<Skills> fk_skills_requis, 
			Collection<Article> skills_article) {
		super();
		this.skills_id = skills_id;
		this.intitule = skills_intitule;
		this.description = skills_description;
		this.difficulte = skills_difficulte;
	//	this.fk_skills_requis = fk_skills_requis;
		
	//	this.skills_article = skills_article;
	}

	public int getSkills_id() {
		return skills_id;
	}

	public void setSkills_id(int skills_id) {
		this.skills_id = skills_id;
	}

	public String getSkills_intitule() {
		return intitule;
	}

	public void setSkills_intitule(String skills_intitule) {
		this.intitule = skills_intitule;
	}

	public String getSkills_description() {
		return description;
	}

	public void setSkills_description(String skills_description) {
		this.description = skills_description;
	}

	public int getSkills_difficulte() {
		return difficulte;
	}

	public void setSkills_difficulte(int skills_difficulte) {
		this.difficulte = skills_difficulte;
	}

	/*
	 * public Collection<Skills> getFk_skills_requis() { return fk_skills_requis; }
	 * 
	 * public void setFk_skills_requis(Collection<Skills> fk_skills_requis) {
	 * this.fk_skills_requis = fk_skills_requis; }
	 * 
	 * 
	 * 
	 * public Collection<Article> getSkills_article() { return skills_article; }
	 * 
	 * public void setSkills_article(Collection<Article> skills_article) {
	 * this.skills_article = skills_article; }
	 */
	
/*
	public Collection<User> getSkills_user() {
		return skills_user;
	}

	public void setSkills_user(Collection<User> skills_user) {
		this.skills_user = skills_user;
	}*/
	
}
