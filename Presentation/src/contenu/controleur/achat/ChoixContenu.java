

package contenu.controleur.achat;

import java.io.IOException;
import java.security.Principal;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import contenu.entite.Article;
import contenu.entite.Theme;
import contenu.enume.Pays;
import contenu.enume.Rubriques;
import contenu.enume.Secteur;
import contenu.metier.article.MetierInterfaceArticle;
import contenu.metier.theme.MetierInterfaceTheme;
import contenu.model.ModelAllContent;
import contenu.model.ModelContenu;
import utilisateurs.entite.User;
import utilisateurs.model.ModelUser;



@WebServlet("/choixContenu")
public class ChoixContenu extends HttpServlet { 
	//private MetierItf metier = MetierEtudiantPromo.getInstance(); 
	
	@EJB
	MetierInterfaceArticle metierArticle;
	
	@EJB
	MetierInterfaceTheme metierTheme;
	
    public static final String ATT_USER = "utilisateur";
    public static final String ATT_FORM = "form";
	public static final String ATTRIBUT_USER         = "utilisateur";
	public static final String ATTRIBUT_USER_SESSION         = "utilisateurSession";
	public static final String ATTRIBUT_USER_LOGIN         = "userLogin";
	public static final String ATTRIBUT_USER_ID      = "userId";
	public static final String ATTRIBUT_USER_ROLE      = "userRole";
	
	public static final String ATTRIBUT_ARTICLE_ID      = "acheter";
	public static final String ATTRIBUT_ARTICLE_ACHAT      = "acheterArticle";
    public static final String ATTRIBUT_ERREUR_MSG   = "msgErreur";
    
    public static final String VUE_CHOIX   = "WEB-INF/contenu/vente/choixContent.jsp";

	private String erreurMsg;

	
	
	@PostConstruct
	public void init() {
		System.out.println("MyServlet init");
	}
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		doPost(request,response);
		

	 
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("MyServlet Tout article");
		ModelAllContent modelTheme = new ModelAllContent();
		
		List<Theme> themes = metierTheme.lireTousTheme();
		modelTheme.setThemes(themes);
		
		request.setAttribute("modelTheme", modelTheme);
		HttpSession session = request.getSession();
		
		Long user_id = (Long) session.getAttribute(ATTRIBUT_USER_ID);
		System.out.println("userId = " + user_id);
		User userSession = (User) session.getAttribute(ATTRIBUT_USER);
		System.out.println("User session Tout Article = " + userSession);
		
		
	 	Map<Rubriques, String> lookUp = Rubriques.setLookUpKeyValues();
    	System.out.println(lookUp);
		request.setAttribute("lookRubrique", lookUp);  	
    	Collection<String> rubriquesList = lookUp.values();
    	System.out.println(rubriquesList);   
    	request.setAttribute("rubriquesListe", rubriquesList);
    	
    	
    	
    	Map<Pays, String> pays = Pays.setLookUpKeyValues();
    	System.out.println(pays);
    	Collection<String> paysListe = pays.values();
    	System.out.println(paysListe) ;
    	request.setAttribute("paysListe", paysListe);	
    	
    	
		ModelUser modelUser = new ModelUser(); 
		ModelContenu modelContenu = new ModelContenu(); 
		
		List<Article> articles = metierArticle.lireTousArticle();
		modelContenu.setArticles(articles);
		request.setAttribute("modelContenu", modelContenu);
		request.getRequestDispatcher(VUE_CHOIX).forward(request, response); 
			
	
			if(request.getParameter("choixTheme") != null ) {
				System.out.println("condition select theme");
				String theme_id = String.valueOf(request.getParameter("acronymeTheme"));
				
				
				System.out.println("theme =" + theme_id);
				
				ModelContenu modelContenuSelect = new ModelContenu(); 
				
				System.out.println("select Article By Theme");
				
				List<Article> articlesThemes = metierArticle.selectArticleByTheme(theme_id);
				modelContenuSelect.setArticles(articlesThemes);
				request.setAttribute("modelContenuSelect", modelContenuSelect);
			
				request.getRequestDispatcher(VUE_CHOIX).forward(request, response); 
				
				
				}
			
			
			if(request.getParameter("choixRubrique") != null ) {
				System.out.println("condition choixRubrique");
				
		    	
				String rubriques = String.valueOf(request.getParameter("choixRubrique"));
				Rubriques label = Rubriques.valueOfLabel(rubriques);
				
				ModelContenu modelContenuSelect = new ModelContenu(); 
				
				System.out.println("select Article By choixRubrique");
				
				List<Article> articlesThemes = metierArticle.selectArticleByRubrique(label);
				modelContenuSelect.setArticles(articlesThemes);
				request.setAttribute("modelContenuSelect", modelContenuSelect);
				
				request.getRequestDispatcher(VUE_CHOIX).forward(request, response); 
				
			
				
				}
			
			if(request.getParameter("choixSecteur") != null ) {
				System.out.println("condition choixSecteur");
				
		    	
				String secteurs = String.valueOf(request.getParameter("choixSecteur"));
				Secteur labelSecteur = Secteur.valueOf(secteurs);
				
				ModelContenu modelContenuSelect = new ModelContenu(); 
				
				System.out.println("select Article By choixSecteur");
				
				List<Article> articlesSecteur = metierArticle.selectArticleBySecteur(labelSecteur);
				modelContenuSelect.setArticles(articlesSecteur);
				request.setAttribute("modelContenuSelect", modelContenuSelect);
				
				request.getRequestDispatcher(VUE_CHOIX).forward(request, response); 
				
			
				
				}
			
			
			if(request.getParameter("choixPays") != null ) {
				System.out.println("condition choixPays");
				
				
				String paysSelect = String.valueOf(request.getParameter("choixPays"));
				Pays labelPays = Pays.valueOfLabel(paysSelect);
				
				ModelContenu modelContenuSelect = new ModelContenu(); 
				
				System.out.println("select Article By choixPays");
				
				List<Article> articlesPays= metierArticle.selectArticleByPays(labelPays);
				modelContenuSelect.setArticles(articlesPays);
				request.setAttribute("modelContenuSelect", modelContenuSelect);
				
				request.getRequestDispatcher(VUE_CHOIX).forward(request, response); 
				
		    	
		    	
				
				}
			
			

			if(request.getParameter("supprimer") != null ) {
			
			
			
			}	
		
	} // Fin DO POST
	
} // Fin de classe

