package interaction.commentaire.metier;

import java.util.List;
import java.util.Map;

import javax.ejb.Local;
import javax.servlet.http.HttpServletRequest;

import org.jboss.resteasy.spi.HttpRequest;

import contenu.entite.Article;
import contenu.enume.StatutArticle;
import interaction.entite.Commentaire;

import utilisateurs.entite.User;





@Local
public interface MetierInterfaceCommentaire {
	// PROMOTIONS

	

	
	Commentaire lireCommentaire(Long id);	
	void mettreAJourCommentaire(Commentaire commentaire);
	void supprimerCommentaire(Commentaire commentaire);
	List<Commentaire> lireTousCommentaire();
	void persisterCommentaire(Commentaire commentaire);

	void validationPictogramme(String picto) throws Exception;
	void validationBanquaire(String cb_code) throws Exception;
	
	String getResultat();
	void setResultat(String resultat);
	
	String getValeurChamp(HttpServletRequest request, String nomChamp);
	void setErreur(String champ, String message);
	Map<String, String> getErreurs();

	
	List<Commentaire> lireTousCommentaireByVendeurException(Long user_id);
	List<Commentaire> rechercherCommentaireByStatut(Long id, StatutArticle statut);
	List<Commentaire> lireTousCommentaireVendeur(Long login);
	
	Article lireArticle(Long article_id);
	
	
	void insertArticleAchat(User user, Article article);
	void insertArticleCommentaire(User user, Article article);
	
	Commentaire selectCommentaireByArticle(Long article_id);
	Commentaire selectCommentaireByLastIndex();
	Commentaire selectCommentaireByIndex(Long id);

	Commentaire lireTousCommentaireByArticleException(String string);

	List<Commentaire> rechercherCommentaireByAcheteur(Long acheteur_id);
	List<Commentaire> lireTousAchat(Long acheteur_id);
	List<Commentaire> lireTousVenteEnCours(Long acheteur_id);
	List<Commentaire> lireTousCommentaireByAcheteur(Long user_id);
	List<Commentaire> lireTousCommentaireByAcheteurException(Long user_id) ;

	
	void updateArticleStatut(Article article, StatutArticle status);
	void updateCommentaireStatut(Commentaire Commentaire, String status);
	void updateCommentaireStatutindex(Long index, String status) ;
	
	void ajouterArticleCommentaire(User user, Commentaire Commentaire);
	void ajouterArticleAchat(User user, Article article);
	void ajouterArticleVenteEnCours(User user, Article article);
	
	void updateCommentaireDateCreation(Commentaire Commentaire);
	void updateCommentaireDateEnvoi(Commentaire Commentaire);
	
	
	Commentaire lireCommentaireByArticleIndexException(Long article_id);
	Commentaire modifierCommentaire(Long id, String statut);
	void supprimerCommentaireByArticleIndexException(Long article_id);
	void validerCommentaireByArticleIndexException(Long article_id);
	void envoyerCommentaireByArticleIndexException(Long article_id);


	boolean validerPicto(HttpServletRequest request);
	boolean validerCodeBanque(HttpServletRequest request);


	Commentaire lireCommentaireByArticleIndexException(String id);

	
	//void creerCommentaireSimply(String login, Long article_id);
	
	
	void creerCommentaireSimply(String contenu,  User user, Article article);
	void creerCommentaireHard(String contenu, String url_video, User user, Article article);
	void mettreAJourArticle(Article article);

	

}
