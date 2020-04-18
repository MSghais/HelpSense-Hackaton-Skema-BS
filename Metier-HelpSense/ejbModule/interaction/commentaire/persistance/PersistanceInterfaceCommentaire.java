package interaction.commentaire.persistance;

import java.util.List;

import interaction.entite.Commentaire;

import utilisateurs.entite.User;



public interface PersistanceInterfaceCommentaire {

	
	void persisterCommentaire(Commentaire Commentaire);
	List<Commentaire> lireTousCommentaire();
	Commentaire lireCommentaire(Long id);
	Commentaire lireCommentaireName(String name);
	
	void insertCommentaireAchat(User user, Commentaire Commentaire);
	void insertCommentaireCommentaire(User user, Commentaire Commentaire);

	
	void persisterUserCommentaire(User user, Commentaire Commentaire);
	void persisterAcheteurVendeurCommentaire(User vendeur, User acheteur, Commentaire Commentaire);
	
	Commentaire selectCommentaireTitre(String titre);

	
	
	void updateCommentaireStatut(Commentaire Commentaire, String status);
	
	void updateCommentaireStatutIndex(Long index, String status) ;
	
	void ajouterCommentaireCommentaire(User user, Commentaire Commentaire);
	Commentaire selectCommentaireByIndex(Long id);
	
	void ajouterCommentaireAchat(User user, Commentaire Commentaire);

	Commentaire selectCommentaireByLastIndex();
	Commentaire selectCommentaireByCommentaire(Long Commentaire_id);
	

	List<Commentaire> rechercherCommentaireByAcheteur(Long acheteur_id);
	List<Commentaire> rechercherCommentaireByCommentaire(Long id);
	List<Commentaire> rechercherCommentaireByStatut(Long id, String statut);
	
	List<Commentaire> lireTousAchats(Long id);
	List<Commentaire> lireTousVenteEnCours(Long login);
	List<Commentaire> lireTousCommentaireVendeur(Long login);
	
	
	List<Commentaire> lireTousCommentaireByVendeurException(Long user_id);
	
	List<Commentaire> lireTousCommentaireByAcheteur(Long user_id);
	
	List<Commentaire> lireTousCommentaireByAcheteurException(Long user_id) ;
	
	void ajouterCommentaireVente(User user, Commentaire Commentaire);
	
	List<Commentaire> lireTousCommentaireReserveByVendeurException(Long user_id);
	Commentaire lireTousCommentaireByCommentaireException(Long Commentaire_id);
	

	
	void updateCommentaireDateCreation(Commentaire Commentaire);
	void updateCommentaireDateEnvoi(Commentaire Commentaire);
	Commentaire mergeCommentaireReturn(Commentaire Commentaire);
	void supprimerCommentaire(Commentaire Commentaire);
	
	List<Commentaire> selectListCommentaireAcheteur(Long id);


}
