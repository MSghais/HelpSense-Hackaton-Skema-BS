package interaction;

import java.io.IOException;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import contenu.entite.Article;
import contenu.metier.article.MetierInterfaceArticle;
import contenu.model.ModelContenu;
import interaction.commentaire.metier.MetierInterfaceCommentaire;
import interaction.model.commentaire.ModelInteraction;
import utilisateurs.entite.User;

import utilisateurs.model.ModelUser;



@WebServlet("/voirArticle")
public class VueArticle extends HttpServlet { 
	
	
	@EJB 
	MetierInterfaceArticle metier;
	
	@EJB 
	MetierInterfaceCommentaire metierCommentaire;
	
	  public static final String ATT_USER = "utilisateur";
	    public static final String ATT_FORM = "form";
		public static final String ATTRIBUT_USER         = "utilisateur";
		public static final String ATTRIBUT_USER_SESSION         = "utilisateurSession";
		public static final String ATTRIBUT_USER_LOGIN         = "userLogin";
		public static final String ATTRIBUT_USER_ID      = "userId";
		public static final String ATTRIBUT_USER_ROLE      = "userRole";
		
		public static final String ATTRIBUT_ARTICLE_VIEW      = "article";
		
		
	
	  public static final String VUE_ARTICLE   = "WEB-INF/contenu/vente/vueArticle.jsp";
	
	@PostConstruct
	public void init() {
		System.out.println("MyServlet init");
	}
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		   ModelContenu modelVoir = new ModelContenu();
		Long article_id = Long.valueOf(request.getParameter("id"));
		   System.out.println("article id"+ article_id);
		   
		   Article article = metier.rechercherArticleIndex(article_id);
		   request.setAttribute(ATTRIBUT_ARTICLE_VIEW, article);
		   
		   modelVoir.setArticle(article);
		   request.setAttribute("modelVoir", modelVoir);
		   
			request.getRequestDispatcher(VUE_ARTICLE).forward(request, response);
			
			
		doPost(request,response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("MyServlet doPost");
	
	//	request.getRequestDispatcher(VUE_ARTICLE).forward(request, response); 
		  
		
		Article article = (Article) request.getAttribute(ATTRIBUT_ARTICLE_VIEW);
		
		
		ModelInteraction modelCommentaire = new ModelInteraction();
		
		modelCommentaire.setArticle(article);
		
	
		//ModelContenu model = new ModelContenu(); 
		
		   HttpSession sessionServlet = request.getSession();
		   
		   if( !ATT_USER.isEmpty() ) {
			   User user =  (User) sessionServlet.getAttribute(ATT_USER);
				  System.out.println("user Vue Article" + user); 
				  System.out.println("user Vue Article INDEX" + user.getUser_id()); 
			 
			   
		   }
		 
		   User user =  (User) sessionServlet.getAttribute(ATT_USER);
			  System.out.println("user Vue Article" + user); 
			  System.out.println("user Vue Article INDEX" + user.getUser_id()); 
		 
		   
		  
		   
		   
		   if(request.getParameter("commentaireArticle") != null) {
			   
			   
			   String commentaire_contenu = request.getParameter("commentaire");
			   
			   System.out.println("commentaire contenu =" + commentaire_contenu);
			   
				
			   
			   System.out.println("Lancement commentaire creation BDD contenu ");
			   
				
			   metierCommentaire.creerCommentaireSimply(commentaire_contenu,  user, article);
			   
			   System.out.println("Renvoi vue article ");
			   
			  request.getRequestDispatcher(VUE_ARTICLE).forward(request, response); 
		   
		   
		   
		   
		   
		   
		   } // Fin Condition
		   
		   
		   
		   
		   
		   
		   
	   } // fin do POST
	   
	
		
	
		
		
	        
} // Fin CLASSE
		
	

	

