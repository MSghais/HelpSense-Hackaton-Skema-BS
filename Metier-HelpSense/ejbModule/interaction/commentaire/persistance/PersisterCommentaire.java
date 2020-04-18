package interaction.commentaire.persistance;

import java.util.Date;
import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import interaction.entite.Commentaire;

import utilisateurs.entite.User;


@Stateless
public class PersisterCommentaire implements PersistanceInterfaceCommentaire{
	
	Long nombreCommentaire= 1L;
	
	@PersistenceContext(unitName="UP_ETUDIANT")
	
	private EntityManager entityManager;
	
	
	@Override
	public void persisterUserCommentaire(User user, Commentaire Commentaire) {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public Commentaire selectCommentaireTitre(String titre) {
		// TODO Auto-generated method stub
		Query req = entityManager.createQuery("select c from Commentaire c  where c.art_titre =: titre ");
		req.setParameter("titre", titre);
		return (Commentaire) req.getSingleResult();
		
	}
	
	@Override
	public Commentaire selectCommentaireByIndex(Long id) {
		// TODO Auto-generated method stub
		Query req = entityManager.createQuery("select c from Commentaire c where c.id =: id ");
		req.setParameter("id", id);
		return (Commentaire) req.getSingleResult();
		
	}
	
/*

	*/
	
	@Override
	public Commentaire selectCommentaireByLastIndex() {
		// TODO Auto-generated method stub
		Query req = entityManager.createQuery ("SELECT c FROM Commentaire c WHERE c.id = (SELECT MAX(c.id) FROM Commentaire )");
		Commentaire result = (Commentaire) req.getSingleResult ();
	//req.setParameter("id", id);
		return (Commentaire) req.getSingleResult();
		
	}



@Override
public void insertCommentaireAchat(User user, Commentaire Commentaire) {
	
	Query query = entityManager.createNativeQuery("INSERT INTO achat_Commentaire "
			+ "( acheteur_id, fk_Commentaire_id)"
			+ " VALUES"
			+ " (  :acheteur_id, :fk_Commentaire_id );");
	
      query.setParameter("acheteur_id", user.getUser_id());
  
   
      query.setParameter("fk_Commentaire_id", Commentaire.getContenu());
      // :vendeur_id query.setParameter("vendeur_id", Commentaire.getUser_vendeur());
      query.executeUpdate();
	
  
	
}
@Override
public void insertCommentaireCommentaire(User user, Commentaire Commentaire) {
	// TODO Auto-generated method stub
	Query query = entityManager.createNativeQuery("INSERT INTO vente_Commentaire "
			+ "( vendeur_id, fk_Commentaire_id)"
			+ " VALUES"
			+ " (  :vendeur_id, :fk_Commentaire_id );");
	
      query.setParameter("vendeur_id", user.getUser_id());
  
   
      query.setParameter("fk_Commentaire_id", Commentaire.getContenu());
      // :vendeur_id query.setParameter("vendeur_id", Commentaire.getUser_vendeur());
      query.executeUpdate();
      
      ajouterCommentaireAchat(user, Commentaire);
}

@Override
public void ajouterCommentaireAchat(User user, Commentaire Commentaire) {
	// TODO Auto-generated method stub
	
	System.out.println("Ajouter Commentaire Achat ");
	//	user.addAchatCommentaires(Commentaire);
	
		
		  System.out.println("Get and Ajouter Commentaire Achat ");
		//  user.getAchatCommentaires().add(Commentaire);
		 
	//user.getAchatCommentaires().put(user.getUser_id(), Commentaire);
}

@Override
public void ajouterCommentaireVente(User user, Commentaire Commentaire) {
	// TODO Auto-generated method stub
	
	System.out.println("Ajouter Commentaire Ventes ");
		//user.addCommentairesVentes(Commentaire);
	
		System.out.println("Get and Ajouter Commentaire Ventes ");
		//user.getVentesCommentaires().add(Commentaire);
	//user.getAchatCommentaires().put(user.getUser_id(), Commentaire);
}

@Override
public void ajouterCommentaireCommentaire(User user, Commentaire Commentaire) {
	// TODO Auto-generated method stub
		//user.addCommentaireCommentaire(Commentaire);
	
	//user.getCommentairesCommentaires().add(Commentaire);
}

@Override
public void updateCommentaireStatutIndex(Long index, String status) {
	// TODO Auto-generated method stub
	Commentaire CommentaireModif = entityManager.find(Commentaire.class, index);
	
//	CommentaireModif.setStatus(status);

	mergeCommentaireReturn(CommentaireModif);
}

@Override
public void updateCommentaireDateEnvoi(Commentaire Commentaire) {
	// TODO Auto-generated method stub
	Query req = entityManager.createQuery("UPDATE Commentaire c SET c.date_envoi = now() WHERE c.id = :p");
	req.setParameter("p", Commentaire.getDate());
	req.executeUpdate();
	
	
}

@Override
public void updateCommentaireDateCreation(Commentaire Commentaire) {
	// TODO Auto-generated method stub
	Query req = entityManager.createQuery("UPDATE Commentaire c SET c.date_creation = now() WHERE c.id = :p");
	req.setParameter("p", Commentaire.getDate());
	req.executeUpdate();
	
	
}




	
	@Override
	public List<Commentaire> selectListCommentaireAcheteur(Long id) {
		// TODO Auto-generated method stub
		List<Commentaire> Commentaires;
		try {
			
			Query req = entityManager.createQuery ("SELECT c FROM Commentaire c WHERE c.acheteur_id = id");
			req.setParameter("id", id);
			Commentaires = req.getResultList();
		}catch(Exception e) {
			
			Commentaires=null;
		}
		
		return Commentaires;
		
	}
	


	@Override
	public void persisterCommentaire(Commentaire Commentaire) {
		// TODO Auto-generated method stub
		
		entityManager.persist(Commentaire);
		
	}

	


	@Override
	public Commentaire lireCommentaire(Long id) {
		// TODO Auto-generated method stub
		return entityManager.find(Commentaire.class, id);
	}


	@Override
	public Commentaire lireCommentaireName(String name) {
		// TODO Auto-generated method stub
		return entityManager.find(Commentaire.class, name);
	}

	@Override
	public List<Commentaire> lireTousCommentaire() {
		// TODO Auto-generated method stub
		Query rep = entityManager.createQuery("select c from Commentaire c");
		return (List<Commentaire>)  rep.getResultList();
	}



	
	@Override
	public void persisterAcheteurVendeurCommentaire(User vendeur, User acheteur, Commentaire Commentaire) {
		// TODO Auto-generated method stub
		
		Query query = entityManager.createNativeQuery("INSERT INTO vendeur_Commentaire (user_id, fk_Commentaire_id) VALUES (:user_id,:fk_Commentaire_id);");
;
	      query.setParameter("fk_Commentaire_id", Commentaire.getContenu());
	   
	      query.executeUpdate();
		
		
		entityManager.persist(Commentaire);
		
		
	}
	
	
	@Override
	public void supprimerCommentaire(Commentaire Commentaire) {
		entityManager.merge(Commentaire);
		entityManager.remove(Commentaire);
	}
	
	@Override
	public Commentaire selectCommentaireByCommentaire(Long Commentaire_id) {
		// TODO Auto-generated method stub
		Commentaire Commentaire;
		try {
			
			Query req = entityManager.createQuery("select c from Commentaire c  where c.Commentaire_id=: Commentaire_id ");
			req.setParameter("Commentaire_id", Commentaire_id);
			Commentaire = (Commentaire) req.getSingleResult();
		}catch(Exception e) {
			
			Commentaire=null;
		}
		
			return Commentaire;
	}
	
	

	@Override 
	public Commentaire mergeCommentaireReturn(Commentaire Commentaire) {
		
		return entityManager.merge(Commentaire);
	}
	




	@Override
	public void updateCommentaireStatut(Commentaire Commentaire, String contenu) {
		// TODO Auto-generated method stub
		
		  
		Commentaire commentaireModif = entityManager.find(Commentaire.class, Commentaire.getContenu());
				
		//CommentaireModif.setStatus(status);
		
		commentaireModif.setContenu(contenu);	
		
		commentaireModif.setDate(new Date());
		entityManager.merge(commentaireModif);
		
			
	}
	


	@Override
	public List<Commentaire> rechercherCommentaireByAcheteur(Long id_acheteur) {
		// TODO Auto-generated method stub
		Query rep = entityManager.createQuery ("SELECT c FROM Commentaire c WHERE acheteur_id =:  id_acheteur");
		
		rep.setParameter("id_acheteur", id_acheteur);
		return (List<Commentaire>) rep.getResultList();
		
	}
	
	@Override
	public List<Commentaire> rechercherCommentaireByCommentaire(Long id_Commentaire) {
		// TODO Auto-generated method stub
		Query rep = entityManager.createQuery ("SELECT a FROM Commentaire a WHERE c.Commentaire_id =:  id_Commentaire ");
		
		rep.setParameter("id_Commentaire", id_Commentaire);
		return rep.getResultList();
		
	}
	
	@Override
	public List<Commentaire> rechercherCommentaireByStatut(Long id, String statut) {
		// TODO Auto-generated method stub
		Query rep = entityManager.createQuery ("SELECT a FROM Commentaire a WHERE a.vendeur_id =:  id AND a.statutCommentaire := statut ;");
		
		rep.setParameter("id", id);
		//rep.setParameter("statut", statut.RESERVE);
		return (List<Commentaire>) rep.getResultList();
		
	}

	@Override
	public List<Commentaire> lireTousCommentaireVendeur(Long login) {
		Query req = entityManager.createQuery("select a from Commentaire a where vendeur.login=:login");
		req.setParameter("login", login);
		return req.getResultList();
	}	
	@Override
	public List<Commentaire> lireTousAchats(Long id) {
		Query req = entityManager.createQuery("select c from Commentaire c where acheteurUser.id=:id");
		req.setParameter("id", id);
		return req.getResultList();		
	}
	@Override
	public List<Commentaire> lireTousVenteEnCours(Long login) {
		Query req = entityManager.createQuery("select c from Commentaire c where Commentaire.vendeur_id=: login");
		req.setParameter("login", login);
		return req.getResultList();			
	}
	
	@Override
	public List<Commentaire> lireTousCommentaireByAcheteur(Long user_id) {
		// TODO Auto-generated method stub
		Query req = entityManager.createQuery("select c from Commentaire c  where c.acheteur_id=: user_id ");
		req.setParameter("user_id", user_id);
		return (List<Commentaire>)  req.getResultList();
	}

	

@Override
public Commentaire lireTousCommentaireByCommentaireException(Long Commentaire_id) {
	// TODO Auto-generated method stub
 Commentaire Commentaire;
	try {
		
		Query req = entityManager.createQuery("select c from Commentaire c  where c.Commentaire_id=: Commentaire_id AND where Commentaire.status =: status");
		req.setParameter("Commentaire_id", Commentaire_id);
		//req.setParameter("status", StatutCommentaire.RESERVE);
		Commentaire = (Commentaire) req.getSingleResult();
	}catch(Exception e) {
		
		Commentaire=null;
	}
	
		return Commentaire;
	
}


@Override
public List<Commentaire> lireTousCommentaireReserveByVendeurException(Long user_id) {
	// TODO Auto-generated method stub
	List<Commentaire> CommentairesReserve;
	try {
		
		Query req = entityManager.createQuery("select a from Commentaire a  where vendeur_id=: user_id AND  a.status =: status");
		req.setParameter("user_id", user_id);
		//req.setParameter("status", StatutCommentaire.RESERVE);
		CommentairesReserve = req.getResultList();
	}catch(Exception e) {
		
		CommentairesReserve=null;
	}
	
		return CommentairesReserve;
}

@Override
public List<Commentaire> lireTousCommentaireByVendeurException(Long user_id) {
	// TODO Auto-generated method stub
	List<Commentaire> CommentairesReserve;
	try {
		
		Query req = entityManager.createQuery("select a from Commentaire a  where vendeur_id=: user_id ");
		req.setParameter("user_id", user_id);

		CommentairesReserve = req.getResultList();
	}catch(Exception e) {
		
		CommentairesReserve=null;
	}
	
		return CommentairesReserve;
}

@Override
public List<Commentaire> lireTousCommentaireByAcheteurException(Long user_id) {
	// TODO Auto-generated method stub
List<Commentaire> Commentaires;
	try {
		
		Query req = entityManager.createQuery("select c from Commentaire c  where c.acheteur_id=: user_id ");
		req.setParameter("user_id", user_id);
		Commentaires = req.getResultList();
	}catch(Exception e) {
		
		Commentaires=null;
	}
	
		return Commentaires;
	
}




/*  @Override
	public List<Commentaire> lireTousCommentaireByAcheteurException(Long user_id) {
		// TODO Auto-generated method stub
	List<Commentaire> Commentaires;
		try {
			
			Query req = entityManager.createQuery("select c from Commentaire c  where Commentaire.user.user_id=: user_id ");
			req.setParameter("user_id", user_id);
			Commentaires = req.getResultList();
		}catch(Exception e) {
			
			Commentaires=null;
		}
		
			return Commentaires;
		
	}

@Override
public List<Commentaire> lireTousCommentaireByVendeurException(Long user_id) {
	// TODO Auto-generated method stub
List<Commentaire> Commentaires;
	try {
		
		Query req = entityManager.createQuery("select c from Commentaire c  where c.user=: user_id ");
		req.setParameter("user_id", user_id);
		Commentaires = req.getResultList();
	}catch(Exception e) {
		
		Commentaires=null;
	}
	
		return Commentaires;
	
}
 */


	/*  	@Override
	public void creerCommentaireAll(Commentaire Commentaire, User acheteur) {
		// TODO Auto-generated method stub

		Long nombreCommentaire= 1L;
		
		Query query = entityManager.createNativeQuery("INSERT INTO Commentaire "
				+ "(id, date_creation,  prix, statutCommentaire, acheteur_id, Commentaire_id, vendeur_id)"
				+ " VALUES"
				+ " ( :id, now(), :prix, :statutCommentaire, :acheteur_id, :Commentaire_id,  :vendeur_id);");

		//  entityManager.getTransaction().begin();
			
	   //   query.setParameter("user_id" ,user.getUser_id());
		 query.setParameter("id", nombreCommentaire++);
		 query.setParameter("prix", Commentaire.getPrix());
	      query.setParameter("acheteur_id", acheteur.getUser_id());
	      
	      
	      query.setParameter("statutCommentaire", StatutCommentaire.ENCOURS);
	      
	      
	      query.setParameter("vendeur_id", Commentaire.getUser_vendeur());
	      
	      query.setParameter("Commentaire_id", Commentaire.getId());
	      query.setParameter("vendeur_id", Commentaire.getUser_vendeur());
	      query.executeUpdate();
		
	     // Commentaire.setStatus(StatutCommentaire.RESERVE);
		
		//entityManager.persist(Commentaire);
		  
		
		
	} */
	
}
