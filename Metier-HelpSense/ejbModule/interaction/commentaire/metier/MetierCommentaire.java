package interaction.commentaire.metier;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.ejb.EJB;
import javax.ejb.Stateless;
import javax.servlet.http.HttpServletRequest;

import org.jboss.resteasy.spi.HttpRequest;

import contenu.entite.Article;
import contenu.entite.Theme;
import contenu.enume.StatutArticle;
import contenu.persistance.theme.PersistanceThemeItf;
import interaction.commentaire.persistance.PersistanceInterfaceCommentaire;
import interaction.entite.Commentaire;

import utilisateurs.entite.User;
import utilisateurs.persistance.PersistanceUserItf;

@Stateless
public class MetierCommentaire implements MetierInterfaceCommentaire {

	@EJB
	private PersistanceThemeItf persistanceTheme;
	
	@EJB
	private PersistanceInterfaceCommentaire persistanceCommentaire;

	@EJB 
	private PersistanceUserItf persistanceUser;
	
	
	private Long nombreCommentaire = 1L;

	private Map<Long, Commentaire> commentaires;

	private Map<Theme, Commentaire> commentairesThematiques;

	private Map<String, String> erreurMap;
	
	private String erreurMsg;

	private String erreurPicto;

	private String resultat;

	private final String CHAMP_TITRE = "art_titre";
	private final String CHAMP_URL = "art_url";
	private final String CHAMP_DESCL = "art_description";
	private final String CHAMP_CONTENT = "art_contenu";

	private final String CHAMP_CONF = "confirmation";

	public static final String ATTRIBUT_ERREUR_MSG = "msgErreur";
	public static final String ATTRIBUT_ERREUR_MAP_CB = "erreursMapCB";
	public static final String ATTRIBUT_ERREUR = "erreurs";

	public static final String ATTRIBUT_ERREUR_CB = "erreurCB";
	public static final String ATTRIBUT_ERREUR_PICTO = "erreurPicto";

	public MetierCommentaire() {
		System.out.println("Constructeur Metier");
		commentaires = new HashMap<Long, Commentaire>();

		erreurMap = new HashMap<String, String>();

		commentairesThematiques = new HashMap<Theme, Commentaire>();
		//init();
	}
	
	
	
	
	@Override
	public void creerCommentaireSimply(String contenu, String url_video, User user, 
			Article article ) {
		// TODO Auto-generated method stub
		
		
		Commentaire commentaire = new Commentaire();
		commentaire.setContenu(contenu);
	//	commentaire.setArticle(article);
		commentaire.setUser(user);
		commentaire.setDate(new Date());
		
		
	}

	
	
	
	@Override
	public void setErreur(String champ, String message) {
		// TODO Auto-generated method stub
		erreurMap.put(champ, message);
	}

	@Override
	public Map<String, String> getErreurs() {
		// TODO Auto-generated method stub
		return erreurMap;
	}

	@Override
	public String getResultat() {
		// TODO Auto-generated method stub
		return resultat;
	}

	@Override
	public String getValeurChamp(HttpServletRequest request, String nomChamp) {
		String valeur = request.getParameter(nomChamp);
		if (valeur == null || valeur.trim().length() == 0) {
			return null;
		} else {
			return valeur;
		}
	}

	@Override
	public void setResultat(String resultat) {
		this.resultat = resultat;
	}



	@Override
	public void mettreAJourCommentaire(Commentaire Commentaire) {
		persistanceCommentaire.mergeCommentaireReturn(Commentaire);

	}

	@Override
	public void supprimerCommentaire(Commentaire Commentaire) {
		// TODO Auto-generated method stub
		
		persistanceCommentaire.supprimerCommentaire(Commentaire);

	}
	
	@Override
	public Commentaire lireCommentaire(Long Commentaire_id) {
		return persistanceCommentaire.lireCommentaire(Commentaire_id);
	}
	@Override
	public Commentaire lireCommentaireByArticleIndexException(String id) {
		// TODO Auto-generated method stub
		//Commentaire commentaire = lireCommentaire(Commentaire_id);
		Commentaire commentaire = lireTousCommentaireByArticleException(id) ;
		System.out.println("Commentaire Index is =" + commentaire);
		
		return commentaire;
		
	}


	@Override
	public void persisterCommentaire(Commentaire Commentaire) {
		// TODO Auto-generated method stub

	}



	@Override
	public void updateCommentaireStatut(Commentaire Commentaire, String status) {

		persistanceCommentaire.updateCommentaireStatut(Commentaire, status);

	}

	@Override
	public void updateCommentaireStatutindex(Long index, String status) {
		// TODO Auto-generated method stub
		persistanceCommentaire.updateCommentaireStatutIndex(index, status);
	}




	
	
	@Override
	public List<Commentaire> rechercherCommentaireByAcheteur(Long acheteur_id) {
		// TODO Auto-generated method stub
		return (List<Commentaire> ) persistanceCommentaire.rechercherCommentaireByAcheteur(acheteur_id);
	}

	@Override
	public List<Commentaire> lireTousAchat(Long acheteur_id) {
		// TODO Auto-generated method stub
		return persistanceCommentaire.lireTousAchats(acheteur_id);
	}

	@Override
	public List<Commentaire> lireTousVenteEnCours(Long acheteur_id) {
		// TODO Auto-generated method stub
		return persistanceCommentaire.lireTousVenteEnCours(acheteur_id);
	}
	

	
@Override
public List<Commentaire> lireTousCommentaireByAcheteur(Long user_id) {
	// TODO Auto-generated method stub
	return persistanceCommentaire.lireTousCommentaireByAcheteur(user_id);
}

@Override
public List<Commentaire> lireTousCommentaireByAcheteurException(Long user_id) {
	// TODO Auto-generated method stub
	return persistanceCommentaire.lireTousCommentaireByAcheteurException(user_id);
}

@Override
public List<Commentaire> lireTousCommentaireByVendeurException(Long user_id) {
	// TODO Auto-generated method stub
	return persistanceCommentaire.lireTousCommentaireByVendeurException(user_id);
}




@Override
public void updateCommentaireDateCreation(Commentaire Commentaire) {
	// TODO Auto-generated method stub
	persistanceCommentaire.updateCommentaireDateCreation(Commentaire);
}

@Override
public void updateCommentaireDateEnvoi(Commentaire Commentaire) {
	// TODO Auto-generated method stub
	persistanceCommentaire.updateCommentaireDateEnvoi(Commentaire);
}
	/*
	 * 
	 * public void setErreurs(Map<String, String> erreurs) { this.erreurs = erreurs;
	 * }
	 */


@Override
public List<Commentaire> lireTousCommentaire() {
	// TODO Auto-generated method stub
	return null;
}

@Override
public void validationPictogramme(String picto) throws Exception {
	// TODO Auto-generated method stub
	
}

@Override
public void validationBanquaire(String cb_code) throws Exception {
	// TODO Auto-generated method stub
	
}



@Override
public List<Commentaire> lireTousCommentaireVendeur(Long login) {
	// TODO Auto-generated method stub
	return null;
}

@Override
public Commentaire selectCommentaireByLastIndex() {
	// TODO Auto-generated method stub
	return null;
}

@Override
public Commentaire selectCommentaireByIndex(Long id) {
	// TODO Auto-generated method stub
	return null;
}

@Override
public Commentaire modifierCommentaire(Long id, String statut) {
	// TODO Auto-generated method stub
	return null;
}

@Override
public boolean validerPicto(HttpServletRequest request) {
	// TODO Auto-generated method stub
	return false;
}

@Override
public boolean validerCodeBanque(HttpServletRequest request) {
	// TODO Auto-generated method stub
	return false;
}

@Override
public List<Commentaire> rechercherCommentaireByStatut(Long id, StatutArticle statut) {
	// TODO Auto-generated method stub
	return null;
}

@Override
public Article lireArticle(Long article_id) {
	// TODO Auto-generated method stub
	return null;
}

@Override
public void insertArticleAchat(User user, Article article) {
	// TODO Auto-generated method stub
	
}

@Override
public void insertArticleCommentaire(User user, Article article) {
	// TODO Auto-generated method stub
	
}

@Override
public Commentaire selectCommentaireByArticle(Long article_id) {
	// TODO Auto-generated method stub
	return null;
}

@Override
public Commentaire lireTousCommentaireByArticleException(String string) {
	// TODO Auto-generated method stub
	return null;
}

@Override
public void updateArticleStatut(Article article, StatutArticle status) {
	// TODO Auto-generated method stub
	
}

@Override
public void ajouterArticleCommentaire(User user, Commentaire Commentaire) {
	// TODO Auto-generated method stub
	
}

@Override
public void ajouterArticleAchat(User user, Article article) {
	// TODO Auto-generated method stub
	
}

@Override
public void ajouterArticleVenteEnCours(User user, Article article) {
	// TODO Auto-generated method stub
	
}

@Override
public Commentaire lireCommentaireByArticleIndexException(Long article_id) {
	// TODO Auto-generated method stub
	return null;
}

@Override
public void supprimerCommentaireByArticleIndexException(Long article_id) {
	// TODO Auto-generated method stub
	
}

@Override
public void validerCommentaireByArticleIndexException(Long article_id) {
	// TODO Auto-generated method stub
	
}

@Override
public void envoyerCommentaireByArticleIndexException(Long article_id) {
	// TODO Auto-generated method stub
	
}

	/*
	 * public void persisterEtudiantPromotion(String acronyme,Etudiant etudiant) {
	 * System.out.println("Metier - inscrireEtudiantPromotion acronyme=" + acronyme
	 * + " etudiant=" + etudiant); etudiant.setId(idEtudiant);
	 * etudiants.put(idEtudiant, etudiant); idEtudiant++; Promotion promotion =
	 * promotions.get(acronyme); promotion.addEtudiant(etudiant); }
	 * 
	 * 
	 * public void inscrireEtudiantPromotion(String acronyme,Etudiant etudiant) {
	 * System.out.println("Metier - inscrireEtudiantPromotion acronyme=" + acronyme
	 * + " etudiant=" + etudiant); etudiant.setId(idEtudiant);
	 * etudiants.put(idEtudiant, etudiant); idEtudiant++; Promotion promotion =
	 * promotions.get(acronyme); promotion.addEtudiant(etudiant); }
	 */

	/*
	 * public void ajouterRetard(Long index) {
	 * 
	 * //etudiants.get(index).getRetard().setRetard(retard++); //Metier metier =
	 * null; System.out.println("id etudiant=" + index); Etudiant etudiant =
	 * lireEtudiant(index);
	 * 
	 * System.out.println(etudiant); etudiant.setRetard(etudiant.getRetard()+1);
	 * System.out.println(etudiant);
	 * 
	 * }
	 * 
	 * public void ajouterAbsence(Long id) { System.out.println("id etudiant=" +
	 * id); Etudiant etudiant = lireEtudiant(id); System.out.println(etudiant);
	 * etudiant.setAbsence(etudiant.getAbsence()+1); System.out.println(etudiant);
	 * /*etudiants.get(index).getRetard().setRetard(retard++); int absence=
	 * etudiant.getRetard(); etudiant.setAbsence(absence++); }
	 */

}
