package interaction.entite;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PersistenceContext;

import contenu.entite.Article;
import contenu.entite.Skills;
import utilisateurs.entite.User;

@Entity
public class Like {
	
	@Id
	private Long id;
	
	private Long number;
	
	private Date date;

	/*
	 * @OneToOne(optional = false)
	 * 
	 * @JoinColumn(name="user_id") private User user;
	 * 
	 * 
	 * @OneToOne(optional = false)
	 * 
	 * @JoinColumn(name="article_id") private Article article;
	 */
	
	
	/*
	 * @ManyToMany
	 * 
	 * @JoinTable(name="commentaire_user",
	 * joinColumns=@JoinColumn(name="comment_id"),
	 * inverseJoinColumns=@JoinColumn(name="fk_user") ) private Collection<User>
	 * user_id_comment = new ArrayList<User>();
	 * 
	 * 
	 * 
	 * @ManyToMany
	 * 
	 * @JoinTable(name="commentaire_comment",
	 * joinColumns=@JoinColumn(name="comment_id"),
	 * inverseJoinColumns=@JoinColumn(name="fk_comment_id") ) private
	 * Collection<Commentaire> commentaire_comment = new ArrayList<Commentaire>();
	 * 
	 * 
	 * 
	 * @ManyToMany
	 * 
	 * @JoinTable(name="commentaire_article",
	 * joinColumns=@JoinColumn(name="comment_id"),
	 * inverseJoinColumns=@JoinColumn(name="fk_article_id") ) private
	 * Collection<Article> article_id = new ArrayList<Article>();
	 * 
	 * 
	 * @OneToMany
	 * 
	 * @JoinTable(name="commentaire_skills",
	 * joinColumns=@JoinColumn(name="comment_id"),
	 * inverseJoinColumns=@JoinColumn(name="fk_skills_id_commentaire") ) private
	 * Collection<Skills> commentaire_skills= new ArrayList<Skills>();
	 */
	
/*
	@ManyToOne
	@JoinColumn(name="user_id")
	private Collection<User> userPublication = new ArrayList<User>();
	
	@ManyToOne
	@JoinColumn(name="article_id")
	private Collection<User> articlePublication = new ArrayList<User>();
	
	
	*/


	public Like() {
		// TODO Auto-generated constructor stub
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Long getNumber() {
		return number;
	}

	public void setNumber(Long number) {
		this.number = number;
	}



	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	
	

	
	
	
}
