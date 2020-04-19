<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<div id="wrapper">
	<title> Help Sense ! </title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assetsPhantom/css/main.css" />

		<%@ page import="utilisateurs.entite.Role" %>
		
			<%@ page import="contenu.enume.Rubriques" %>
			
						<%@ page import="contenu.enume.Rubriques" %>
									<%@ page import="contenu.enume.Secteur" %>
				<!-- Header -->
				
						
						
						
					<header id="header">
						<div class="inner">

							<!-- Logo -->
								<a href="Shopping" class="logo">
									<span class="symbol"><img height="110" width="90" src="Images-Project/LogoHelp.png" alt="" /></span><span class="title"> Help Sense</span>
								</a>
								
					
							<!-- Nav -->
								<nav>
									<ul>
										<li><a href="#menu">Menu</a></li>
									</ul>
								</nav>
								
								

						</div>
					</header>

<div>


						<a href="Shopping" class="logo">
									
									
									<span class="symbol"><img width="600px" height="450px" src="Images-Project/HelpSense.jpg" alt="" /></span><span class="title">  </span>
								</a>
								
								
					
							
<!--  Menu BAR UP  -->
	
                <nav class='narBar'>
                    <ul>
                    
                   
                   
                   <li value=" News-Sense"> 
                   	
                   	<fieldset>
                   	
                   	<legend>  News-Sense</legend>
                   	
                 									
        							<li> <a href="Accueil"> Accueil</a>
									                   
						 			<li> <a href="Shopping"> Actualités </a>
						 			
						 			
						 				
									 <li> <a  href=fieldTchat> Forum </a> 
											
											
									 <li> <a  href=community> Communauté </a>
											
									
									
										
										
											
											 </fieldset>
											 	</li>
					
                
                				
                   		
                   			
										
								
										
										<ul>
										
										<fieldset>
										
										<li> <a href="choixContenu"> Explorer par : </a>
										
										<legend>  Pays </legend>
										<select name="paysName"> 
												
												<c:forEach var="pays" items="${paysListe }">
												<option> <c:out value="${pays}"/> </option>
												
												
														
												</c:forEach>
												
												</select>
												
										<legend>  Secteur </legend>
													<select name="Secteur"  > 
														
														<c:forEach var="secteur" items="${Secteur.values() }">
														<option> <c:out value="${secteur}"/> </option>
														
														</c:forEach>
					
														</select>
														
													
														<legend>  Rubriques </legend>
														 <select name="choixRubrique" > 
														 
														 
													<c:forEach var="rubriqueVal" items="${rubriquesListe}">
																
																<option> <c:out value="${rubriqueVal}"/> </option>
																
																
														</c:forEach>
												</select>
				
										
										</li>
										
										
												
											</fieldset>
										</ul>
										
									
										
									    
										
														

                   			
			                            		</li>
                   
                   
                   				
										
                
                   	
						
				
						<c:if test="${sessionScope.userRole == Role.Administrateur }">
						
						
														
														
							<li> <a href="gererCategories"> Creer une Categorie</a>
						<select name="acronymeThemeHeader" value="exploration" > 
														
														<c:forEach var="theme" items="${modelTheme.themes }">
														<option> <c:out value="${theme.theme_intitule}"/> </option>
														
														</c:forEach>
					
														</select>
									</li> 
						</c:if>
				
				
						<c:if test="${empty sessionScope.utilisateur}">
							   
																
												 
							 <li > 
							 <fieldset>
							 
							 
							 <li> <a class="dropdown-item bg-dark  text-light"href="Connexion">Connexion</a> 
							
								 
							<li> <a class="dropdown-item bg-dark  text-light" href="Inscription">Incription</a>
							 
							 </fieldset>
							 
								
						
							</c:if>
							
				
				
				
				
				
				
					
			
	 			
							 
							 		<c:if test="${!empty sessionScope.utilisateur}">
                    
                 
                   
                   	<li value="DashBoard"> 
                   	
                   	<fieldset>
                   	
                   	<legend> DashBoard</legend>
                   	
                 
								
										
				 
										
										<li>  ${sessionScope.utilisateur.login} : <a href="deconnexion">Déconnexion</a>
										
										<li> <a href="mesAchats"> Mes Follows </a>
										
									
											
										<li><a  href="mesCommandes"> Mes échanges </a>
															
											
											
									 <legend> Role : ${sessionScope.utilisateur.role} </legend>
											
										<li> <a  href="mesVentes"> Mes Analyses </a>  
									
											
										<li> <a  href="addArticleMVC"> Déposer News </a> 
														
										
										
										
											
											 </fieldset>
											 	</li>
					
                    		</c:if>
 	
 	
 	
                   	
                   	 </ul>
                    
                    
                    
                    
                  </nav>
                
				<!-- Menu -->
					<nav id="menu">
						<h2>Menu</h2>
						
					
						<ul>
						<p> <li><a href="Accueil"> Accueil</a></li>    </p>
						 
						 
						 

				 			<li><a href="Shopping"> Shopping </a></li>
							 
												
													<a href="vueArticle.jsp"> Explorer </a>
													<select name="acronymeThemeHeader" value="exploration" > 
														
														<c:forEach var="theme" items="${modelTheme.themes }">
														<option> <c:out value="${theme.theme_intitule}"/> </option>
														
														</c:forEach>
					
														</select>
													
						
						
						</ul>
						 
						
					
				
				
				
				<c:if test="${!empty sessionScope.userId}">
					
					
							  
							  
									<ul >
									
										<li> <a class="dropdown-item bg-dark  text-light" href="addArticleMVC"> Déposer un Article</a> </li> 
											
											
											
										<li> <a class="dropdown-item bg-dark  text-light" href="mesCommandes"> Commandes </a> </li> 
											
										<li> <a class="dropdown-item bg-dark  text-light" href="mesVentes"> Mes Ventes </a> </li> 
												
												
												
										<li> <a class="dropdown-item bg-dark  text-light" href="mesAchats"> Mes Achats</a> </li> 
																						
										<li> ${sessionScope.utilisateur.login} : <a href="deconnexion">Déconnexion</a> </li> 	
													

									
									</ul>
							
							</c:if>	
							
							
					
									<c:if test="${empty sessionScope.userId}">
									
									
									<ul>
													<li> <a href="Connexion">Connexion</a> </li>
							
								 <li> <a href="signUser">Incription</a></li> </li>
								 
									
									</ul>
				
								</c:if>
								
							
										

				
							</nav>
					
			
					
					<div>
					
					
				
                
                </div>
                
                
		</div>			
					
					</html>
					
		