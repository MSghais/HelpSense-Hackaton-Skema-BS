package contenu.persistance.article;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import contenu.entite.Article;
import contenu.entite.Theme;
import contenu.enume.Pays;
import contenu.enume.Rubriques;
import contenu.enume.Secteur;
import contenu.enume.StatutArticle;
import interaction.entite.Commentaire;
import utilisateurs.entite.User;


@Stateless
public class PersisterArticle implements PersistanceArticleItf{
	
	
	@PersistenceContext(unitName="UP_ETUDIANT")
	
	private EntityManager entityManager;
	
	


	@Override
	public List<Article> lireTousArticle() {
		// TODO Auto-generated method stub
		Query rep = entityManager.createQuery("select a from Article a");
		return (List<Article>)  rep.getResultList();
	}
	

	@Override
	public void persisterArticle(Article article) {
		// TODO Auto-generated method stub
		entityManager.persist(article);
		
	}


	@Override
	public Article lireArticle(Long id) {
		// TODO Auto-generated method stub
		return entityManager.find(Article.class, id);
	}


	@Override
	public Article lireArticleName(String name) {
		// TODO Auto-generated method stub
		return entityManager.find(Article.class, name);
	}


	@Override
	public List<Article> selectArticleByTheme(String theme) {
		// TODO Auto-generated method stub
		Query req = entityManager.createQuery("select a from Article a  where a.theme.intitule =: theme ");
		req.setParameter("theme", theme);
		return req.getResultList();
		
	}

	
	@Override
	public Article selectArticleTitre(String titre) {
		// TODO Auto-generated method stub
		Query req = entityManager.createQuery("select a from Article a  where a.art_titre =: titre ");
		req.setParameter("titre", titre);
		return (Article) req.getSingleResult();
		
	}
	
	@Override
	public Article selectArticleByUser(Long user_id) {
		// TODO Auto-generated method stub
		Query req = entityManager.createQuery("select a from user_article a  where a.user_id =: user_id ");
		req.setParameter("user_id", user_id);
		return (Article) req.getSingleResult();
		
	}

	
	@Override
	public Article selectUserByArticle(Long article_id) {
		// TODO Auto-generated method stub
		Query req = entityManager.createQuery("select a from user_article a  where a.fk_article_user =: article_id ");
		req.setParameter("article_id", article_id);
		return (Article) req.getSingleResult();
		
	}

	@Override
	public Article insertUserByArticle(Long article_id) {
		// TODO Auto-generated method stub
		Query req = entityManager.createQuery("select a from user_article a  where a.fk_article_user =: article_id ");
		req.setParameter("article_id", article_id);
		return (Article) req.getSingleResult();
		
	}

	
	@Override
	public void supprimerArticle(Article article) {
		// TODO Auto-generated method stub
		entityManager.merge(article);
		entityManager.remove(article);
	}

	@Override 
	public Article mergeArticleReturn(Article article) {
		
		return entityManager.merge(article);
	}

	@Override 
	public void mergeArticle(Article article) {
		
		 entityManager.merge(article);
	}

	
	@Override
	public void persisterUserArticle(User user, Article article) {
		// TODO Auto-generated method stub
	
		entityManager.persist(article);
		Article articleModif = entityManager.find(Article.class, article.getId());
		articleModif.setVendeur(user);	
		entityManager.merge(articleModif);	
		
	}
	
	
	@Override
	public void updateArticleStatut(Article article, StatutArticle status) {
		
		//  entityManager.getTransaction().begin();
		  
		Article articleModif = entityManager.find(Article.class, article.getId());
		
		articleModif.setStatus(status);
		
		modifierArticle(articleModif);
		
	}

	@Override
	public Article modifierArticle(Article article) {
		return entityManager.merge(article);
	}
	
	@Override
	public void updateArticleDate(Article article) {
		// TODO Auto-generated method stub
		
		Query req = entityManager.createQuery("UPDATE article a SET a.date = now() WHERE a.id = :p");
		req.setParameter("p", article.getId());
		req.executeUpdate();
		
		
	}
	@Override
	public List<Article> lireTousArticleByUserVente(Long user_id) {
		// TODO Auto-generated method stub
		Query req = entityManager.createQuery("select a from Article a  where vendeur_id =: user_id ");
		
		
		req.setParameter("user_id", user_id);
		return (List<Article>)  req.getResultList();
	}

	@Override
	public Article rechercherArticleIndex(Long id) {
		System.out.println("rechercherUserLogin");
		
			Query query = entityManager.createQuery("select a from Article a where a.id =: id ");
			query.setParameter("id", id);
		
			return (Article) query.getSingleResult();
	
	}
	
	@Override
	public void ajouterArticleAchat(User user, Article article) {
		// TODO Auto-generated method stub
			user.addAchatArticles(article);
		
			user.getAchatArticles().add(article);
	}


	@Override
	public List<Article> selectArticleBySecteur(Secteur secteurVal) {
		List<Article> articlesBySecteur;
		try {
			
			Query req = entityManager.createQuery("select a from Article a  where a.secteur =: secteurVal");
			req.setParameter("secteurVal", secteurVal);
			//req.setParameter("status", StatutCommentaire.RESERVE);
			articlesBySecteur = (	List<Article> ) req.getResultList();
		}catch(Exception e) {
			
			articlesBySecteur=null;
		}
		
			return articlesBySecteur;
			
	}


	@Override
	public List<Article> selectArticleByRubrique(Rubriques rubriques) {
		
		List<Article> articlesByRubrique;
		try {
			
			Query req = entityManager.createQuery("select a from Article a  where a.rubrique =: rubriques");
			req.setParameter("rubriques", rubriques);
			//req.setParameter("status", StatutCommentaire.RESERVE);
			articlesByRubrique = (	List<Article> ) req.getResultList();
		}catch(Exception e) {
			
			articlesByRubrique=null;
		}
		
			return articlesByRubrique;
	}


	@Override
	public List<Article> selectArticleByPays(Pays pays) {
		// TODO Auto-generated method stub
		List<Article> articlesByPays;
		try {
			
			Query req = entityManager.createQuery("select a from Article a  where a.pays =: pays");
			req.setParameter("pays", pays);
			//req.setParameter("status", StatutCommentaire.RESERVE);
			articlesByPays = (	List<Article> ) req.getResultList();
		}catch(Exception e) {
			
			articlesByPays=null;
		}
		
			return articlesByPays;
	}
	

}
